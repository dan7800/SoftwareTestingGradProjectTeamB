package com.android.mail.providers;

import android.os.*;
import java.util.*;

public class ParticipantInfo implements Parcelable
{
    public static final Parcelable$Creator<ParticipantInfo> CREATOR;
    public String aBF;
    public boolean aBG;
    public String name;
    public int priority;
    
    static {
        CREATOR = (Parcelable$Creator)new x();
    }
    
    public ParticipantInfo(final Parcel parcel) {
        this.name = parcel.readString();
        this.aBF = parcel.readString();
        this.priority = parcel.readInt();
        this.aBG = (parcel.readInt() != 0);
    }
    
    public ParticipantInfo(final String name, final String abf, final int priority, final boolean abg) {
        this.name = name;
        this.aBF = abf;
        this.priority = priority;
        this.aBG = abg;
    }
    
    public final boolean bi(final boolean abg) {
        if (this.aBG != abg) {
            this.aBG = abg;
            return true;
        }
        return false;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.name, this.aBF, this.priority, this.aBG });
    }
    
    @Override
    public String toString() {
        return "[ParticipantInfo: readConversation = " + this.aBG + ", name = " + this.name + ", email = " + this.aBF + ", priority = " + this.priority + "]";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeString(this.name);
        parcel.writeString(this.aBF);
        parcel.writeInt(this.priority);
        int n2;
        if (this.aBG) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        parcel.writeInt(n2);
    }
}
