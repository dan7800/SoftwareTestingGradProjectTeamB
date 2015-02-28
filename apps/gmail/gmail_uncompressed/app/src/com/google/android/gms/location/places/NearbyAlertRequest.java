package com.google.android.gms.location.places;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public final class NearbyAlertRequest implements SafeParcelable
{
    public static final d CREATOR;
    private final int bVb;
    private final int btV;
    private final int cbx;
    private final PlaceFilter cby;
    
    static {
        CREATOR = new d();
    }
    
    NearbyAlertRequest(final int btV, final int bVb, final int cbx, final PlaceFilter cby) {
        this.btV = btV;
        this.bVb = bVb;
        this.cbx = cbx;
        this.cby = cby;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int Rt() {
        return this.bVb;
    }
    
    public final int Tu() {
        return this.cbx;
    }
    
    public final PlaceFilter Tv() {
        return this.cby;
    }
    
    public final int describeContents() {
        final d creator = NearbyAlertRequest.CREATOR;
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this != o) {
            if (!(o instanceof NearbyAlertRequest)) {
                return false;
            }
            final NearbyAlertRequest nearbyAlertRequest = (NearbyAlertRequest)o;
            if (this.bVb != nearbyAlertRequest.bVb || this.cbx != nearbyAlertRequest.cbx || !this.cby.equals(nearbyAlertRequest.cby)) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.bVb, this.cbx });
    }
    
    @Override
    public final String toString() {
        return E.ad(this).e("transitionTypes", this.bVb).e("loiteringTimeMillis", this.cbx).e("placeFilter", this.cby).toString();
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        final d creator = NearbyAlertRequest.CREATOR;
        d.a(this, parcel, n);
    }
}
