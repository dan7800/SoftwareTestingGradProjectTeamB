package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class nm implements SafeParcelable
{
    public static final aU CREATOR;
    private final String bQa;
    private final long bUW;
    private final short bUX;
    private final double bUY;
    private final double bUZ;
    private final float bVa;
    private final int bVb;
    private final int bVc;
    private final int bVd;
    private final int btV;
    
    static {
        CREATOR = new aU();
    }
    
    public nm(final int btV, final String bQa, final int n, final short bux, final double buy, final double buz, final float bVa, final long buw, final int bVc, final int bVd) {
        if (bQa == null || bQa.length() > 100) {
            throw new IllegalArgumentException("requestId is null or too long: " + bQa);
        }
        if (bVa <= 0.0f) {
            throw new IllegalArgumentException("invalid radius: " + bVa);
        }
        if (buy > 90.0 || buy < -90.0) {
            throw new IllegalArgumentException("invalid latitude: " + buy);
        }
        if (buz > 180.0 || buz < -180.0) {
            throw new IllegalArgumentException("invalid longitude: " + buz);
        }
        final int bVb = n & 0x7;
        if (bVb == 0) {
            throw new IllegalArgumentException("No supported transition specified: " + n);
        }
        this.btV = btV;
        this.bUX = bux;
        this.bQa = bQa;
        this.bUY = buy;
        this.bUZ = buz;
        this.bVa = bVa;
        this.bUW = buw;
        this.bVb = bVb;
        this.bVc = bVc;
        this.bVd = bVd;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final String Pw() {
        return this.bQa;
    }
    
    public final short Rq() {
        return this.bUX;
    }
    
    public final float Rr() {
        return this.bVa;
    }
    
    public final long Rs() {
        return this.bUW;
    }
    
    public final int Rt() {
        return this.bVb;
    }
    
    public final int Ru() {
        return this.bVc;
    }
    
    public final int Rv() {
        return this.bVd;
    }
    
    public int describeContents() {
        final aU creator = nm.CREATOR;
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            if (o == null) {
                return false;
            }
            if (!(o instanceof nm)) {
                return false;
            }
            final nm nm = (nm)o;
            if (this.bVa != nm.bVa) {
                return false;
            }
            if (this.bUY != nm.bUY) {
                return false;
            }
            if (this.bUZ != nm.bUZ) {
                return false;
            }
            if (this.bUX != nm.bUX) {
                return false;
            }
        }
        return true;
    }
    
    public final double getLatitude() {
        return this.bUY;
    }
    
    public final double getLongitude() {
        return this.bUZ;
    }
    
    @Override
    public int hashCode() {
        final long doubleToLongBits = Double.doubleToLongBits(this.bUY);
        final int n = 31 + (int)(doubleToLongBits ^ doubleToLongBits >>> 32);
        final long doubleToLongBits2 = Double.doubleToLongBits(this.bUZ);
        return 31 * (31 * (31 * (n * 31 + (int)(doubleToLongBits2 ^ doubleToLongBits2 >>> 32)) + Float.floatToIntBits(this.bVa)) + this.bUX) + this.bVb;
    }
    
    @Override
    public String toString() {
        final Locale us = Locale.US;
        final Object[] array = new Object[9];
        Object o = null;
        switch (this.bUX) {
            default: {
                o = null;
                break;
            }
            case 1: {
                o = "CIRCLE";
                break;
            }
        }
        array[0] = o;
        array[1] = this.bQa;
        array[2] = this.bVb;
        array[3] = this.bUY;
        array[4] = this.bUZ;
        array[5] = this.bVa;
        array[6] = this.bVc / 1000;
        array[7] = this.bVd;
        array[8] = this.bUW;
        return String.format(us, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]", array);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final aU creator = nm.CREATOR;
        aU.a(this, parcel);
    }
}
