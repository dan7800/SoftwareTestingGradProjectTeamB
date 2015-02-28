package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.maps.model.a.*;
import android.os.*;

public final class TileOverlayOptions implements SafeParcelable
{
    public static final r CREATOR;
    private final int btV;
    private a cfS;
    private d cfT;
    private boolean cfU;
    private float cfo;
    private boolean cfp;
    
    static {
        CREATOR = new r();
    }
    
    public TileOverlayOptions() {
        this.cfp = true;
        this.cfU = true;
        this.btV = 1;
    }
    
    TileOverlayOptions(final int btV, final IBinder binder, final boolean cfp, final float cfo, final boolean cfU) {
        this.cfp = true;
        this.cfU = true;
        this.btV = btV;
        this.cfS = b.J(binder);
        d cfT;
        if (this.cfS == null) {
            cfT = null;
        }
        else {
            cfT = new c(this);
        }
        this.cfT = cfT;
        this.cfp = cfp;
        this.cfo = cfo;
        this.cfU = cfU;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    final IBinder UG() {
        return this.cfS.asBinder();
    }
    
    public final boolean UH() {
        return this.cfU;
    }
    
    public final float Ur() {
        return this.cfo;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final boolean isVisible() {
        return this.cfp;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        if (com.google.android.gms.maps.a.b.Ul()) {
            final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
            com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, this.btV);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.UG());
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.cfp);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.cfo);
            com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
            return;
        }
        r.a(this, parcel);
    }
}
