package com.google.android.gms.internal;

import android.os.*;

public class hg implements Parcelable
{
    @Deprecated
    public static final Parcelable$Creator<hg> CREATOR;
    private String bTa;
    private String bzz;
    private String mValue;
    
    static {
        CREATOR = (Parcelable$Creator)new x();
    }
    
    public hg() {
    }
    
    hg(final Parcel parcel) {
        this.bzz = parcel.readString();
        this.bTa = parcel.readString();
        this.mValue = parcel.readString();
    }
    
    @Deprecated
    public int describeContents() {
        return 0;
    }
    
    @Deprecated
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeString(this.bzz);
        parcel.writeString(this.bTa);
        parcel.writeString(this.mValue);
    }
}
