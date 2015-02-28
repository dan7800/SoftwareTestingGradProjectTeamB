package com.google.android.gms.fitness.result;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.fitness.data.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class DataReadResult implements t, SafeParcelable
{
    public static final Parcelable$Creator<DataReadResult> CREATOR;
    private final Status bHX;
    private final List<DataSource> bKH;
    private final List<DataSet> bKv;
    private final List<Bucket> bMW;
    private int bMX;
    private final List<DataType> bMY;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    DataReadResult(final int btV, final List<RawDataSet> list, final Status bhx, final List<RawBucket> list2, final int bmx, final List<DataSource> bkh, final List<DataType> bmy) {
        this.btV = btV;
        this.bHX = bhx;
        this.bMX = bmx;
        this.bKH = bkh;
        this.bMY = bmy;
        this.bKv = new ArrayList<DataSet>(list.size());
        final Iterator<RawDataSet> iterator = list.iterator();
        while (iterator.hasNext()) {
            this.bKv.add(new DataSet(iterator.next(), bkh, bmy));
        }
        this.bMW = new ArrayList<Bucket>(list2.size());
        final Iterator<RawBucket> iterator2 = list2.iterator();
        while (iterator2.hasNext()) {
            this.bMW.add(new Bucket(iterator2.next(), bkh, bmy));
        }
    }
    
    @Override
    public final Status Jk() {
        return this.bHX;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    final List<DataSource> MH() {
        return this.bKH;
    }
    
    public final int NH() {
        return this.bMX;
    }
    
    final List<RawBucket> NI() {
        final ArrayList<RawBucket> list = new ArrayList<RawBucket>(this.bMW.size());
        final Iterator<Bucket> iterator = this.bMW.iterator();
        while (iterator.hasNext()) {
            list.add(new RawBucket(iterator.next(), this.bKH, this.bMY));
        }
        return list;
    }
    
    final List<RawDataSet> NJ() {
        final ArrayList<RawDataSet> list = new ArrayList<RawDataSet>(this.bKv.size());
        final Iterator<DataSet> iterator = this.bKv.iterator();
        while (iterator.hasNext()) {
            list.add(new RawDataSet(iterator.next(), this.bKH, this.bMY));
        }
        return list;
    }
    
    final List<DataType> NK() {
        return this.bMY;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            final boolean b = o instanceof DataReadResult;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final DataReadResult dataReadResult = (DataReadResult)o;
            int n;
            if (this.bHX.equals(dataReadResult.bHX) && E.b(this.bKv, dataReadResult.bKv) && E.b(this.bMW, dataReadResult.bMW)) {
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
        return Arrays.hashCode(new Object[] { this.bHX, this.bKv, this.bMW });
    }
    
    @Override
    public String toString() {
        final F e = E.ad(this).e("status", this.bHX);
        Object o;
        if (this.bKv.size() > 5) {
            o = this.bKv.size() + " data sets";
        }
        else {
            o = this.bKv;
        }
        final F e2 = e.e("dataSets", o);
        Object o2;
        if (this.bMW.size() > 5) {
            o2 = this.bMW.size() + " buckets";
        }
        else {
            o2 = this.bMW;
        }
        return e2.e("buckets", o2).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel, n);
    }
}
