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

package com.morphoss.acal.davacal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import java.util.UUID;

import android.util.Log;

import com.morphoss.acal.Constants;
import com.morphoss.acal.acaltime.AcalDateRange;
import com.morphoss.acal.acaltime.AcalDateTime;
import com.morphoss.acal.acaltime.AcalDuration;
import com.morphoss.acal.acaltime.AcalRepeatRule;
import com.morphoss.acal.dataservice.CalendarInstance;
import com.morphoss.acal.dataservice.EventInstance;
import com.morphoss.acal.dataservice.TodoInstance;

public abstract class Masterable extends VComponent {

	protected Masterable(ComponentParts splitter, VComponent parent) {
		super(splitter,parent);
	}

	protected Masterable(String typeName, VComponent parent) {
		super(typeName, parent);
		if ( parent != null ) parent.addChild(this);
		setEditable();
		addProperty(new AcalProperty(PropertyName.UID, UUID.randomUUID().toString()));
		AcalDateTime creation = new AcalDateTime();
		creation.setTimeZone(TimeZone.getDefault().getID());
		creation.shiftTimeZone("UTC");
		addProperty(new AcalProperty(PropertyName.DTSTAMP, creation.fmtIcal()));
		addProperty(new AcalProperty(PropertyName.CREATED, creation.fmtIcal()));
		addProperty(new AcalProperty(PropertyName.LAST_MODIFIED, creation.fmtIcal()));
	}

	protected Masterable( String typeName ) {
		this(typeName, new VCalendar());
	}

	
	protected Masterable(String typeName, CalendarInstance instance ) {
		this(typeName, new VCalendar());
		if ( instance.getStart() != null ) setStart(instance.getStart());
		if ( instance.getEnd() != null )	setEnd(instance.getEnd());
		if ( !instance.getSummary().equals("") ) setSummary(instance.getSummary());
		if ( !instance.getDescription().equals("") ) setDescription(instance.getDescription());
		if ( !instance.getLocation().equals("") ) setLocation(instance.getLocation());
		if ( instance.getRRule() != null ) setRepetition(instance.getRRule());
		if ( !instance.getAlarms().isEmpty() ) addAlarmTimes(instance.getAlarms(), null);
		getTopParent().updateTimeZones();
	}

	
	public static Masterable fromCalendarInstance( CalendarInstance instance ) {
		if ( instance instanceof EventInstance )
			return new VEvent((EventInstance) instance);
		else if ( instance instanceof TodoInstance )
			return new VTodo((TodoInstance) instance);
		else
			throw new IllegalArgumentException("fromCalendarInstance does not support "+instance.getClass());
	}

	public VCalendar getTopParent() {
		if ( parent == null ) return null;
		return (VCalendar) super.getTopParent();
	}

	public void addAlarmTimes( List<AcalAlarm> alarmList, AcalDateRange instanceRange ) {
		for( VComponent child : this.getChildren() ) {
			if ( child instanceof VAlarm )
				alarmList.add(new AcalAlarm((VAlarm) child, this, instanceRange.start, instanceRange.end));
		}
	}
	
	public AcalDuration getDuration() {
		AcalDuration ret = null;

		AcalProperty dProp = getProperty(PropertyName.DTSTART);
		if ( dProp == null ) return new AcalDuration();

		AcalDateTime dtstart = AcalDateTime.fromAcalProperty(dProp);
		dProp = getProperty(PropertyName.DURATION);
		if ( dProp != null ) {
			ret = AcalDuration.fromProperty(dProp);
			if ( Constants.debugRepeatRule && Constants.LOG_VERBOSE )
				Log.v(AcalRepeatRule.TAG,"Event Duration from DURATION is " + ret.toString() );
		}
		else {
			dProp = getProperty((this instanceof VTodo ? PropertyName.DUE : PropertyName.DTEND));
			if ( dProp != null ) {
				ret = dtstart.getDurationTo(AcalDateTime.fromAcalProperty(dProp));
				if ( Constants.debugRepeatRule && Constants.LOG_VERBOSE )
					Log.v(AcalRepeatRule.TAG,"Event Duration from DTEND/DUE is " + ret.toString() );
			}
			else {
				ret = new AcalDuration();
				ret.setDuration( (dtstart.isDate() ? 1 : 0), 0 );
			}
		}

		return ret;
	}


	/**
	 * Get (or calculate) the end date for a VEVENT, VTODO or VJOURNAL.  Will use either the DTEND/DUE
	 * or calculate based on DTSTART + DURATION.  If neither set can be satisfied (as might be the case
	 * with a VTODO or VJOURNAL) it will return null.
	 * 
	 * @return
	 */
	public AcalDateTime getEnd() {
		AcalProperty aProp = getProperty( (this instanceof VTodo ? PropertyName.DUE : PropertyName.DTEND));
		if ( aProp != null ) return AcalDateTime.fromAcalProperty(aProp);
		
		AcalDateTime result = getStart(); 
		
		AcalProperty dProp = getProperty(PropertyName.DURATION);
		if ( dProp == null ) {
			if ( result != null && result.isDate() ) result.applyLocalTimeZone().addDays(1);
			return result;
		}

		return result.addDuration(AcalDuration.fromProperty(dProp));
	}

	
	public AcalDateTime getStart() {
		AcalProperty aProp = getProperty(PropertyName.DTSTART);
		if ( aProp == null ) return null;
		return AcalDateTime.fromAcalProperty(aProp);
	}

	
	public RecurrenceId getRecurrenceId() {
		AcalProperty aProp = getProperty(PropertyName.RECURRENCE_ID);
		if ( aProp == null ) {
			aProp = getProperty(PropertyName.DTSTART);
			if ( aProp == null && this instanceof VTodo )
				aProp = getProperty(PropertyName.DUE);
			if ( aProp == null ) return null;
		}
		if ( aProp instanceof RecurrenceId )
			return (RecurrenceId) aProp;

		return new RecurrenceId(aProp.getName(),aProp.getValue(),aProp.paramsBlob);
	}

	
	public ArrayList<AcalAlarm> getAlarms() {
		ArrayList<AcalAlarm> alarms = new ArrayList<AcalAlarm>(); 
		try {
			this.setPersistentOn();
			populateChildren();
			List<VComponent> children = getChildren();
			Iterator<VComponent> it = children.iterator();
			while( it.hasNext() ) {
				VComponent child = it.next();
				if ( child instanceof VAlarm ) {
					try {
						alarms.add( new AcalAlarm((VAlarm) child, this, getStart(), getEnd()) );
					}
					catch( IllegalStateException e ) {
						Log.w(TAG,"Invalid alarm in list", e);
					}
				}
			}
		}
		catch (YouMustSurroundThisMethodInTryCatchOrIllEatYouException e) { }
		this.setPersistentOff();
		return alarms;
	}

	/**
	 * Given a List of AcalAlarm's, make this Masterable have those as child components.
	 * @param alarmList the list of alarms.
	 */
	public void updateAlarmComponents( List<?> alarmList ) {
		setEditable();

		List<VComponent> children = getChildren();
		Iterator<VComponent> it = children.iterator();
		while( it.hasNext() ) {
			VComponent child = it.next();
			if ( child instanceof VAlarm ) it.remove();
		}

		if ( alarmList != null && alarmList.size() > 0 ) {
			for( Object alarm : alarmList ) {
				if ( alarm instanceof AcalAlarm )
					addChild(((AcalAlarm) alarm).getVAlarm(this));
			}
		}
	}

	public String getLocation() {
		return safePropertyValue(PropertyName.LOCATION);
	}

	public String getSummary() {
		return safePropertyValue(PropertyName.SUMMARY);
	}

	public String getDescription() {
		return safePropertyValue(PropertyName.DESCRIPTION);
	}

	public String getRRule() {
		return safePropertyValue(PropertyName.RRULE);
	}

	public void setSummary( String newValue ) {
		setUniqueProperty(new AcalProperty(PropertyName.SUMMARY, newValue));
	}

	public void setLocation( String newValue ) {
		setUniqueProperty(new AcalProperty(PropertyName.LOCATION, newValue));
	}

	public void setDescription( String newValue ) {
		setUniqueProperty(new AcalProperty(PropertyName.DESCRIPTION, newValue));
	}

	public void setRepetition( String newValue ) {
		setUniqueProperty(new AcalProperty(PropertyName.RRULE, newValue));
	}

	public void setStart( AcalDateTime newValue ) {
		setUniqueProperty(newValue.asProperty(PropertyName.DTSTART));
	}

	public void setEnd( AcalDateTime newValue ) {
		setUniqueProperty(newValue.asProperty(PropertyName.DTEND));
	}

	public void setDuration( AcalDuration newValue ) {
		setUniqueProperty(newValue.asProperty(PropertyName.DURATION));
	}

	public String getUID() {
		return safePropertyValue(PropertyName.UID);
	}

	public String getStatus() {
		return safePropertyValue(PropertyName.STATUS);
	}

	@Override
	public String getEffectiveType() {
		return this.name;
	}
}
