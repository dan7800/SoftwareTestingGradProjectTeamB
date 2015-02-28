package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;
import com.google.android.gms.maps.a.*;

public final class PolygonOptions implements SafeParcelable
{
    public static final k CREATOR;
    private final int btV;
    private final List<LatLng> cfK;
    private final List<List<LatLng>> cfL;
    private boolean cfM;
    private float cfl;
    private int cfm;
    private int cfn;
    private float cfo;
    private boolean cfp;
    
    static {
        CREATOR = new k();
    }
    
    public PolygonOptions() {
        this.cfl = 10.0f;
        this.cfm = -16777216;
        this.cfn = 0;
        this.cfo = 0.0f;
        this.cfp = true;
        this.cfM = false;
        this.btV = 1;
        this.cfK = new ArrayList<LatLng>();
        this.cfL = new ArrayList<List<LatLng>>();
    }
    
    PolygonOptions(final int btV, final List<LatLng> cfK, final List cfL, final float cfl, final int cfm, final int cfn, final float cfo, final boolean cfp, final boolean cfM) {
        this.cfl = 10.0f;
        this.cfm = -16777216;
        this.cfn = 0;
        this.cfo = 0.0f;
        this.cfp = true;
        this.cfM = false;
        this.btV = btV;
        this.cfK = cfK;
        this.cfL = (List<List<LatLng>>)cfL;
        this.cfl = cfl;
        this.cfm = cfm;
        this.cfn = cfn;
        this.cfo = cfo;
        this.cfp = cfp;
        this.cfM = cfM;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    final List UD() {
        return this.cfL;
    }
    
    public final List<LatLng> UE() {
        return this.cfK;
    }
    
    public final boolean UF() {
        return this.cfM;
    }
    
    public final int Up() {
        return this.cfm;
    }
    
    public final int Uq() {
        return this.cfn;
    }
    
    public final float Ur() {
        return this.cfo;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final float getStrokeWidth() {
        return this.cfl;
    }
    
    public final boolean isVisible() {
        return this.cfp;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        if (b.Ul()) {
            final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
            com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, this.btV);
            com.google.android.gms.common.internal.safeparcel.b.b(parcel, 2, this.cfK, false);
            com.google.android.gms.common.internal.safeparcel.b.b(parcel, 3, this.cfL);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.cfl);
            com.google.android.gms.common.internal.safeparcel.b.d(parcel, 5, this.cfm);
            com.google.android.gms.common.internal.safeparcel.b.d(parcel, 6, this.cfn);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.cfo);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.cfp);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.cfM);
            com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
            return;
        }
        k.a(this, parcel);
    }
}
