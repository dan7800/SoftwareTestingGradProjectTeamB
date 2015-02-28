package com.google.android.gms.maps;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.maps.model.*;
import com.google.android.gms.maps.a.*;
import android.os.*;

public final class GoogleMapOptions implements SafeParcelable
{
    public static final a CREATOR;
    private final int btV;
    private Boolean ceM;
    private Boolean ceN;
    private int ceO;
    private CameraPosition ceP;
    private Boolean ceQ;
    private Boolean ceR;
    private Boolean ceS;
    private Boolean ceT;
    private Boolean ceU;
    private Boolean ceV;
    
    static {
        CREATOR = new a();
    }
    
    public GoogleMapOptions() {
        this.ceO = -1;
        this.btV = 1;
    }
    
    GoogleMapOptions(final int btV, final byte b, final byte b2, final int ceO, final CameraPosition ceP, final byte b3, final byte b4, final byte b5, final byte b6, final byte b7, final byte b8) {
        this.ceO = -1;
        this.btV = btV;
        this.ceM = com.google.android.gms.maps.a.a.b(b);
        this.ceN = com.google.android.gms.maps.a.a.b(b2);
        this.ceO = ceO;
        this.ceP = ceP;
        this.ceQ = com.google.android.gms.maps.a.a.b(b3);
        this.ceR = com.google.android.gms.maps.a.a.b(b4);
        this.ceS = com.google.android.gms.maps.a.a.b(b5);
        this.ceT = com.google.android.gms.maps.a.a.b(b6);
        this.ceU = com.google.android.gms.maps.a.a.b(b7);
        this.ceV = com.google.android.gms.maps.a.a.b(b8);
    }
    
    final int Jt() {
        return this.btV;
    }
    
    final byte TU() {
        return com.google.android.gms.maps.a.a.a(this.ceM);
    }
    
    final byte TV() {
        return com.google.android.gms.maps.a.a.a(this.ceN);
    }
    
    final byte TW() {
        return com.google.android.gms.maps.a.a.a(this.ceQ);
    }
    
    final byte TX() {
        return com.google.android.gms.maps.a.a.a(this.ceR);
    }
    
    final byte TY() {
        return com.google.android.gms.maps.a.a.a(this.ceS);
    }
    
    final byte TZ() {
        return com.google.android.gms.maps.a.a.a(this.ceT);
    }
    
    final byte Ua() {
        return com.google.android.gms.maps.a.a.a(this.ceU);
    }
    
    final byte Ub() {
        return com.google.android.gms.maps.a.a.a(this.ceV);
    }
    
    public final int Uc() {
        return this.ceO;
    }
    
    public final CameraPosition Ud() {
        return this.ceP;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        if (b.Ul()) {
            final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
            com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, this.btV);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, com.google.android.gms.maps.a.a.a(this.ceM));
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, com.google.android.gms.maps.a.a.a(this.ceN));
            com.google.android.gms.common.internal.safeparcel.b.d(parcel, 4, this.ceO);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, (Parcelable)this.ceP, n, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, com.google.android.gms.maps.a.a.a(this.ceQ));
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, com.google.android.gms.maps.a.a.a(this.ceR));
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, com.google.android.gms.maps.a.a.a(this.ceS));
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, com.google.android.gms.maps.a.a.a(this.ceT));
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, com.google.android.gms.maps.a.a.a(this.ceU));
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, com.google.android.gms.maps.a.a.a(this.ceV));
            com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
            return;
        }
        a.a(this, parcel, n);
    }
}
