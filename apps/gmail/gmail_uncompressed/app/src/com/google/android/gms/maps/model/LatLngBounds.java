package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import com.google.android.gms.maps.a.*;
import android.os.*;

public final class LatLngBounds implements SafeParcelable
{
    public static final h CREATOR;
    private final int btV;
    public final LatLng cfB;
    public final LatLng cfC;
    
    static {
        CREATOR = new h();
    }
    
    LatLngBounds(final int btV, final LatLng cfB, final LatLng cfC) {
        G.f(cfB, "null southwest");
        G.f(cfC, "null northeast");
        int n;
        if (cfC.cfz >= cfB.cfz) {
            n = 1;
        }
        else {
            n = 0;
        }
        final Object[] array = { cfB.cfz, cfC.cfz };
        if (n == 0) {
            throw new IllegalArgumentException(String.format("southern latitude exceeds northern latitude (%s > %s)", array));
        }
        this.btV = btV;
        this.cfB = cfB;
        this.cfC = cfC;
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
            if (!(o instanceof LatLngBounds)) {
                return false;
            }
            final LatLngBounds latLngBounds = (LatLngBounds)o;
            if (!this.cfB.equals(latLngBounds.cfB) || !this.cfC.equals(latLngBounds.cfC)) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.cfB, this.cfC });
    }
    
    @Override
    public final String toString() {
        return E.ad(this).e("southwest", this.cfB).e("northeast", this.cfC).toString();
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        if (b.Ul()) {
            final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
            com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, this.btV);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable)this.cfB, n, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable)this.cfC, n, false);
            com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
            return;
        }
        h.a(this, parcel, n);
    }
}
