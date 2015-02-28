package com.google.android.gtalkservice;

import android.os.*;

public final class ConnectionError implements Parcelable
{
    public static final Parcelable$Creator<ConnectionError> CREATOR;
    private int bdh;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    public ConnectionError(final Parcel parcel) {
        this.bdh = parcel.readInt();
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final String toString() {
        switch (this.bdh) {
            default: {
                return "NO ERROR";
            }
            case 1: {
                return "NO NETWORK";
            }
            case 2: {
                return "CONNECTION FAILED";
            }
            case 3: {
                return "UNKNOWN HOST";
            }
            case 4: {
                return "AUTH FAILED";
            }
            case 5: {
                return "AUTH EXPIRED";
            }
            case 6: {
                return "HEARTBEAT TIMEOUT";
            }
            case 7: {
                return "SERVER FAILED";
            }
            case 8: {
                return "SERVER REJECT - RATE LIMIT";
            }
            case 10: {
                return "UNKNOWN";
            }
        }
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeInt(this.bdh);
    }
}
