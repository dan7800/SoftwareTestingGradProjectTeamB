package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class NativeApiInfo implements SafeParcelable
{
    public static final M CREATOR;
    final int btV;
    public final String buO;
    public final String buP;
    
    static {
        CREATOR = new M();
    }
    
    NativeApiInfo(final int btV, final String buO, final String buP) {
        this.btV = btV;
        this.buO = buO;
        this.buP = buP;
    }
    
    public int describeContents() {
        final M creator = NativeApiInfo.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final M creator = NativeApiInfo.CREATOR;
        M.a(this, parcel);
    }
}
