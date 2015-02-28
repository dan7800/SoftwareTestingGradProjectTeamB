package com.google.android.gms.location.places;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class PlaceReport implements SafeParcelable
{
    public static final g CREATOR;
    private final String aK;
    final int btV;
    private final String cbv;
    
    static {
        CREATOR = new g();
    }
    
    PlaceReport(final int btV, final String cbv, final String ak) {
        this.btV = btV;
        this.cbv = cbv;
        this.aK = ak;
    }
    
    public final String Ty() {
        return this.cbv;
    }
    
    public int describeContents() {
        final g creator = PlaceReport.CREATOR;
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o instanceof PlaceReport) {
            final PlaceReport placeReport = (PlaceReport)o;
            if (E.b(this.cbv, placeReport.cbv) && E.b(this.aK, placeReport.aK)) {
                return true;
            }
        }
        return false;
    }
    
    public final String getTag() {
        return this.aK;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.cbv, this.aK });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("mPlaceId", this.cbv).e("mTag", this.aK).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final g creator = PlaceReport.CREATOR;
        g.a(this, parcel);
    }
}
