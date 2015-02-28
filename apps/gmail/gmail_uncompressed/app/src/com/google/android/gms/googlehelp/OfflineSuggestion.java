package com.google.android.gms.googlehelp;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class OfflineSuggestion implements SafeParcelable
{
    public static final Parcelable$Creator<OfflineSuggestion> CREATOR;
    final String bGC;
    final String bQT;
    final String bQU;
    final int btV;
    final String bzz;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    OfflineSuggestion(final int btV, final String bzz, final String bgc, final String bqt, final String bqu) {
        this.btV = btV;
        this.bzz = bzz;
        this.bGC = bgc;
        this.bQT = bqt;
        this.bQU = bqu;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        c.a(this, parcel);
    }
}
