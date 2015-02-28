package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;
import com.google.android.gms.maps.a.*;

public final class PolylineOptions implements SafeParcelable
{
    public static final l CREATOR;
    private final int btV;
    private final List<LatLng> cfK;
    private boolean cfM;
    private float cfo;
    private boolean cfp;
    private float cfs;
    private int dC;
    
    static {
        CREATOR = new l();
    }
    
    public PolylineOptions() {
        this.cfs = 10.0f;
        this.dC = -16777216;
        this.cfo = 0.0f;
        this.cfp = true;
        this.cfM = false;
        this.btV = 1;
        this.cfK = new ArrayList<LatLng>();
    }
    
    PolylineOptions(final int btV, final List cfK, final float cfs, final int dc, final float cfo, final boolean cfp, final boolean cfM) {
        this.cfs = 10.0f;
        this.dC = -16777216;
        this.cfo = 0.0f;
        this.cfp = true;
        this.cfM = false;
        this.btV = btV;
        this.cfK = (List<LatLng>)cfK;
        this.cfs = cfs;
        this.dC = dc;
        this.cfo = cfo;
        this.cfp = cfp;
        this.cfM = cfM;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final List<LatLng> UE() {
        return this.cfK;
    }
    
    public final boolean UF() {
        return this.cfM;
    }
    
    public final float Ur() {
        return this.cfo;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final int getColor() {
        return this.dC;
    }
    
    public final float getWidth() {
        return this.cfs;
    }
    
    public final boolean isVisible() {
        return this.cfp;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        if (b.Ul()) {
            final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
            com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, this.btV);
            com.google.android.gms.common.internal.safeparcel.b.b(parcel, 2, this.cfK, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.cfs);
            com.google.android.gms.common.internal.safeparcel.b.d(parcel, 4, this.dC);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.cfo);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.cfp);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.cfM);
            com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
            return;
        }
        l.a(this, parcel);
    }
}
