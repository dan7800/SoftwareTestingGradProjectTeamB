package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import com.google.android.gms.maps.a.*;
import android.os.*;

public final class CameraPosition implements SafeParcelable
{
    public static final e CREATOR;
    private final int btV;
    public final LatLng cff;
    public final float cfg;
    public final float cfh;
    public final float cfi;
    
    static {
        CREATOR = new e();
    }
    
    CameraPosition(final int btV, final LatLng cff, final float cfg, final float n, float n2) {
        G.f(cff, "null camera target");
        G.b(0.0f <= n && n <= 90.0f, "Tilt needs to be between 0 and 90 inclusive");
        this.btV = btV;
        this.cff = cff;
        this.cfg = cfg;
        this.cfh = n + 0.0f;
        if (n2 <= 0.0) {
            n2 = 360.0f + n2 % 360.0f;
        }
        this.cfi = n2 % 360.0f;
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
            if (!(o instanceof CameraPosition)) {
                return false;
            }
            final CameraPosition cameraPosition = (CameraPosition)o;
            if (!this.cff.equals(cameraPosition.cff) || Float.floatToIntBits(this.cfg) != Float.floatToIntBits(cameraPosition.cfg) || Float.floatToIntBits(this.cfh) != Float.floatToIntBits(cameraPosition.cfh) || Float.floatToIntBits(this.cfi) != Float.floatToIntBits(cameraPosition.cfi)) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.cff, this.cfg, this.cfh, this.cfi });
    }
    
    @Override
    public final String toString() {
        return E.ad(this).e("target", this.cff).e("zoom", this.cfg).e("tilt", this.cfh).e("bearing", this.cfi).toString();
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        if (b.Ul()) {
            final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
            com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, this.btV);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable)this.cff, n, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.cfg);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.cfh);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.cfi);
            com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
            return;
        }
        e.a(this, parcel, n);
    }
}
