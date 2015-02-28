package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class StreetViewPanoramaCamera implements SafeParcelable
{
    public static final m CREATOR;
    private final int btV;
    private StreetViewPanoramaOrientation cfN;
    public final float cfg;
    public final float cfh;
    public final float cfi;
    
    static {
        CREATOR = new m();
    }
    
    StreetViewPanoramaCamera(final int btV, final float cfg, final float cfh, final float cfi) {
        G.b(-90.0f <= cfh && cfh <= 90.0f, "Tilt needs to be between -90 and 90 inclusive");
        this.btV = btV;
        this.cfg = cfg;
        this.cfh = 0.0f + cfh;
        float n;
        if (cfi <= 0.0) {
            n = 360.0f + cfi % 360.0f;
        }
        else {
            n = cfi;
        }
        this.cfi = n % 360.0f;
        final b b = new b();
        b.cfh = cfh;
        b.cfi = cfi;
        this.cfN = new StreetViewPanoramaOrientation(b.cfh, b.cfi);
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
            if (!(o instanceof StreetViewPanoramaCamera)) {
                return false;
            }
            final StreetViewPanoramaCamera streetViewPanoramaCamera = (StreetViewPanoramaCamera)o;
            if (Float.floatToIntBits(this.cfg) != Float.floatToIntBits(streetViewPanoramaCamera.cfg) || Float.floatToIntBits(this.cfh) != Float.floatToIntBits(streetViewPanoramaCamera.cfh) || Float.floatToIntBits(this.cfi) != Float.floatToIntBits(streetViewPanoramaCamera.cfi)) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.cfg, this.cfh, this.cfi });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("zoom", this.cfg).e("tilt", this.cfh).e("bearing", this.cfi).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        m.a(this, parcel);
    }
}
