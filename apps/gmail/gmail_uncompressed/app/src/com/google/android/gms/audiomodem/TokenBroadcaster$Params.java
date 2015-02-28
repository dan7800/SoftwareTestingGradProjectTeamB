package com.google.android.gms.audiomodem;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class TokenBroadcaster$Params implements SafeParcelable
{
    public static final Parcelable$Creator<TokenBroadcaster$Params> CREATOR;
    private final int btV;
    private final byte[] bwI;
    private final Encoding[] bxa;
    private final int bxe;
    
    static {
        CREATOR = (Parcelable$Creator)new f();
    }
    
    TokenBroadcaster$Params(final int btV, final byte[] bwI, final int bxe, final Encoding[] bxa) {
        this.btV = btV;
        this.bwI = bwI;
        this.bxe = bxe;
        this.bxa = bxa;
    }
    
    public final Encoding[] JK() {
        return this.bxa;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final byte[] Ju() {
        return this.bwI;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public final int getVolume() {
        return this.bxe;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        f.a(this, parcel, n);
    }
}
