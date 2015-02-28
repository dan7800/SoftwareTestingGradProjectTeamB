package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.maps.a.*;
import android.os.*;

public final class CircleOptions implements SafeParcelable
{
    public static final f CREATOR;
    private final int btV;
    private LatLng cfj;
    private double cfk;
    private float cfl;
    private int cfm;
    private int cfn;
    private float cfo;
    private boolean cfp;
    
    static {
        CREATOR = new f();
    }
    
    public CircleOptions() {
        this.cfj = null;
        this.cfk = 0.0;
        this.cfl = 10.0f;
        this.cfm = -16777216;
        this.cfn = 0;
        this.cfo = 0.0f;
        this.cfp = true;
        this.btV = 1;
    }
    
    CircleOptions(final int btV, final LatLng cfj, final double cfk, final float cfl, final int cfm, final int cfn, final float cfo, final boolean cfp) {
        this.cfj = null;
        this.cfk = 0.0;
        this.cfl = 10.0f;
        this.cfm = -16777216;
        this.cfn = 0;
        this.cfo = 0.0f;
        this.cfp = true;
        this.btV = btV;
        this.cfj = cfj;
        this.cfk = cfk;
        this.cfl = cfl;
        this.cfm = cfm;
        this.cfn = cfn;
        this.cfo = cfo;
        this.cfp = cfp;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final LatLng Un() {
        return this.cfj;
    }
    
    public final double Uo() {
        return this.cfk;
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
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable)this.cfj, n, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.cfk);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.cfl);
            com.google.android.gms.common.internal.safeparcel.b.d(parcel, 5, this.cfm);
            com.google.android.gms.common.internal.safeparcel.b.d(parcel, 6, this.cfn);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.cfo);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.cfp);
            com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
            return;
        }
        f.a(this, parcel, n);
    }
}
