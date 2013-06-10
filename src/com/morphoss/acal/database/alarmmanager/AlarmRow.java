package com.morphoss.acal.database.alarmmanager;

import java.util.Locale;

import android.content.ContentValues;
import android.util.Log;

import com.morphoss.acal.AcalApplication;
import com.morphoss.acal.acaltime.AcalDateTime;
import com.morphoss.acal.davacal.VAlarm;
import com.morphoss.acal.davacal.VCalendar;
import com.morphoss.acal.providers.AlarmDataProvider;

public class AlarmRow implements Comparable<AlarmRow> {

	private final long id;
	private long time_to_fire;
	private final long resource_id;
	private final String recurrence_id;
	private ALARM_STATE state;
	private final String blob;
	private static final long SNOOZE_MILLIS = 9*60*1000;

	public AlarmRow(long id, long ttf, long rid, String rrid, ALARM_STATE state, String blob) {
		this.id = id;
		this.time_to_fire = ttf;
		this.resource_id = rid;
		this.recurrence_id = rrid;
		this.state = state;
		this.blob = blob;
	}

	public AlarmRow(long ttf, long rid, String rrid, ALARM_STATE state, String blob) {
		this(-1,ttf, rid,rrid,state, blob);
	}

	public AlarmRow(long ttf, long rid, String rrid, String blob) {
		this(-1,ttf, rid,rrid,ALARM_STATE.PENDING,blob);
	}

	public ContentValues toContentValues() {
		ContentValues cv = new ContentValues();
		if (id > 0) cv.put(AlarmDataProvider._ID, id);
		cv.put(AlarmDataProvider.TIME_TO_FIRE, time_to_fire);
		cv.put(AlarmDataProvider.RESOURCE_ID, resource_id);
		cv.put(AlarmDataProvider.RRID, recurrence_id);
		cv.put(AlarmDataProvider.STATE, state.ordinal());
		cv.put(AlarmDataProvider.BLOB, blob);
		return cv;
	}

	public static AlarmRow fromContentValues(ContentValues cv) {

		if (!cv.containsKey(AlarmDataProvider._ID)) {
			cv = new ContentValues(cv);
			cv.put(AlarmDataProvider._ID, -1);
		}

		return new AlarmRow(
				cv.getAsLong(AlarmDataProvider._ID),
				cv.getAsLong(AlarmDataProvider.TIME_TO_FIRE),
				cv.getAsLong(AlarmDataProvider.RESOURCE_ID),
				cv.getAsString(AlarmDataProvider.RRID),
				ALARM_STATE.values()[cv.getAsInteger(AlarmDataProvider.STATE)],
				cv.getAsString(AlarmDataProvider.BLOB)
		);

	}

	@Override
	public boolean equals(Object other) {
	    if ( other == this ) return true;
	    if ( ((AlarmRow)other).id == this.id ) return true;
        if ( ((AlarmRow)other).resource_id == this.resource_id
                && ((AlarmRow)other).recurrence_id.equals(this.recurrence_id)  ) return true;
	    return false;
	}

	@Override
	public int compareTo(AlarmRow another) {
		return (int)(this.time_to_fire - another.time_to_fire);
	}

	public long getTimeToFire() {
		return this.time_to_fire;
	}

	public void setState(ALARM_STATE state) {
		this.state = state;

	}

	public long getId() {
		return this.id;
	}

	public long getResourceId() {
		return this.resource_id;
	}

	public String getReccurenceId() {
		return this.recurrence_id;
	}

	public String getBlob() {
		return this.blob;
	}

    public void addSnooze() {
        this.time_to_fire += SNOOZE_MILLIS;
    }

    @Override
    public String toString() {
        VAlarm va = (VAlarm) VAlarm.createComponentFromBlob(getBlob());
        AcalDateTime fireAt = AcalDateTime.localTimeFromMillis(time_to_fire, false);
        String summary = "Some kind of error occurred :-(";
        try {
            summary = ((VCalendar) VCalendar
                    .createComponentFromResource(
                            AcalApplication.getResourceFromDatabase(this.resource_id)
                        )
                    )
                    .getMasterChild()
                    .getSummary();
        }
        catch( Exception e) {
            Log.e("aCal", "Error", e);
        }
        return String.format(Locale.ENGLISH, "%s %-8.8s %s", fireAt.fmtIcal(), state.toString(), summary);
    }
}
