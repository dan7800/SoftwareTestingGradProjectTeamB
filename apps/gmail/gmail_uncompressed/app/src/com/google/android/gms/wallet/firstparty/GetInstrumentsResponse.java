package com.google.android.gms.wallet.firstparty;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class GetInstrumentsResponse implements SafeParcelable
{
    public static final Parcelable$Creator<GetInstrumentsResponse> CREATOR;
    private final int btV;
    String[] clZ;
    byte[][] cma;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    GetInstrumentsResponse() {
        this(1, new String[0], new byte[0][]);
    }
    
    GetInstrumentsResponse(final int btV, final String[] clZ, final byte[][] cma) {
        this.btV = btV;
        this.clZ = clZ;
        this.cma = cma;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel);
    }
}
