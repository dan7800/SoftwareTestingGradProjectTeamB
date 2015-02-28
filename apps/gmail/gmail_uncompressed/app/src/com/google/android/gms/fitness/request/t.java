package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.safeparcel.*;
import android.app.*;
import java.util.*;
import android.os.*;

public class t implements SafeParcelable
{
    public static final Parcelable$Creator<t> CREATOR;
    private final PendingIntent bBR;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new E();
    }
    
    t(final int btV, final PendingIntent bbr) {
        this.btV = btV;
        this.bBR = bbr;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final PendingIntent NA() {
        return this.bBR;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        return this == o || (o instanceof t && com.google.android.gms.common.internal.E.b(this.bBR, ((t)o).bBR));
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.bBR });
    }
    
    @Override
    public String toString() {
        return com.google.android.gms.common.internal.E.ad(this).e("pendingIntent", this.bBR).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        E.a(this, parcel, n);
    }
}
