package com.google.android.gms.audiomodem;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class DecodedToken implements SafeParcelable
{
    public static final Parcelable$Creator<DecodedToken> CREATOR;
    private final int btV;
    private final byte[] bwI;
    private final int bwJ;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    DecodedToken(final int btV, final byte[] bwI, final int bwJ) {
        this.btV = btV;
        this.bwI = bwI;
        this.bwJ = bwJ;
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
    
    public final int getRank() {
        return this.bwJ;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel);
    }
}
