package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class ac implements SafeParcelable
{
    public static final Parcelable$Creator<ac> CREATOR;
    private final s bMH;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
    }
    
    ac(final int btV, final IBinder binder) {
        this.btV = btV;
        this.bMH = u.y(binder);
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final IBinder Nv() {
        return this.bMH.asBinder();
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        d.a(this, parcel);
    }
}
