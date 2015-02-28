package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class k implements SafeParcelable
{
    public static final H CREATOR;
    final int btV;
    final String btW;
    final Feature[] buD;
    
    static {
        CREATOR = new H();
    }
    
    k(final int btV, final String btW, final Feature[] buD) {
        this.btV = btV;
        this.btW = btW;
        this.buD = buD;
    }
    
    public int describeContents() {
        final H creator = k.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final H creator = k.CREATOR;
        H.a(this, parcel, n);
    }
}
