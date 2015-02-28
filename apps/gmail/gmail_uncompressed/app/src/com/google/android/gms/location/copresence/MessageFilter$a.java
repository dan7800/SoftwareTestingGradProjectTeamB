package com.google.android.gms.location.copresence;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class MessageFilter$a implements SafeParcelable
{
    public static final Parcelable$Creator<MessageFilter$a> CREATOR;
    @Deprecated
    public final String bTo;
    private final int btV;
    public final AccessKey caQ;
    public final long caR;
    public final People caS;
    public final String type;
    
    static {
        CREATOR = (Parcelable$Creator)new k();
    }
    
    MessageFilter$a(final int btV, final String bTo, final String type, final AccessKey caQ, final long caR, final People caS) {
        this.btV = btV;
        this.bTo = bTo;
        this.type = type;
        this.caQ = caQ;
        this.caR = caR;
        this.caS = caS;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public String toString() {
        final StringBuilder append = new StringBuilder("(namespace=").append(this.bTo).append(", type=").append(this.type).append(", accessKey=");
        String s;
        if (this.caQ == null) {
            s = null;
        }
        else {
            s = "REDACTED";
        }
        return append.append(s).append(", ttl=").append(this.caR).append(", senders=").append(this.caS).append(")").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        k.a(this, parcel, n);
    }
}
