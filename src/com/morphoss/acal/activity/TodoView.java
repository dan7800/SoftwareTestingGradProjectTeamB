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

import java.util.List;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.GestureDetector.OnGestureListener;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.morphoss.acal.AcalTheme;
import com.morphoss.acal.Constants;
import com.morphoss.acal.R;
import com.morphoss.acal.dataservice.Collection;
import com.morphoss.acal.davacal.AcalAlarm;
import com.morphoss.acal.davacal.SimpleAcalTodo;
import com.morphoss.acal.davacal.VCalendar;
import com.morphoss.acal.davacal.VComponent;
import com.morphoss.acal.davacal.VTodo;
import com.morphoss.acal.service.aCalService;

public class TodoView extends AcalActivity implements OnGestureListener, OnTouchListener, OnClickListener{

	public static final String TAG = "aCal TodoView";
	public static final int EDIT = 1;
	public static final int ADD = 2;
	public static final int SHOW_ON_MAP = 3;
	
	private VCalendar vc = null;
	private VTodo todo = null;
	private SimpleAcalTodo sat = null;
	
	
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.todo_view);

		//Ensure service is actually running
		this.startService(new Intent(this, aCalService.class));
		//gestureDetector = new GestureDetector(this);

		//Set up buttons
		this.setupButton(R.id.todo_edit_button, EDIT);
		this.setupButton(R.id.todo_add_button, ADD);
		
		
		Bundle b = this.getIntent().getExtras();
		try {
			throw new Exception("This activity need to be modified to work with new system");
			/**this.sat = (SimpleAcalTodo) b.getParcelable("SimpleAcalTodo");
			if (Constants.LOG_DEBUG)
				Log.d(TAG, "Loading Todo: "+sat.summary );
			this.vc = (VCalendar) VComponent.fromDatabase(this, sat.resource.getResourceId());
			this.todo = (VTodo) ((VCalendar) vc).getMasterChild();
					
			this.populateLayout();
			*/
		}
		catch (Exception e) {
			if (Constants.LOG_DEBUG) {
				Log.d(TAG, "Error getting data from caller: "+e.getMessage());
				Log.d(TAG, Log.getStackTraceString(e));
			}
		}
		
		Button map = (Button) this.findViewById(R.id.TodoFindOnMapButton);
		map.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
				
				String loc = todo.getLocation();
				//replace whitespaces with '+'
				loc.replace("\\s", "+");
				Uri target = Uri.parse("geo:0,0?q="+loc);
				startActivity(new Intent(android.content.Intent.ACTION_VIEW, target)); 
				//start map view
				return;

			}
		});
		
	}
	
	private void populateLayout() {
		String title = todo.getSummary();
		String location = todo.getLocation();
		String description = todo.getDescription();
		StringBuilder alarms = new StringBuilder();
		List<AcalAlarm> alarmList = todo.getAlarms();
		if ( alarmList != null ) {
			for (AcalAlarm alarm : alarmList) {
				if ( alarms.length() > 0 ) alarms.append('\n');
				alarms.append(alarm.toPrettyString());
			}
		}
		if ( Constants.LOG_DEBUG ) Log.println(Constants.LOGD,TAG,
				"Populating view layout for '"+title+"'");
		
//		String repetition = todo.getRepetition();
		int colour = sat.colour;
		LinearLayout sidebar = (LinearLayout)this.findViewById(R.id.TodoViewColourBar);
		LinearLayout sidebarBottom = (LinearLayout)this.findViewById(R.id.TodoViewColourBarBottom);
		sidebar.setBackgroundColor(colour);
		sidebarBottom.setBackgroundColor(colour);
		
		TextView name = (TextView) this.findViewById(R.id.TodoName);
		name.setText(title);
		name.setTextColor(colour);
		
		TextView time = (TextView) this.findViewById(R.id.TodoTimeContent);
		time.setText(sat.getTimeText( this, prefs.getBoolean(getString(R.string.prefTwelveTwentyfour),false)));
		time.setTextColor(colour);

		TextView locationView = (TextView) this.findViewById(R.id.TodoLocationContent);
		if ( location != null && ! location.equals("") ) {
			locationView.setText(location);
			((RelativeLayout) this.findViewById(R.id.TodoLocationLayout)).setVisibility(View.VISIBLE);
		}
		else {
			((RelativeLayout) this.findViewById(R.id.TodoLocationLayout)).setVisibility(View.GONE);
		}

		TextView notesView = (TextView) this.findViewById(R.id.TodoNotesContent);
		if ( description != null && ! description.equals("") ) {
			notesView.setText(description);
			((RelativeLayout) this.findViewById(R.id.TodoNotesLayout)).setVisibility(View.VISIBLE);
		}
		else {
			((RelativeLayout) this.findViewById(R.id.TodoNotesLayout)).setVisibility(View.GONE);
		}
		Collection todoCollection = Collection.getInstance(todo.getCollectionId(),this);
		TextView alarmsView = (TextView) this.findViewById(R.id.TodoAlarmsContent);
		if ( alarms != null && alarms.length() > 0 ) {
			((RelativeLayout) this.findViewById(R.id.TodoAlarmsLayout)).setVisibility(View.VISIBLE);
			alarmsView.setText(alarms);
			if ( !todoCollection.alarmsEnabled() ) {
				TextView alarmsWarning = (TextView) this.findViewById(R.id.CalendarAlarmsDisabled);
				alarmsWarning.setVisibility(View.VISIBLE);
			}
		}
		else {
			((RelativeLayout) this.findViewById(R.id.TodoAlarmsLayout)).setVisibility(View.GONE);
		}
		
		RelativeLayout repeatsLayout = (RelativeLayout) this.findViewById(R.id.TodoRepeatsLayout);
		repeatsLayout.setVisibility(View.GONE);
//		TextView repeatsView = (TextView) this.findViewById(R.id.TodoRepeatsContent);
//		AcalRepeatRule RRule = new AcalRepeatRule(start, repetition); 
//		String rr = RRule.repeatRule.toPrettyString(this);
//		if (rr == null || rr.equals("")) rr = getString(R.string.OnlyOnce);
//		repeatsView.setText(rr);
		
		
	}
	
	private void setupButton(int id, int val) {
		Button myButton = (Button) this.findViewById(id);
		myButton.setOnClickListener(this);
		myButton.setTag(val);
		AcalTheme.setContainerFromTheme(myButton, AcalTheme.BUTTON);
	}

	@Override
	public boolean onDown(MotionEvent arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean onFling(MotionEvent arg0, MotionEvent arg1, float arg2,
			float arg3) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void onLongPress(MotionEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean onScroll(MotionEvent arg0, MotionEvent arg1, float arg2,
			float arg3) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void onShowPress(MotionEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean onSingleTapUp(MotionEvent arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean onTouch(View arg0, MotionEvent arg1) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void onClick(View arg0) {
		int button = (int)((Integer)arg0.getTag());
		switch (button) {
			case EDIT: {
				//start todo activity
				Bundle bundle = new Bundle();
				sat.operation = TodoEdit.ACTION_EDIT;
				bundle.putParcelable("SimpleAcalTodo", sat);
				Intent todoEditIntent = new Intent(this, TodoEdit.class);
				todoEditIntent.putExtras(bundle);
				if ( Constants.LOG_DEBUG ) Log.println(Constants.LOGD, TAG, 
						"Starting activity for result request="+TodoEdit.ACTION_EDIT);
				this.startActivityForResult(todoEditIntent,TodoEdit.ACTION_EDIT);
				break;
			}
			case ADD: {
				Bundle bundle = new Bundle();
				Intent todoEditIntent = new Intent(this, TodoEdit.class);
				todoEditIntent.putExtras(bundle);
				this.startActivityForResult(todoEditIntent,TodoEdit.ACTION_CREATE);
				break;
			}
		}
		
	}

	
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		if ( Constants.LOG_DEBUG ) Log.println(Constants.LOGD, TAG, 
				"onActivityResult request="+requestCode+", result="+resultCode);
    	if (requestCode == TodoEdit.ACTION_EDIT && resultCode == RESULT_OK) {
			try {
				Bundle b = data.getExtras();
				SimpleAcalTodo tmpSat = (SimpleAcalTodo) b.getParcelable(TodoEdit.resultSimpleAcalTodo);
				if ( tmpSat != null ) sat = tmpSat;
				String blob = b.getString(TodoEdit.resultVCalendar);
				if ( Constants.LOG_DEBUG ) Log.println(Constants.LOGD, TAG, "Received blob is:\n"+blob);
				this.vc = (VCalendar) VComponent.createComponentFromBlob(blob, sat.resource);
				this.todo = (VTodo) vc.getMasterChild();
			}
			catch (Exception e) {
				if (Constants.LOG_DEBUG)Log.d(TAG, "Error getting data from caller: "+e.getMessage());
			}
			populateLayout();
    	}
    	else if (requestCode == TodoEdit.ACTION_CREATE && resultCode == RESULT_OK) {
			Intent res = new Intent();
			this.setResult(RESULT_OK, res);
			this.finish();
    	}
    }
	
}
