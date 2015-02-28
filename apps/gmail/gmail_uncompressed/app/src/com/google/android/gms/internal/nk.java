package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.location.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class nk implements SafeParcelable
{
    public static final aT CREATOR;
    static final List<nc> bUQ;
    final String aK;
    LocationRequest bUR;
    boolean bUS;
    boolean bUT;
    boolean bUU;
    List<nc> bUV;
    private final int btV;
    
    static {
        bUQ = Collections.emptyList();
        CREATOR = new aT();
    }
    
    nk(final int btV, final LocationRequest bur, final boolean bus, final boolean but, final boolean buu, final List<nc> buv, final String ak) {
        this.btV = btV;
        this.bUR = bur;
        this.bUS = bus;
        this.bUT = but;
        this.bUU = buu;
        this.bUV = buv;
        this.aK = ak;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o instanceof nk) {
            final nk nk = (nk)o;
            if (E.b(this.bUR, nk.bUR) && this.bUS == nk.bUS && this.bUT == nk.bUT && this.bUU == nk.bUU && E.b(this.bUV, nk.bUV)) {
                return true;
            }
        }
        return false;
    }
    
    @Override
    public int hashCode() {
        return this.bUR.hashCode();
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append(this.bUR.toString());
        sb.append(" requestNlpDebugInfo=");
        sb.append(this.bUS);
        sb.append(" restorePendingIntentListeners=");
        sb.append(this.bUT);
        sb.append(" triggerUpdate=");
        sb.append(this.bUU);
        sb.append(" clients=");
        sb.append(this.bUV);
        if (this.aK != null) {
            sb.append(" tag=");
            sb.append(this.aK);
        }
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        aT.a(this, parcel, n);
    }
}
