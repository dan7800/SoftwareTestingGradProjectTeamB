package com.google.android.gms.fitness.data;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.concurrent.*;
import java.util.*;
import android.os.*;

public final class RawDataPoint implements SafeParcelable
{
    public static final Parcelable$Creator<RawDataPoint> CREATOR;
    final long bKA;
    final Value[] bKB;
    final long bKD;
    final long bKE;
    final long bKz;
    final int bMe;
    final int bMf;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new n();
    }
    
    RawDataPoint(final int btV, final long bKz, final long bka, final Value[] bkb, final int bMe, final int bMf, final long bkd, final long bke) {
        this.btV = btV;
        this.bKz = bKz;
        this.bKA = bka;
        this.bMe = bMe;
        this.bMf = bMf;
        this.bKD = bkd;
        this.bKE = bke;
        this.bKB = bkb;
    }
    
    RawDataPoint(final DataPoint dataPoint, final List<DataSource> list) {
        this.btV = 4;
        this.bKz = dataPoint.d(TimeUnit.NANOSECONDS);
        this.bKA = dataPoint.b(TimeUnit.NANOSECONDS);
        this.bKB = dataPoint.Mz();
        this.bMe = t.a(dataPoint.MA(), list);
        this.bMf = t.a(dataPoint.MB(), list);
        this.bKD = dataPoint.MC();
        this.bKE = dataPoint.MD();
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this != o) {
            final boolean b = o instanceof RawDataPoint;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final RawDataPoint rawDataPoint = (RawDataPoint)o;
            int n;
            if (this.bKz == rawDataPoint.bKz && this.bKA == rawDataPoint.bKA && Arrays.equals(this.bKB, rawDataPoint.bKB) && this.bMe == rawDataPoint.bMe && this.bMf == rawDataPoint.bMf && this.bKD == rawDataPoint.bKD) {
                n = 1;
            }
            else {
                n = 0;
            }
            b2 = false;
            if (n == 0) {
                return b2;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.bKz, this.bKA });
    }
    
    @Override
    public final String toString() {
        return String.format("RawDataPoint{%s@[%s, %s](%d,%d)}", Arrays.toString(this.bKB), this.bKA, this.bKz, this.bMe, this.bMf);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        n.a(this, parcel, n);
    }
}
