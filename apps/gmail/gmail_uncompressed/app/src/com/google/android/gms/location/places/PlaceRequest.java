package com.google.android.gms.location.places;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.concurrent.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public final class PlaceRequest implements SafeParcelable
{
    public static final h CREATOR;
    static final long cbJ;
    final int btV;
    private final long car;
    private final PlaceFilter cbK;
    private final int do;
    
    static {
        CREATOR = new h();
        cbJ = TimeUnit.HOURS.toMillis(1L);
    }
    
    public PlaceRequest(final int btV, final PlaceFilter cbK, final long car, final int do1) {
        this.btV = btV;
        this.cbK = cbK;
        this.car = car;
        this.do = do1;
    }
    
    public final PlaceFilter Tv() {
        return this.cbK;
    }
    
    public final long Tz() {
        return this.car;
    }
    
    public final int describeContents() {
        final h creator = PlaceRequest.CREATOR;
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this != o) {
            if (!(o instanceof PlaceRequest)) {
                return false;
            }
            final PlaceRequest placeRequest = (PlaceRequest)o;
            if (!E.b(this.cbK, placeRequest.cbK) || this.car != placeRequest.car || this.do != placeRequest.do) {
                return false;
            }
        }
        return true;
    }
    
    public final int getPriority() {
        return this.do;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.cbK, this.car, this.do });
    }
    
    @Override
    public final String toString() {
        return E.ad(this).e("filter", this.cbK).e("interval", this.car).e("priority", this.do).toString();
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        final h creator = PlaceRequest.CREATOR;
        h.a(this, parcel, n);
    }
}
