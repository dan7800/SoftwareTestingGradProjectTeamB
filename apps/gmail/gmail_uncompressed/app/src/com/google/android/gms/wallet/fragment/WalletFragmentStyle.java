package com.google.android.gms.wallet.fragment;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class WalletFragmentStyle implements SafeParcelable
{
    public static final Parcelable$Creator<WalletFragmentStyle> CREATOR;
    final int btV;
    Bundle cmg;
    int cmh;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    public WalletFragmentStyle() {
        this.btV = 1;
        this.cmg = new Bundle();
    }
    
    WalletFragmentStyle(final int btV, final Bundle cmg, final int cmh) {
        this.btV = btV;
        this.cmg = cmg;
        this.cmh = cmh;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        c.a(this, parcel);
    }
}
