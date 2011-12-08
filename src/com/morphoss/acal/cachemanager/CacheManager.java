package com.morphoss.acal.cachemanager;

import java.util.ArrayList;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CopyOnWriteArraySet;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.os.ConditionVariable;
import android.util.Log;

import com.morphoss.acal.DatabaseManager;
import com.morphoss.acal.acaltime.AcalDateRange;
import com.morphoss.acal.acaltime.AcalDateTime;
import com.morphoss.acal.database.AcalDBHelper;

public class CacheManager implements Runnable {

	/**
	 * This class provides a cache service for activities interested in cached Events.
	 */


	//The current instance
	private static CacheManager instance = null;

	//Get an instance
	public synchronized static CacheManager getInstance(Context context) {
		if (instance == null) instance = new CacheManager(context);
		return instance;
	}

	//get and instance and add a callback handler to receive notfications of change
	//It is vital that classes remove their handlers when terminating
	public synchronized static CacheManager getInstance(Context context, CacheChangedListener listener) {
		if (instance == null) instance = new CacheManager(context);
		instance.addListener(listener);
		return instance;
	}

	private Context context;
	private long count;	//Number of rows in DB
	private AcalDateTime start; //Current Start time of window
	private AcalDateTime end; //Current End time of window
	private long metaRow; //Current End time of window

	//ThreadManagement
	private ConditionVariable threadHolder = new ConditionVariable();
	private Thread workerThread;
	private boolean running = true;
	private final ConcurrentLinkedQueue<CacheRequest> queue = new ConcurrentLinkedQueue<CacheRequest>();


	//DB Constants
	private static final String META_TABLE = "event_cache_meta";
	private static final String FIELD_ID = "_id";
	private static final String FIELD_START = "dtstart";
	private static final String FIELD_END = "dtend";
	private static final String FIELD_COUNT = "count";
	private static final String FIELD_CLOSED = "closed";

	//Comms
	private final CopyOnWriteArraySet<CacheChangedListener> listeners = new CopyOnWriteArraySet<CacheChangedListener>();
	
	//Request Processor Instance
	private EventCacheProcessor ECPinstance;


	private EventCacheProcessor getECPInstance() {
		if (instance == null) ECPinstance = new EventCacheProcessor();
		return ECPinstance;
	}
	
	//Settings
	private static final int DEF_MONTHS_BEFORE = 1;		//these 2 represent the default window size
	private static final int DEF_MONTHS_AFTER = 2;		//relative to todays date
	
	
	/**
	 * CacheManager needs a context to manage the DB. Should run under AcalService.
	 * Loadstate ensures that our DB is consistant and should be run before any resource
	 * modifications can be made by any other part of the system.
	 */
	private CacheManager(Context context) {
		this.context = context;
		this.ECPinstance = this.getECPInstance();
		loadState();
		workerThread = new Thread(this);
		workerThread.start();
	}


	public void addListener(CacheChangedListener ccl) {
		this.listeners.add(ccl);
	}

	public void removeListener(CacheChangedListener ccl) {
		this.listeners.remove(ccl);
	}


	/**
	 * Ensures that this classes closes properly. MUST be called before it is terminated
	 */
	public void close() {
		this.running = false;
		//Keep waking worker thread until it dies 
		while (workerThread.isAlive()) {
			threadHolder.open();
			Thread.yield();
			try { Thread.sleep(100); } catch (Exception e) { }
		}
		saveState();
	}

	/**
	 * MUST set SAFE to true or cache will be flushed on next load.
	 * Nothing should be able to modify resources after this point.
	 *
	 */
	private void saveState() {
		//save start/end range to meta table
		ContentValues data = new ContentValues();
		data.put(FIELD_START, start.getMillis());
		data.put(FIELD_END, end.getMillis());
		data.put(FIELD_COUNT, count);
		data.put(FIELD_CLOSED, true);

		AcalDBHelper dbHelper = new AcalDBHelper(context);
		SQLiteDatabase db = dbHelper.getWritableDatabase();
		//set CLOSED to true
		db.update(META_TABLE, data, FIELD_ID+" = ?", new String[] {metaRow+""});
		db.close();
		dbHelper.close();
	}

	/**
	 * Called on start up. if safe==false flush cache. set safe to false regardless.
	 */
	private void loadState() {
		ContentValues data = new ContentValues();
		AcalDBHelper dbHelper = new AcalDBHelper(context);
		SQLiteDatabase db = dbHelper.getWritableDatabase();
		//load start/end range from meta table
		Cursor cr = db.query(META_TABLE, null, null, null, null, null, null);
		if (cr.getCount() < 1) {
			data.put(FIELD_CLOSED, true);
			data.put(FIELD_COUNT, 0);
			data.put(FIELD_START, 0);
			data.put(FIELD_END, 0);
		} else  {
			cr.moveToFirst();
			DatabaseUtils.cursorRowToContentValues(cr, data);
		}
		cr.close();
		if (!data.getAsBoolean(FIELD_CLOSED)) {
			this.ECPinstance.clearCache();
			data.put(FIELD_COUNT, 0);
			data.put(FIELD_START, 0);
			data.put(FIELD_END, 0);
		}
		else data.put(FIELD_CLOSED, false);

		//set CLOSED to false
		db.delete(META_TABLE, null, null);
		data.remove(FIELD_ID);
		this.metaRow = db.insert(META_TABLE, null, data);
		db.close();
		dbHelper.close();
		this.start = AcalDateTime.fromMillis(data.getAsLong(FIELD_START));
		this.end = AcalDateTime.fromMillis(data.getAsLong(FIELD_END));
		this.count = data.getAsLong(FIELD_COUNT);

	}

	/**
	 * Method for responding to requests from activities.
	 */
	@Override
	public void run() {
		while (running) {
			//do stuff
			while (!queue.isEmpty()) {
				CacheRequest request = queue.poll();
				ECPinstance.process(request);
			}
			//Wait till next time
			threadHolder.close();
			threadHolder.block();
		}
	}

	//Request handlers
	public void sendRequest(CacheRequest request) {
		queue.offer(request);
		threadHolder.open();
	}
	
	//Request events (FROM RESOURCES) that start within the range provided. Expand window on result.
	private void retrieveRange(long start, long end) {
		//should be done asynchronously
		//TODO
	}

	/**
	 * Static class to encapsulate all database operations 
	 * @author Chris Noldus
	 *
	 */
	public final class EventCacheProcessor extends DatabaseManager {
		
		public static final String TAG = "acal EventCacheProcessor";
		
		private static final String TABLE = "event_cache";
		public static final String FIELD_ID = "_id";
		public static final String FIELD_RESOURCE_ID = "resource_id";
		public static final String FIELD_CID ="collection_id";
		public static final String FIELD_SUMMARY ="summary";
		public static final String FIELD_LOCATION ="location";
		public static final String FIELD_DTSTART = "dtstart";
		public static final String FIELD_DT_END = "dtend";
		public static final String FIELD_FLAGS ="flags";
		
		private CacheRequest currentRequest;

		private EventCacheProcessor() {
			super(CacheManager.this.context);
		}
		
		@Override
		protected String getTableName() {
			return TABLE;
		}

		public void process(CacheRequest r) { 
			currentRequest = r;
			try {
				r.process(this);
				if (this.inTx) {
					this.endTransaction();
					throw new CacheProcessingException("Process started a transaction without ending it!");
				}
			} catch (CacheProcessingException e) {
				Log.e(TAG, "Error Procssing Resource Request: "+Log.getStackTraceString(e));
			} catch (Exception e) {
				Log.e(TAG, "INVALID TERMINATION while processing Resource Request: "+Log.getStackTraceString(e));
			} finally {
				//make sure db was closed properly
				if (this.db != null)
				try { endQuery(); } catch (Exception e) { }
			}
			currentRequest = null;
		}

		private void clearCache() {
			this.beginTransaction();
			db.delete(EventCacheProcessor.TABLE, null, null);
			this.setTxSuccessful();
			this.endTransaction();
		}
		
		
		//Checks that the window has been populated with the requested range
		//range can be NULL in which case the default range is used.
		//If the range is NOT covered, an asynchronous request is made to resource
		//manager to get the required data.
		//Returns weather or not the cache fully covers a specified (or default) range
		public boolean checkWindow(AcalDateRange requestedRange) {
			long start;
			long end;
			if (requestedRange != null) {
				start = requestedRange.start.getMillis();
				end = requestedRange.start.getMillis();
			} else {
				AcalDateTime st = new AcalDateTime();
				AcalDateTime en = new AcalDateTime();
				st.addMonths(-DEF_MONTHS_BEFORE);
				en.addMonths(DEF_MONTHS_AFTER);
				start =st.getMillis();
				end = en.getMillis();
			}
			long wStart = CacheManager.this.start.getMillis();
			long wEnd = CacheManager.this.end.getMillis();
			//start & end should fall between this.start and this.end
			//check start >= this.strt && <= this.end && end <= this.end
			if (start >= wStart && start <= wEnd && end <= wEnd) return true;
			
			//we now need to work out what range we need to request
			//3 Options - 
					//start -> wStart
					//wEnd -> wEnd
					//or both
			if (start < wStart) retrieveRange(start, wStart);
			if (end > wEnd) retrieveRange(wEnd,end);
			return false;
		}		
		
		/**
		 * Begin std DB Operations
		 * 
		 * ALL db operations need to start with a beginQuery call and end with an endQuery call.
		 * DO NOT Open/Close DB directly as db my be in a Transaction. The parent class is responsible for maintaining state.
		 */
		
		
	}
	
	public static CacheObject fromContentValues(ContentValues row) {
		return new CacheObject(
					row.getAsLong(EventCacheProcessor.FIELD_RESOURCE_ID), 
					row.getAsInteger(EventCacheProcessor.FIELD_CID),
					row.getAsString(EventCacheProcessor.FIELD_SUMMARY),
					row.getAsString(EventCacheProcessor.FIELD_LOCATION),
					row.getAsLong(EventCacheProcessor.FIELD_DTSTART),
					row.getAsLong(EventCacheProcessor.FIELD_DT_END),
					row.getAsInteger(EventCacheProcessor.FIELD_FLAGS)
				);
	}
}
