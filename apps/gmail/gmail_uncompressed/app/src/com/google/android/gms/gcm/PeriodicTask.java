package com.google.android.gms.gcm;

import android.os.*;

public class PeriodicTask extends Task
{
    public static final Parcelable$Creator<PeriodicTask> CREATOR;
    private final long bQv;
    private final long bQw;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    PeriodicTask() {
        this.bQv = -1L;
        this.bQw = -1L;
    }
    
    private PeriodicTask(final Parcel parcel) {
        super(parcel);
        this.bQv = parcel.readLong();
        this.bQw = parcel.readLong();
    }
    
    @Override
    public void writeToParcel(final Parcel parcel, final int n) {
        super.writeToParcel(parcel, n);
        parcel.writeLong(this.bQv);
        parcel.writeLong(this.bQw);
    }
}
