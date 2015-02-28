package com.google.android.gms.fitness.data;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public final class DataSet implements SafeParcelable
{
    public static final Parcelable$Creator<DataSet> CREATOR;
    private final DataType bKF;
    private final List<DataPoint> bKG;
    private final List<DataSource> bKH;
    private boolean bKx;
    private final DataSource bKy;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new e();
    }
    
    DataSet(final int btV, final DataSource bKy, final DataType bkf, final List<RawDataPoint> list, List<DataSource> singletonList, final boolean bKx) {
        this.bKx = false;
        this.btV = btV;
        this.bKy = bKy;
        this.bKF = bkf;
        this.bKx = bKx;
        this.bKG = new ArrayList<DataPoint>(list.size());
        if (btV < 2) {
            singletonList = Collections.singletonList(bKy);
        }
        this.bKH = singletonList;
        final Iterator<RawDataPoint> iterator = list.iterator();
        while (iterator.hasNext()) {
            this.bKG.add(new DataPoint(this.bKH, iterator.next()));
        }
    }
    
    public DataSet(final RawDataSet set, final List<DataSource> list, final List<DataType> list2) {
        this(3, c(list, set.bMe), c(list2, set.bMg), set.bMh, list, set.bKx);
    }
    
    private static <T> T c(final List<T> list, final int n) {
        if (n >= 0 && n < list.size()) {
            return list.get(n);
        }
        return null;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final DataSource MA() {
        return this.bKy;
    }
    
    public final DataType MF() {
        return this.bKF;
    }
    
    final List<RawDataPoint> MG() {
        return this.O(this.bKH);
    }
    
    final List<DataSource> MH() {
        return this.bKH;
    }
    
    public final boolean Mw() {
        return this.bKx;
    }
    
    final List<RawDataPoint> O(final List<DataSource> list) {
        final ArrayList<RawDataPoint> list2 = new ArrayList<RawDataPoint>(this.bKG.size());
        final Iterator<DataPoint> iterator = this.bKG.iterator();
        while (iterator.hasNext()) {
            list2.add(new RawDataPoint(iterator.next(), list));
        }
        return list2;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o != this) {
            final boolean b = o instanceof DataSet;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final DataSet set = (DataSet)o;
            int n;
            if (E.b(this.bKF, set.bKF) && E.b(this.bKy, set.bKy) && E.b(this.bKG, set.bKG) && this.bKx == set.bKx) {
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
        return Arrays.hashCode(new Object[] { this.bKF, this.bKy });
    }
    
    @Override
    public final String toString() {
        Object o = this.MG();
        final Object[] array = { this.bKy.toDebugString(), null };
        if (this.bKG.size() >= 10) {
            o = String.format("%d data points, first 5: %s", this.bKG.size(), ((List)o).subList(0, 5));
        }
        array[1] = o;
        return String.format("DataSet{%s %s}", array);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        e.a(this, parcel, n);
    }
}
