package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.safeparcel.*;
import android.app.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class z implements SafeParcelable
{
    public static final Parcelable$Creator<z> CREATOR;
    private final PendingIntent bBR;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    z(final int btV, final PendingIntent bbr) {
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
        return this == o || (o instanceof z && E.b(this.bBR, ((z)o).bBR));
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.bBR });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("pendingIntent", this.bBR).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel, n);
    }
}
