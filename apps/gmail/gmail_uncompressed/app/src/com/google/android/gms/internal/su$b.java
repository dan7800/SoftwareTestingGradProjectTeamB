package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class su$b implements SafeParcelable
{
    public static final dk CREATOR;
    final int btV;
    
    static {
        CREATOR = new dk();
    }
    
    public su$b() {
        this.btV = 1;
    }
    
    su$b(final int btV) {
        this.btV = btV;
    }
    
    public int describeContents() {
        final dk creator = su$b.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final dk creator = su$b.CREATOR;
        dk.a(this, parcel);
    }
}
