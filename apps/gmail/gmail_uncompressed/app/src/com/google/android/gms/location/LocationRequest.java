package com.google.android.gms.location;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public final class LocationRequest implements SafeParcelable
{
    public static final d CREATOR;
    private final int btV;
    long car;
    long cas;
    boolean cat;
    long cau;
    int cav;
    float caw;
    long cax;
    int do;
    
    static {
        CREATOR = new d();
    }
    
    public LocationRequest() {
        this.btV = 1;
        this.do = 102;
        this.car = 3600000L;
        this.cas = 600000L;
        this.cat = false;
        this.cau = Long.MAX_VALUE;
        this.cav = Integer.MAX_VALUE;
        this.caw = 0.0f;
        this.cax = 0L;
    }
    
    LocationRequest(final int btV, final int do1, final long car, final long cas, final boolean cat, final long cau, final int cav, final float caw, final long cax) {
        this.btV = btV;
        this.do = do1;
        this.car = car;
        this.cas = cas;
        this.cat = cat;
        this.cau = cau;
        this.cav = cav;
        this.caw = caw;
        this.cax = cax;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this != o) {
            if (!(o instanceof LocationRequest)) {
                return false;
            }
            final LocationRequest locationRequest = (LocationRequest)o;
            if (this.do != locationRequest.do || this.car != locationRequest.car || this.cas != locationRequest.cas || this.cat != locationRequest.cat || this.cau != locationRequest.cau || this.cav != locationRequest.cav || this.caw != locationRequest.caw) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.do, this.car, this.cas, this.cat, this.cau, this.cav, this.caw });
    }
    
    @Override
    public final String toString() {
        final StringBuilder sb = new StringBuilder();
        final StringBuilder append = sb.append("Request[");
        String s = null;
        switch (this.do) {
            default: {
                s = "???";
                break;
            }
            case 100: {
                s = "PRIORITY_HIGH_ACCURACY";
                break;
            }
            case 102: {
                s = "PRIORITY_BALANCED_POWER_ACCURACY";
                break;
            }
            case 104: {
                s = "PRIORITY_LOW_POWER";
                break;
            }
            case 105: {
                s = "PRIORITY_NO_POWER";
                break;
            }
        }
        append.append(s);
        if (this.do != 105) {
            sb.append(" requested=");
            sb.append(this.car + "ms");
        }
        sb.append(" fastest=");
        sb.append(this.cas + "ms");
        if (this.cau != Long.MAX_VALUE) {
            final long n = this.cau - SystemClock.elapsedRealtime();
            sb.append(" expireIn=");
            sb.append(n + "ms");
        }
        if (this.cav != Integer.MAX_VALUE) {
            sb.append(" num=").append(this.cav);
        }
        sb.append(']');
        return sb.toString();
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        d.a(this, parcel);
    }
}
