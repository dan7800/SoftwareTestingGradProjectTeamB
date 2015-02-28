package com.google.android.gms.internal;

import com.google.android.gms.reminders.model.*;
import android.os.*;

public class sf extends dc implements Task
{
    private DateTime gu(final String s) {
        Time vv;
        if (this.fT(s + "hour") && this.fT(s + "minute") && this.fT(s + "second")) {
            vv = null;
        }
        else {
            vv = new com.google.android.gms.reminders.model.e().l(this.getInteger(s + "hour")).m(this.getInteger(s + "minute")).n(this.getInteger(s + "second")).Vv();
        }
        if (this.fT(s + "year") && this.fT(s + "month") && this.fT(s + "day") && vv == null && this.fT(s + "period") && this.fT(s + "absolute_time_ms")) {
            return null;
        }
        return new a().e(this.getAsInteger(s + "year")).f(this.getAsInteger(s + "month")).g(this.getAsInteger(s + "day")).a(vv).h(this.getAsInteger(s + "period")).b(this.getAsLong(s + "absolute_time_ms")).Vr();
    }
    
    @Override
    public final TaskId Sg() {
        return new c().c(this.getAsLong("server_assigned_id")).gB(this.getString("client_assigned_id")).gC(this.getString("client_assigned_thread_id")).Vt();
    }
    
    @Override
    public final TaskList Sh() {
        return new d().k(this.getAsInteger("task_list")).Vu();
    }
    
    @Override
    public final Long Si() {
        return this.getAsLong("created_time_millis");
    }
    
    @Override
    public final Long Sj() {
        return this.getAsLong("archived_time_ms");
    }
    
    @Override
    public final Boolean Sk() {
        return this.getAsBoolean("archived");
    }
    
    @Override
    public final Boolean Sl() {
        return this.getAsBoolean("deleted");
    }
    
    @Override
    public final Boolean Sm() {
        return this.getAsBoolean("pinned");
    }
    
    @Override
    public final Boolean Sn() {
        return this.getAsBoolean("snoozed");
    }
    
    @Override
    public final Long So() {
        return this.getAsLong("snoozed_time_millis");
    }
    
    @Override
    public final DateTime Sp() {
        return this.gu("due_date_");
    }
    
    @Override
    public final DateTime Sq() {
        return this.gu("event_date_");
    }
    
    @Override
    public final Location Sr() {
        if (this.fT("lat") && this.fT("lng") && this.fT("name") && this.fT("radius_meters") && this.fT("location_type") && this.fT("display_address")) {
            return null;
        }
        return new b().a(this.getAsDouble("lat")).b(this.getAsDouble("lng")).gz(this.getString("name")).i(this.getAsInteger("radius_meters")).j(this.getAsInteger("location_type")).gA(this.getString("display_address")).Vs();
    }
    
    @Override
    public final Long Ss() {
        return this.getAsLong("location_snoozed_until_ms");
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public final String getTitle() {
        return this.getString("title");
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        new sn(this).writeToParcel(parcel, n);
    }
}
