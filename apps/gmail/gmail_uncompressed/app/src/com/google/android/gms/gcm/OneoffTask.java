package com.google.android.gms.gcm;

import android.os.*;

public class OneoffTask extends Task
{
    public static final Parcelable$Creator<OneoffTask> CREATOR;
    private final long bQt;
    private final long bQu;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    OneoffTask() {
        this.bQu = -1L;
        this.bQt = -1L;
    }
    
    private OneoffTask(final Parcel parcel) {
        super(parcel);
        this.bQt = parcel.readLong();
        this.bQu = parcel.readLong();
    }
    
    @Override
    public void writeToParcel(final Parcel parcel, final int n) {
        super.writeToParcel(parcel, n);
        parcel.writeLong(this.bQt);
        parcel.writeLong(this.bQu);
    }
}
