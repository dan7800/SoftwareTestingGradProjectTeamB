package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class StreetViewPanoramaLink implements SafeParcelable
{
    public static final n CREATOR;
    private final int btV;
    public final String cfO;
    public final float cfi;
    
    static {
        CREATOR = new n();
    }
    
    StreetViewPanoramaLink(final int btV, final String cfO, float n) {
        this.btV = btV;
        this.cfO = cfO;
        if (n <= 0.0) {
            n = 360.0f + n % 360.0f;
        }
        this.cfi = n % 360.0f;
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
            if (!(o instanceof StreetViewPanoramaLink)) {
                return false;
            }
            final StreetViewPanoramaLink streetViewPanoramaLink = (StreetViewPanoramaLink)o;
            if (!this.cfO.equals(streetViewPanoramaLink.cfO) || Float.floatToIntBits(this.cfi) != Float.floatToIntBits(streetViewPanoramaLink.cfi)) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.cfO, this.cfi });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("panoId", this.cfO).e("bearing", this.cfi).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        n.a(this, parcel);
    }
}
