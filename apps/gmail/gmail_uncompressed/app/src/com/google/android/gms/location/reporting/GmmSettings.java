package com.google.android.gms.location.reporting;

import com.google.android.gms.common.internal.safeparcel.*;
import android.accounts.*;
import com.google.android.gms.internal.*;
import android.os.*;

public class GmmSettings implements SafeParcelable
{
    public static final b CREATOR;
    private final int btV;
    private final Account bvG;
    private final long cet;
    private final boolean ceu;
    
    static {
        CREATOR = new b();
    }
    
    public GmmSettings(final int btV, final long cet, final Account bvG, final boolean ceu) {
        this.btV = btV;
        this.cet = cet;
        this.bvG = bvG;
        this.ceu = ceu;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final long TG() {
        return this.cet;
    }
    
    public final boolean TH() {
        return this.ceu;
    }
    
    public int describeContents() {
        final b creator = GmmSettings.CREATOR;
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o instanceof GmmSettings) {
            final GmmSettings gmmSettings = (GmmSettings)o;
            if (this.cet != gmmSettings.cet || this.ceu != gmmSettings.ceu || this.btV != gmmSettings.btV || this.bvG != null) {
                return this.bvG.equals((Object)gmmSettings.bvG);
            }
            if (gmmSettings.bvG == null) {
                return true;
            }
        }
        return false;
    }
    
    @Override
    public int hashCode() {
        final int n = 31 * (31 * this.btV + (int)(this.cet ^ this.cet >>> 32));
        int hashCode;
        if (this.bvG != null) {
            hashCode = this.bvG.hashCode();
        }
        else {
            hashCode = 0;
        }
        final int n2 = 31 * (hashCode + n);
        final boolean ceu = this.ceu;
        int n3 = 0;
        if (ceu) {
            n3 = 1;
        }
        return n2 + n3;
    }
    
    public final Account mr() {
        return this.bvG;
    }
    
    @Override
    public String toString() {
        return "GmmSettings{mVersionCode=" + this.btV + ", mValueReadMillis=" + this.cet + ", mAccount=" + aZ.e(this.bvG) + ", mReportingSelected=" + this.ceu + '}';
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final b creator = GmmSettings.CREATOR;
        b.a(this, parcel, n);
    }
}
