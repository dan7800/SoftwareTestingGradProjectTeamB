package com.google.android.gms.gcm;

import android.os.*;

public class PendingCallback implements Parcelable
{
    public static final Parcelable$Creator<PendingCallback> CREATOR;
    final IBinder bFt;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    public PendingCallback(final Parcel parcel) {
        this.bFt = parcel.readStrongBinder();
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeStrongBinder(this.bFt);
    }
}
