package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.c.*;
import android.os.*;

public final class GroundOverlayOptions implements SafeParcelable
{
    public static final g CREATOR;
    private final int btV;
    private float cfo;
    private boolean cfp;
    private a cfq;
    private LatLng cfr;
    private float cfs;
    private float cft;
    private LatLngBounds cfu;
    private float cfv;
    private float cfw;
    private float cfx;
    private float cfy;
    
    static {
        CREATOR = new g();
    }
    
    public GroundOverlayOptions() {
        this.cfp = true;
        this.cfw = 0.0f;
        this.cfx = 0.5f;
        this.cfy = 0.5f;
        this.btV = 1;
    }
    
    GroundOverlayOptions(final int btV, final IBinder binder, final LatLng cfr, final float cfs, final float cft, final LatLngBounds cfu, final float cfv, final float cfo, final boolean cfp, final float cfw, final float cfx, final float cfy) {
        this.cfp = true;
        this.cfw = 0.0f;
        this.cfx = 0.5f;
        this.cfy = 0.5f;
        this.btV = btV;
        this.cfq = new a(b.w(binder));
        this.cfr = cfr;
        this.cfs = cfs;
        this.cft = cft;
        this.cfu = cfu;
        this.cfv = cfv;
        this.cfo = cfo;
        this.cfp = cfp;
        this.cfw = cfw;
        this.cfx = cfx;
        this.cfy = cfy;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final float Ur() {
        return this.cfo;
    }
    
    final IBinder Us() {
        return this.cfq.Um().asBinder();
    }
    
    public final LatLng Ut() {
        return this.cfr;
    }
    
    public final LatLngBounds Uu() {
        return this.cfu;
    }
    
    public final float Uv() {
        return this.cfw;
    }
    
    public final float Uw() {
        return this.cfx;
    }
    
    public final float Ux() {
        return this.cfy;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final float getBearing() {
        return this.cfv;
    }
    
    public final float getHeight() {
        return this.cft;
    }
    
    public final float getWidth() {
        return this.cfs;
    }
    
    public final boolean isVisible() {
        return this.cfp;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        if (com.google.android.gms.maps.a.b.Ul()) {
            final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
            com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, this.btV);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.Us());
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable)this.cfr, n, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.cfs);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.cft);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, (Parcelable)this.cfu, n, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.cfv);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.cfo);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.cfp);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, this.cfw);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, this.cfx);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, this.cfy);
            com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
            return;
        }
        g.a(this, parcel, n);
    }
}
