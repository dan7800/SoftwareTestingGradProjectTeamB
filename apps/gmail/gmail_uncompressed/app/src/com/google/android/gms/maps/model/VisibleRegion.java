package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import com.google.android.gms.maps.a.*;
import android.os.*;

public final class VisibleRegion implements SafeParcelable
{
    public static final s CREATOR;
    private final int btV;
    public final LatLng cfY;
    public final LatLng cfZ;
    public final LatLng cga;
    public final LatLng cgb;
    public final LatLngBounds cgc;
    
    static {
        CREATOR = new s();
    }
    
    VisibleRegion(final int btV, final LatLng cfY, final LatLng cfZ, final LatLng cga, final LatLng cgb, final LatLngBounds cgc) {
        this.btV = btV;
        this.cfY = cfY;
        this.cfZ = cfZ;
        this.cga = cga;
        this.cgb = cgb;
        this.cgc = cgc;
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
            if (!(o instanceof VisibleRegion)) {
                return false;
            }
            final VisibleRegion visibleRegion = (VisibleRegion)o;
            if (!this.cfY.equals(visibleRegion.cfY) || !this.cfZ.equals(visibleRegion.cfZ) || !this.cga.equals(visibleRegion.cga) || !this.cgb.equals(visibleRegion.cgb) || !this.cgc.equals(visibleRegion.cgc)) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.cfY, this.cfZ, this.cga, this.cgb, this.cgc });
    }
    
    @Override
    public final String toString() {
        return E.ad(this).e("nearLeft", this.cfY).e("nearRight", this.cfZ).e("farLeft", this.cga).e("farRight", this.cgb).e("latLngBounds", this.cgc).toString();
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        if (b.Ul()) {
            final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
            com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, this.btV);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable)this.cfY, n, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable)this.cfZ, n, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, (Parcelable)this.cga, n, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, (Parcelable)this.cgb, n, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, (Parcelable)this.cgc, n, false);
            com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
            return;
        }
        s.a(this, parcel, n);
    }
}
