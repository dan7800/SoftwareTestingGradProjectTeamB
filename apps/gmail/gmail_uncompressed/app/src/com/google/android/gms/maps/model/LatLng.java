package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;
import com.google.android.gms.maps.a.*;

public final class LatLng implements SafeParcelable
{
    public static final i CREATOR;
    private final int btV;
    public final double cfA;
    public final double cfz;
    
    static {
        CREATOR = new i();
    }
    
    LatLng(final int btV, final double n, final double cfA) {
        this.btV = btV;
        if (-180.0 <= cfA && cfA < 180.0) {
            this.cfA = cfA;
        }
        else {
            this.cfA = (360.0 + (cfA - 180.0) % 360.0) % 360.0 - 180.0;
        }
        this.cfz = Math.max(-90.0, Math.min(90.0, n));
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this != o) {
            if (!(o instanceof LatLng)) {
                return false;
            }
            final LatLng latLng = (LatLng)o;
            if (Double.doubleToLongBits(this.cfz) != Double.doubleToLongBits(latLng.cfz) || Double.doubleToLongBits(this.cfA) != Double.doubleToLongBits(latLng.cfA)) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        final long doubleToLongBits = Double.doubleToLongBits(this.cfz);
        final int n = 31 + (int)(doubleToLongBits ^ doubleToLongBits >>> 32);
        final long doubleToLongBits2 = Double.doubleToLongBits(this.cfA);
        return n * 31 + (int)(doubleToLongBits2 ^ doubleToLongBits2 >>> 32);
    }
    
    @Override
    public final String toString() {
        return "lat/lng: (" + this.cfz + "," + this.cfA + ")";
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        if (b.Ul()) {
            final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
            com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, this.btV);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.cfz);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.cfA);
            com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
            return;
        }
        i.a(this, parcel);
    }
}
