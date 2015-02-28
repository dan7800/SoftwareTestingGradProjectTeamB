package com.google.android.gms.gcm;

import android.os.*;

public abstract class Task implements Parcelable
{
    private final String aK;
    private final String bQx;
    private final boolean bQy;
    private final boolean bQz;
    
    Task() {
        this.bQx = null;
        this.aK = null;
        this.bQy = false;
        this.bQz = false;
    }
    
    Task(final Parcel parcel) {
        boolean bQz = true;
        this.bQx = parcel.readString();
        this.aK = parcel.readString();
        this.bQy = (parcel.readInt() == (bQz ? 1 : 0) && bQz);
        if (parcel.readInt() != (bQz ? 1 : 0)) {
            bQz = false;
        }
        this.bQz = bQz;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        int n2 = 1;
        parcel.writeString(this.bQx);
        parcel.writeString(this.aK);
        int n3;
        if (this.bQy) {
            n3 = n2;
        }
        else {
            n3 = 0;
        }
        parcel.writeInt(n3);
        if (!this.bQz) {
            n2 = 0;
        }
        parcel.writeInt(n2);
    }
}
