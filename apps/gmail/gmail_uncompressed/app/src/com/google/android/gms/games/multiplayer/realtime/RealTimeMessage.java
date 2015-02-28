package com.google.android.gms.games.multiplayer.realtime;

import android.os.*;
import com.google.android.gms.common.internal.*;

public final class RealTimeMessage implements Parcelable
{
    public static final Parcelable$Creator<RealTimeMessage> CREATOR;
    private final String bPq;
    private final byte[] bPr;
    private final int bPs;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    private RealTimeMessage(final Parcel parcel) {
        this(parcel.readString(), parcel.createByteArray(), parcel.readInt());
    }
    
    private RealTimeMessage(final String s, final byte[] array, final int bPs) {
        this.bPq = G.ae(s);
        this.bPr = G.ae(array).clone();
        this.bPs = bPs;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeString(this.bPq);
        parcel.writeByteArray(this.bPr);
        parcel.writeInt(this.bPs);
    }
}
