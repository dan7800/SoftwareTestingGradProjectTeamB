package com.google.android.gtalkservice;

import android.os.*;

public final class ConnectionState implements Parcelable
{
    public static final Parcelable$Creator<ConnectionState> CREATOR;
    private volatile int ao;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    public ConnectionState(final Parcel parcel) {
        this.ao = parcel.readInt();
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final String toString() {
        switch (this.ao) {
            default: {
                return "IDLE";
            }
            case 1: {
                return "RECONNECTION_SCHEDULED";
            }
            case 2: {
                return "CONNECTING";
            }
            case 3: {
                return "AUTHENTICATED";
            }
            case 4: {
                return "ONLINE";
            }
        }
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeInt(this.ao);
    }
}
