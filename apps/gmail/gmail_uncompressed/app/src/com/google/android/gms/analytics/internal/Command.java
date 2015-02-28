package com.google.android.gms.analytics.internal;

import android.os.*;

public class Command implements Parcelable
{
    public static final Parcelable$Creator<Command> CREATOR;
    private String btQ;
    private String id;
    private String value;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    public Command() {
    }
    
    Command(final Parcel parcel) {
        this.id = parcel.readString();
        this.btQ = parcel.readString();
        this.value = parcel.readString();
    }
    
    public Command(final String id, final String btQ, final String value) {
        this.id = id;
        this.btQ = btQ;
        this.value = value;
    }
    
    public final String Je() {
        return this.btQ;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public final String getId() {
        return this.id;
    }
    
    public final String getValue() {
        return this.value;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeString(this.id);
        parcel.writeString(this.btQ);
        parcel.writeString(this.value);
    }
}
