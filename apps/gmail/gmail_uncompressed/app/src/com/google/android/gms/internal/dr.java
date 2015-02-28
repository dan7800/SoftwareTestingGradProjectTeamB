package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.c.*;
import android.os.*;

public final class dr implements SafeParcelable
{
    public static final i CREATOR;
    public final do bRT;
    public final dx bRU;
    public final j bRV;
    public final v bRW;
    public final f bRX;
    public final String bRY;
    public final boolean bRZ;
    public final String bSa;
    public final k bSb;
    public final int bSc;
    public final gy bSd;
    public final g bSe;
    public final String bSf;
    public final ac bSg;
    public final String bzq;
    public final int orientation;
    public final int versionCode;
    
    static {
        CREATOR = new i();
    }
    
    dr(final int versionCode, final do brt, final IBinder binder, final IBinder binder2, final IBinder binder3, final IBinder binder4, final String bry, final boolean brz, final String bSa, final IBinder binder5, final int orientation, final int bSc, final String bzq, final gy bSd, final IBinder binder6, final String bSf, final ac bSg) {
        this.versionCode = versionCode;
        this.bRT = brt;
        this.bRU = d.a(b.w(binder));
        this.bRV = d.a(b.w(binder2));
        this.bRW = d.a(b.w(binder3));
        this.bRX = d.a(b.w(binder4));
        this.bRY = bry;
        this.bRZ = brz;
        this.bSa = bSa;
        this.bSb = d.a(b.w(binder5));
        this.orientation = orientation;
        this.bSc = bSc;
        this.bzq = bzq;
        this.bSd = bSd;
        this.bSe = d.a(b.w(binder6));
        this.bSf = bSf;
        this.bSg = bSg;
    }
    
    final IBinder QC() {
        return d.ag(this.bRU).asBinder();
    }
    
    final IBinder QD() {
        return d.ag(this.bRV).asBinder();
    }
    
    final IBinder QE() {
        return d.ag(this.bRW).asBinder();
    }
    
    final IBinder QF() {
        return d.ag(this.bRX).asBinder();
    }
    
    final IBinder QG() {
        return d.ag(this.bSe).asBinder();
    }
    
    final IBinder QH() {
        return d.ag(this.bSb).asBinder();
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        i.a(this, parcel, n);
    }
}
