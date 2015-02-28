package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.c.*;
import android.os.*;

public final class MarkerOptions implements SafeParcelable
{
    public static final j CREATOR;
    private String bGC;
    private final int btV;
    private LatLng ceY;
    private String cfD;
    private a cfE;
    private boolean cfF;
    private boolean cfG;
    private float cfH;
    private float cfI;
    private float cfJ;
    private boolean cfp;
    private float cfx;
    private float cfy;
    private float mAlpha;
    
    static {
        CREATOR = new j();
    }
    
    public MarkerOptions() {
        this.cfx = 0.5f;
        this.cfy = 1.0f;
        this.cfp = true;
        this.cfG = false;
        this.cfH = 0.0f;
        this.cfI = 0.5f;
        this.cfJ = 0.0f;
        this.mAlpha = 1.0f;
        this.btV = 1;
    }
    
    MarkerOptions(final int btV, final LatLng ceY, final String bgc, final String cfD, final IBinder binder, final float cfx, final float cfy, final boolean cfF, final boolean cfp, final boolean cfG, final float cfH, final float cfI, final float cfJ, final float mAlpha) {
        this.cfx = 0.5f;
        this.cfy = 1.0f;
        this.cfp = true;
        this.cfG = false;
        this.cfH = 0.0f;
        this.cfI = 0.5f;
        this.cfJ = 0.0f;
        this.mAlpha = 1.0f;
        this.btV = btV;
        this.ceY = ceY;
        this.bGC = bgc;
        this.cfD = cfD;
        a cfE;
        if (binder == null) {
            cfE = null;
        }
        else {
            cfE = new a(b.w(binder));
        }
        this.cfE = cfE;
        this.cfx = cfx;
        this.cfy = cfy;
        this.cfF = cfF;
        this.cfp = cfp;
        this.cfG = cfG;
        this.cfH = cfH;
        this.cfI = cfI;
        this.cfJ = cfJ;
        this.mAlpha = mAlpha;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final boolean UA() {
        return this.cfG;
    }
    
    public final float UB() {
        return this.cfI;
    }
    
    public final float UC() {
        return this.cfJ;
    }
    
    public final LatLng Ui() {
        return this.ceY;
    }
    
    public final float Uw() {
        return this.cfx;
    }
    
    public final float Ux() {
        return this.cfy;
    }
    
    final IBinder Uy() {
        if (this.cfE == null) {
            return null;
        }
        return this.cfE.Um().asBinder();
    }
    
    public final boolean Uz() {
        return this.cfF;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final float getAlpha() {
        return this.mAlpha;
    }
    
    public final float getRotation() {
        return this.cfH;
    }
    
    public final String getTitle() {
        return this.bGC;
    }
    
    public final boolean isVisible() {
        return this.cfp;
    }
    
    public final String uG() {
        return this.cfD;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        if (com.google.android.gms.maps.a.b.Ul()) {
            final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
            com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, this.btV);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable)this.ceY, n, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.bGC, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.cfD, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.Uy());
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.cfx);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.cfy);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.cfF);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.cfp);
            com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
            return;
        }
        j.a(this, parcel, n);
    }
}
