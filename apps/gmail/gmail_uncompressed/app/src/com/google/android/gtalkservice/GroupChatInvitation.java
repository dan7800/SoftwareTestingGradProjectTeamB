package com.google.android.gtalkservice;

import android.os.*;

public class GroupChatInvitation implements Parcelable
{
    public static final Parcelable$Creator<GroupChatInvitation> CREATOR;
    private String Qd;
    private String cnU;
    private String cnV;
    private String cnW;
    private long cnX;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    public GroupChatInvitation(final Parcel parcel) {
        this.cnU = parcel.readString();
        this.cnV = parcel.readString();
        this.cnW = parcel.readString();
        this.Qd = parcel.readString();
        this.cnX = parcel.readLong();
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeString(this.cnU);
        parcel.writeString(this.cnV);
        parcel.writeString(this.cnW);
        parcel.writeString(this.Qd);
        parcel.writeLong(this.cnX);
    }
}
