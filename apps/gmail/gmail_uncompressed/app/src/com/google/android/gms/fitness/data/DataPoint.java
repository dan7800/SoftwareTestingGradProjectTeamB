package com.google.android.gms.fitness.data;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.concurrent.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public final class DataPoint implements SafeParcelable
{
    public static final Parcelable$Creator<DataPoint> CREATOR;
    private long bKA;
    private final Value[] bKB;
    private DataSource bKC;
    private long bKD;
    private long bKE;
    private final DataSource bKy;
    private long bKz;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
    }
    
    DataPoint(final int btV, final DataSource bKy, final long bKz, final long bka, final Value[] bkb, final DataSource bkc, final long bkd, final long bke) {
        this.btV = btV;
        this.bKy = bKy;
        this.bKC = bkc;
        this.bKz = bKz;
        this.bKA = bka;
        this.bKB = bkb;
        this.bKD = bkd;
        this.bKE = bke;
    }
    
    DataPoint(final List<DataSource> list, final RawDataPoint rawDataPoint) {
        this(4, b(list, rawDataPoint.bMe), rawDataPoint.bKz, rawDataPoint.bKA, rawDataPoint.bKB, b(list, rawDataPoint.bMf), rawDataPoint.bKD, rawDataPoint.bKE);
    }
    
    private static DataSource b(final List<DataSource> list, final int n) {
        if (n >= 0 && n < list.size()) {
            return list.get(n);
        }
        return null;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final DataSource MA() {
        return this.bKy;
    }
    
    public final DataSource MB() {
        return this.bKC;
    }
    
    public final long MC() {
        return this.bKD;
    }
    
    public final long MD() {
        return this.bKE;
    }
    
    public final long ME() {
        return this.bKA;
    }
    
    public final Value[] Mz() {
        return this.bKB;
    }
    
    public final long b(final TimeUnit timeUnit) {
        return timeUnit.convert(this.bKA, TimeUnit.NANOSECONDS);
    }
    
    public final long d(final TimeUnit timeUnit) {
        return timeUnit.convert(this.bKz, TimeUnit.NANOSECONDS);
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this != o) {
            final boolean b = o instanceof DataPoint;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final DataPoint dataPoint = (DataPoint)o;
            int n;
            if (E.b(this.bKy, dataPoint.bKy) && this.bKz == dataPoint.bKz && this.bKA == dataPoint.bKA && Arrays.equals(this.bKB, dataPoint.bKB) && E.b(this.bKC, dataPoint.bKC)) {
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
    
    public final long getTimestampNanos() {
        return this.bKz;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.bKy, this.bKz, this.bKA });
    }
    
    @Override
    public final String toString() {
        return String.format("DataPoint{%s@[%s, %s,raw=%s,insert=%s](%s %s)}", Arrays.toString(this.bKB), this.bKA, this.bKz, this.bKD, this.bKE, this.bKy, this.bKC);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        d.a(this, parcel, n);
    }
}
