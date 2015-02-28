package com.google.android.gms.location.copresence.debug;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class b implements SafeParcelable
{
    public static final c CREATOR;
    private final int btV;
    
    static {
        CREATOR = new c();
    }
    
    public b() {
        this(1);
    }
    
    b(final int btV) {
        this.btV = btV;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public int describeContents() {
        final c creator = b.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.a(this, parcel);
    }
}
