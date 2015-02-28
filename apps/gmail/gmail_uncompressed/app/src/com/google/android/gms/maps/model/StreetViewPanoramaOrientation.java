package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class StreetViewPanoramaOrientation implements SafeParcelable
{
    public static final p CREATOR;
    private final int btV;
    public final float cfh;
    public final float cfi;
    
    static {
        CREATOR = new p();
    }
    
    public StreetViewPanoramaOrientation(final float n, final float n2) {
        this(1, n, n2);
    }
    
    StreetViewPanoramaOrientation(final int btV, final float n, float n2) {
        G.b(-90.0f <= n && n <= 90.0f, "Tilt needs to be between -90 and 90 inclusive");
        this.btV = btV;
        this.cfh = 0.0f + n;
        if (n2 <= 0.0) {
            n2 = 360.0f + n2 % 360.0f;
        }
        this.cfi = n2 % 360.0f;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            if (!(o instanceof StreetViewPanoramaOrientation)) {
                return false;
            }
            final StreetViewPanoramaOrientation streetViewPanoramaOrientation = (StreetViewPanoramaOrientation)o;
            if (Float.floatToIntBits(this.cfh) != Float.floatToIntBits(streetViewPanoramaOrientation.cfh) || Float.floatToIntBits(this.cfi) != Float.floatToIntBits(streetViewPanoramaOrientation.cfi)) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.cfh, this.cfi });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("tilt", this.cfh).e("bearing", this.cfi).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        p.a(this, parcel);
    }
}
