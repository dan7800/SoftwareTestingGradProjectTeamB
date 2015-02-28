package com.google.android.gms.fitness.data;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.concurrent.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public final class RawBucket implements SafeParcelable
{
    public static final Parcelable$Creator<RawBucket> CREATOR;
    final long bKr;
    final long bKs;
    final Session bKt;
    final List<RawDataSet> bKv;
    final int bKw;
    final boolean bKx;
    final int bMd;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new m();
    }
    
    RawBucket(final int btV, final long bKr, final long bKs, final Session bKt, final int bMd, final List<RawDataSet> bKv, final int bKw, final boolean bKx) {
        this.btV = btV;
        this.bKr = bKr;
        this.bKs = bKs;
        this.bKt = bKt;
        this.bMd = bMd;
        this.bKv = bKv;
        this.bKw = bKw;
        this.bKx = bKx;
    }
    
    public RawBucket(final Bucket bucket, final List<DataSource> list, final List<DataType> list2) {
        this.btV = 2;
        this.bKr = bucket.b(TimeUnit.MILLISECONDS);
        this.bKs = bucket.c(TimeUnit.MILLISECONDS);
        this.bKt = bucket.Ms();
        this.bMd = bucket.Mt();
        this.bKw = bucket.Mv();
        this.bKx = bucket.Mw();
        final List<DataSet> mu = bucket.Mu();
        this.bKv = new ArrayList<RawDataSet>(mu.size());
        final Iterator<DataSet> iterator = mu.iterator();
        while (iterator.hasNext()) {
            this.bKv.add(new RawDataSet(iterator.next(), list, list2));
        }
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this != o) {
            final boolean b = o instanceof RawBucket;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final RawBucket rawBucket = (RawBucket)o;
            int n;
            if (this.bKr == rawBucket.bKr && this.bKs == rawBucket.bKs && this.bMd == rawBucket.bMd && E.b(this.bKv, rawBucket.bKv) && this.bKw == rawBucket.bKw && this.bKx == rawBucket.bKx) {
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
        return Arrays.hashCode(new Object[] { this.bKr, this.bKs, this.bKw });
    }
    
    @Override
    public final String toString() {
        return E.ad(this).e("startTime", this.bKr).e("endTime", this.bKs).e("activity", this.bMd).e("dataSets", this.bKv).e("bucketType", this.bKw).e("serverHasMoreData", this.bKx).toString();
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        m.a(this, parcel, n);
    }
}
