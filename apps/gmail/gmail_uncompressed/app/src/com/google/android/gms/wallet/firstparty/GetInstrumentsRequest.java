package com.google.android.gms.wallet.firstparty;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class GetInstrumentsRequest implements SafeParcelable
{
    public static final Parcelable$Creator<GetInstrumentsRequest> CREATOR;
    private final int btV;
    int[] clY;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    GetInstrumentsRequest() {
        this(1, null);
    }
    
    GetInstrumentsRequest(final int btV, final int[] clY) {
        this.btV = btV;
        this.clY = clY;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel);
    }
}
