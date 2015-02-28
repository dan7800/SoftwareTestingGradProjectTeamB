package com.google.android.gms.audiomodem;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class TokenReceiver$Params implements SafeParcelable
{
    public static final Parcelable$Creator<TokenReceiver$Params> CREATOR;
    private final int btV;
    private final Encoding[] bxa;
    
    static {
        CREATOR = (Parcelable$Creator)new g();
    }
    
    TokenReceiver$Params(final int btV, final Encoding[] bxa) {
        this.btV = btV;
        this.bxa = bxa;
    }
    
    public final Encoding[] JK() {
        return this.bxa;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        g.a(this, parcel, n);
    }
}
