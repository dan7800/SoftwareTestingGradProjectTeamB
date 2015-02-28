package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class jn implements SafeParcelable
{
    public static final R CREATOR;
    public final String bTo;
    public final int bTp;
    final int btV;
    
    static {
        CREATOR = new R();
    }
    
    public jn(final int btV, final String bTo, final int bTp) {
        this.btV = btV;
        this.bTo = bTo;
        this.bTp = bTp;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        R.a(this, parcel);
    }
}
