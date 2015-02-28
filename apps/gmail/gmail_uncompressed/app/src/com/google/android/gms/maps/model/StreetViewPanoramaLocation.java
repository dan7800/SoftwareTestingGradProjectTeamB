package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class StreetViewPanoramaLocation implements SafeParcelable
{
    public static final o CREATOR;
    private final int btV;
    public final String cfO;
    public final StreetViewPanoramaLink[] cfP;
    public final LatLng cfQ;
    
    static {
        CREATOR = new o();
    }
    
    StreetViewPanoramaLocation(final int btV, final StreetViewPanoramaLink[] cfP, final LatLng cfQ, final String cfO) {
        this.btV = btV;
        this.cfP = cfP;
        this.cfQ = cfQ;
        this.cfO = cfO;
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
            if (!(o instanceof StreetViewPanoramaLocation)) {
                return false;
            }
            final StreetViewPanoramaLocation streetViewPanoramaLocation = (StreetViewPanoramaLocation)o;
            if (!this.cfO.equals(streetViewPanoramaLocation.cfO) || !this.cfQ.equals(streetViewPanoramaLocation.cfQ)) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.cfQ, this.cfO });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("panoId", this.cfO).e("position", this.cfQ.toString()).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        o.a(this, parcel, n);
    }
}
