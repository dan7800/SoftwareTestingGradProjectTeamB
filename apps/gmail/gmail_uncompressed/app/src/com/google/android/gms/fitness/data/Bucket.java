package com.google.android.gms.fitness.data;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.concurrent.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class Bucket implements SafeParcelable
{
    public static final Parcelable$Creator<Bucket> CREATOR;
    private final long bKr;
    private final long bKs;
    private final Session bKt;
    private final int bKu;
    private final List<DataSet> bKv;
    private final int bKw;
    private boolean bKx;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    Bucket(final int btV, final long bKr, final long bKs, final Session bKt, final int bKu, final List<DataSet> bKv, final int bKw, final boolean bKx) {
        this.bKx = false;
        this.btV = btV;
        this.bKr = bKr;
        this.bKs = bKs;
        this.bKt = bKt;
        this.bKu = bKu;
        this.bKv = bKv;
        this.bKw = bKw;
        this.bKx = bKx;
    }
    
    public Bucket(final RawBucket rawBucket, final List<DataSource> list, final List<DataType> list2) {
        this(2, rawBucket.bKr, rawBucket.bKs, rawBucket.bKt, rawBucket.bMd, a(rawBucket.bKv, list, list2), rawBucket.bKw, rawBucket.bKx);
    }
    
    private static List<DataSet> a(final List<RawDataSet> list, final List<DataSource> list2, final List<DataType> list3) {
        final ArrayList<DataSet> list4 = new ArrayList<DataSet>(list.size());
        final Iterator<RawDataSet> iterator = list.iterator();
        while (iterator.hasNext()) {
            list4.add(new DataSet(iterator.next(), list2, list3));
        }
        return list4;
    }
    
    public static String eE(final int n) {
        switch (n) {
            default: {
                return "bug";
            }
            case 1: {
                return "time";
            }
            case 3: {
                return "type";
            }
            case 4: {
                return "segment";
            }
            case 2: {
                return "session";
            }
            case 0: {
                return "unknown";
            }
        }
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final Session Ms() {
        return this.bKt;
    }
    
    public final int Mt() {
        return this.bKu;
    }
    
    public final List<DataSet> Mu() {
        return this.bKv;
    }
    
    public final int Mv() {
        return this.bKw;
    }
    
    public final boolean Mw() {
        if (this.bKx) {
            return true;
        }
        final Iterator<DataSet> iterator = this.bKv.iterator();
        while (iterator.hasNext()) {
            if (iterator.next().Mw()) {
                return true;
            }
        }
        return false;
    }
    
    public final long Mx() {
        return this.bKr;
    }
    
    public final long My() {
        return this.bKs;
    }
    
    public final long b(final TimeUnit timeUnit) {
        return timeUnit.convert(this.bKr, TimeUnit.MILLISECONDS);
    }
    
    public final long c(final TimeUnit timeUnit) {
        return timeUnit.convert(this.bKs, TimeUnit.MILLISECONDS);
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o != this) {
            final boolean b = o instanceof Bucket;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final Bucket bucket = (Bucket)o;
            int n;
            if (this.bKr == bucket.bKr && this.bKs == bucket.bKs && this.bKu == bucket.bKu && E.b(this.bKv, bucket.bKv) && this.bKw == bucket.bKw && this.bKx == bucket.bKx) {
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
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.bKr, this.bKs, this.bKu, this.bKw });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("startTime", this.bKr).e("endTime", this.bKs).e("activity", this.bKu).e("dataSets", this.bKv).e("bucketType", eE(this.bKw)).e("serverHasMoreData", this.bKx).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.a(this, parcel, n);
    }
}
