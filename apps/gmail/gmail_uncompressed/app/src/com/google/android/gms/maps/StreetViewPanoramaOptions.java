package com.google.android.gms.maps;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.maps.model.*;
import com.google.android.gms.maps.a.*;
import android.os.*;

public final class StreetViewPanoramaOptions implements SafeParcelable
{
    public static final b CREATOR;
    private final int btV;
    private Boolean ceN;
    private Boolean ceT;
    private StreetViewPanoramaCamera ceW;
    private String ceX;
    private LatLng ceY;
    private Integer ceZ;
    private Boolean cfa;
    private Boolean cfb;
    private Boolean cfc;
    
    static {
        CREATOR = new b();
    }
    
    public StreetViewPanoramaOptions() {
        this.cfa = true;
        this.ceT = true;
        this.cfb = true;
        this.cfc = true;
        this.btV = 1;
    }
    
    StreetViewPanoramaOptions(final int btV, final StreetViewPanoramaCamera ceW, final String ceX, final LatLng ceY, final Integer ceZ, final byte b, final byte b2, final byte b3, final byte b4, final byte b5) {
        this.cfa = true;
        this.ceT = true;
        this.cfb = true;
        this.cfc = true;
        this.btV = btV;
        this.ceW = ceW;
        this.ceY = ceY;
        this.ceZ = ceZ;
        this.ceX = ceX;
        this.cfa = a.b(b);
        this.ceT = a.b(b2);
        this.cfb = a.b(b3);
        this.cfc = a.b(b4);
        this.ceN = a.b(b5);
    }
    
    final int Jt() {
        return this.btV;
    }
    
    final byte TV() {
        return a.a(this.ceN);
    }
    
    final byte TZ() {
        return a.a(this.ceT);
    }
    
    final byte Ue() {
        return a.a(this.cfa);
    }
    
    final byte Uf() {
        return a.a(this.cfb);
    }
    
    final byte Ug() {
        return a.a(this.cfc);
    }
    
    public final StreetViewPanoramaCamera Uh() {
        return this.ceW;
    }
    
    public final LatLng Ui() {
        return this.ceY;
    }
    
    public final Integer Uj() {
        return this.ceZ;
    }
    
    public final String Uk() {
        return this.ceX;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel, n);
    }
}
