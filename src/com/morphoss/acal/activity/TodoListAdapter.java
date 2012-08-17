/*
 * Copyright (C) 2011 Morphoss Ltd
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */

package com.morphoss.acal.activity;

import java.util.ArrayList;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View.OnClickListener;
import android.view.View.OnCreateContextMenuListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;

import com.morphoss.acal.Constants;
import com.morphoss.acal.R;
import com.morphoss.acal.acaltime.AcalDateRange;
import com.morphoss.acal.acaltime.AcalDateTime;
import com.morphoss.acal.acaltime.AcalDateTimeFormatter;
import com.morphoss.acal.database.DataChangeEvent;
import com.morphoss.acal.database.cachemanager.CacheChangedEvent;
import com.morphoss.acal.database.cachemanager.CacheChangedListener;
import com.morphoss.acal.database.cachemanager.CacheManager;
import com.morphoss.acal.database.cachemanager.CacheObject;
import com.morphoss.acal.database.cachemanager.CacheResponse;
import com.morphoss.acal.database.cachemanager.CacheResponseListener;
import com.morphoss.acal.database.cachemanager.CacheManager.CacheTableManager;
import com.morphoss.acal.database.cachemanager.requests.CRTodosByType;
import com.morphoss.acal.dataservice.Collection;

/**
 * <p>
 * Adapter for providing views for events.
 * </p>
 * 
 * @author Morphoss Ltd
 * 
 */
public class TodoListAdapter extends BaseAdapter
		implements 	OnClickListener, ListAdapter, CacheChangedListener,
					CacheResponseListener<ArrayList<CacheObject>> {

	/**
	 * <p>
	 * Presently this adapter is only supported in todo view. If we decide to extend this view further we should
	 * create An interface for providing callbacks.
	 * </p>
	 */ 
	private TodoListView context;
	private boolean listCompleted;
	private boolean listFuture;
	public static final String TAG = "aCal TodoListAdapter";
	private final static boolean DEBUG = true && Constants.DEBUG_MODE;

	private ArrayList<CacheObject> taskList = new ArrayList<CacheObject>();
	private CacheManager cacheManager;

	private static final int HANDLER_NEW_DATA = 0;
	
	public static final int CONTEXT_EDIT = 0;
	public static final int CONTEXT_DELETE = 0x10000;
	// public static final int CONTEXT_DELETE_JUSTTHIS = 0x20000;
	// public static final int CONTEXT_DELETE_FROMNOW = 0x30000;
	public static final int CONTEXT_COPY = 0x40000;
	public static final int CONTEXT_COMPLETE = 0x80000;
	
	private SharedPreferences prefs;	

	/**
	 * <p>Create a new adaptor with the attributes provided.</p>
	 * 
	 * @param todoListView The containing view
	 * @param showAll Whether we list all Todo items or Due ones.
	 */
	public TodoListAdapter(TodoListView todoListView, boolean showCompleted, boolean showFuture ) {
		this.context = todoListView;
		this.cacheManager = CacheManager.getInstance(context, this);
		this.listCompleted = showCompleted;
		this.listFuture = showFuture;

		// Get preferences
		prefs = PreferenceManager.getDefaultSharedPreferences(this.context);

		//request data		
		cacheManager.sendRequest(new CRTodosByType(showCompleted, showFuture, this));
	}

	private Handler mHandler = new Handler() {
			
		@SuppressWarnings("unchecked")
		@Override
		public void handleMessage(Message msg) {
			if (DEBUG) Log.println(Constants.LOGD,TAG, "Handler has received messsge.");
			switch (msg.what) {
				case HANDLER_NEW_DATA:
					if (DEBUG) Log.println(Constants.LOGD,TAG,
							"New data for display - "+((ArrayList<CacheObject>)msg.obj).size()+" records.");
					taskList = (ArrayList<CacheObject>)msg.obj;
					TodoListAdapter.this.notifyDataSetChanged();
					break;
				default: break;
			}
		}
	};
	
	
	
	/**
	 * <p>Returns the number of elements in this adapter.</p>
	 * 
	 * (non-Javadoc)
	 * @see android.widget.Adapter#getCount()
	 */
	@Override
	public int getCount() {
		return taskList.size();
	}

	/**
	 * <p>Returns the event at specified the position in this adapter or null if position is invalid.</p> 
	 * 
	 * (non-Javadoc)
	 * @see android.widget.Adapter#getItem(int)
	 */
	@Override
	public CacheObject getItem(int position) {
		return taskList.get(position);
	}

	/**
	 * <p>Returns the id associated with the event at specified position. Currently not implemented (i.e. returns position)</p>
	 * 
	 * (non-Javadoc)
	 * @see android.widget.Adapter#getItemId(int)
	 */
	@Override
	public long getItemId(int position) {
		return position;
	}


	/**
	 * <p>Returns the view associated with the event at the specified position. Currently, views
	 * do not respond to any events.</p> 
	 * 
	 * (non-Javadoc)
	 * @see android.widget.Adapter#getView(int, android.view.View, android.view.ViewGroup)
	 */
	@Override
	public View getView(final int position, View convertView, ViewGroup parent) {
		LinearLayout rowLayout;

		LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		rowLayout = (LinearLayout) inflater.inflate(R.layout.todo_list_item, parent, false);

		TextView title = (TextView) rowLayout.findViewById(R.id.TodoListItemTitle);
		TextView time = (TextView) rowLayout.findViewById(R.id.TodoListItemTime);
		TextView location = (TextView) rowLayout.findViewById(R.id.TodoListItemLocation);
		
		LinearLayout sideBar = (LinearLayout) rowLayout.findViewById(R.id.TodoListItemColorBar);

		CacheObject todo = getItem(position);
		if ( todo == null ) return rowLayout;

		Collection collection = Collection.getInstance(todo.getCollectionId(), context);
		if ( collection != null ) {
			rowLayout.findViewById(R.id.TodoListItemIcons).setBackgroundColor(collection.getColour());
			sideBar.setBackgroundColor(collection.getColour()); 
			title.setTextColor(collection.getColour());
		}

		title.setText((todo.getSummary() == null  || todo.getSummary().length() <= 0 )
				? context.getString(R.string.NewTaskTitle)
				: todo.getSummary());

		time.setText(AcalDateTimeFormatter.getTodoTimeText(context, todo.getStartDateTime(), todo.getEndDateTime(), todo.getCompletedDateTime(),
				prefs.getBoolean(context.getString(R.string.prefTwelveTwentyfour),true)));
		if ( todo.isCompleted() ) {
			time.setTextColor(context.getResources().getColor(R.color.CompletedTask));
		}
		else if ( todo.isOverdue() ) {
			time.setTextColor(context.getResources().getColor(R.color.OverdueTask));
		}
		
		
		if ( todo.hasAlarms() ) {
			ImageView alarmed = (ImageView) rowLayout.findViewById(R.id.TodoListItemAlarmBell);
			alarmed.setVisibility(View.VISIBLE);
			if ( collection != null && ! collection.alarmsEnabled ) alarmed.setBackgroundColor(Color.WHITE);
		}
		
		if ( todo.getLocation() != null && todo.getLocation().length() > 0 )
			location.setText(todo.getLocation());
		else
			location.setHeight(2);

		ImageView completed = (ImageView) rowLayout.findViewById(R.id.TodoListItemCompleted);
		if ( todo.isCompleted() ) {
			completed.setVisibility(View.VISIBLE);
		}
		else {
			completed.setVisibility(View.GONE);
			completed.setBackgroundColor(Color.WHITE);
		}
		
		rowLayout.setTag(todo);
		rowLayout.setOnClickListener(this);

		//add context menu
		this.context.registerForContextMenu(rowLayout);
		rowLayout.setOnCreateContextMenuListener(new OnCreateContextMenuListener() {
		

			@Override
			public void onCreateContextMenu(ContextMenu menu, View view, ContextMenuInfo info) {
				menu.setHeaderTitle(context.getString(R.string.ChooseAction));
				menu.add(0, position, 0, context.getString(R.string.Edit));
				menu.add(0, CONTEXT_COPY + position,  0, context.getString(R.string.newEventFromThis));
				menu.add(0, CONTEXT_DELETE+ position, 0, context.getString(R.string.Delete));
				menu.add(0, CONTEXT_COMPLETE+ position, 0, context.getString(R.string.SetCompleted));
			}
		});

		return rowLayout;
	}

	@Override
	public void onClick(View arg0) {
		Object tag = arg0.getTag();
		if (tag instanceof CacheObject) {
			CacheObject todo = (CacheObject) tag;
			//start event activity
			Bundle bundle = new Bundle();
			bundle.putParcelable(TodoEdit.KEY_CACHE_OBJECT, todo);
			Intent todoViewIntent = new Intent(context, TodoView.class);
			todoViewIntent.putExtras(bundle);
			
			if (DEBUG) Log.println(Constants.LOGD, TAG,
					"Starting view activity for rid: "+todo.getResourceId()+", rrid: "+todo.getRecurrenceId()+", Summary: "+todo.getSummary());
			context.startActivity(todoViewIntent);
		}
	}

	
	public boolean contextClick(MenuItem item) {
		try {
			int id = item.getItemId();
			int action = id & 0xf0000;
			id = id & 0xffff;

			CacheObject todo = getItem(id);
			int operation = TodoEdit.ACTION_EDIT;
			switch( action ) {
				case CONTEXT_COPY:
					operation = TodoEdit.ACTION_COPY;
				case CONTEXT_EDIT:
					//start TodoEdit activity
					Bundle bundle = new Bundle();
					bundle.putParcelable(TodoEdit.KEY_CACHE_OBJECT, todo);
					bundle.putInt(TodoEdit.KEY_OPERATION, operation);
					Intent todoViewIntent = new Intent(context, TodoEdit.class);
					todoViewIntent.putExtras(bundle);
					context.startActivity(todoViewIntent);
					return true;
				
				case CONTEXT_DELETE:
					this.context.deleteTodo(todo.getResourceId(),TodoEdit.ACTION_DELETE_ALL);
					return true;

				case CONTEXT_COMPLETE:
					this.context.completeTodo(id,TodoEdit.ACTION_COMPLETE);
					return true;

			}
			return false;
		}
		catch (ClassCastException e) {
			return false;
		}
		
	}

	@Override
	public void cacheChanged(CacheChangedEvent event) {
		AcalDateTime rangeEnd = AcalDateTime.getInstance().addDays(7);
		if ( listFuture ) rangeEnd.setMonthStart().addMonths(3);
		AcalDateRange myRange = new AcalDateRange( AcalDateTime.getInstance().setMonthStart().addMonths(-1), rangeEnd );
		//up-date only if the change could have affected us
		boolean update = false;
		for (DataChangeEvent dce : event.getChanges()) {
			if ( !listCompleted && dce.getData().getAsLong(CacheTableManager.FIELD_COMPLETED) < Long.MAX_VALUE ) continue;
			Long sMills = dce.getData().getAsLong(CacheTableManager.FIELD_DTSTART);
			Long eMills = dce.getData().getAsLong(CacheTableManager.FIELD_DTEND);
			if (sMills == null || eMills == null) { update = true; break; }
			if (sMills < myRange.end.getMillis() && eMills > myRange.start.getMillis()) { update = true; break; }
		}
		
		if (update)
			cacheManager.sendRequest(new CRTodosByType(listCompleted, listFuture, this));
		
	}


	@Override
	public void cacheResponse(CacheResponse<ArrayList<CacheObject>> response) {
		if (DEBUG) Log.println(Constants.LOGD,TAG, "Cache Response Received.");
		
		//long waitTime = Math.max(wait-System.currentTimeMillis(),100);

		mHandler.sendMessage(mHandler.obtainMessage(HANDLER_NEW_DATA, response.result()));
	}
	

}
