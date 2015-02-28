package com.google.android.gms.fitness.data;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public final class RawDataSet implements SafeParcelable
{
    public static final Parcelable$Creator<RawDataSet> CREATOR;
    final boolean bKx;
    final int bMe;
    final int bMg;
    final List<RawDataPoint> bMh;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new o();
    }
    
    RawDataSet(final int btV, final int bMe, final int bMg, final List<RawDataPoint> bMh, final boolean bKx) {
        this.btV = btV;
        this.bMe = bMe;
        this.bMg = bMg;
        this.bMh = bMh;
        this.bKx = bKx;
    }
    
    public RawDataSet(final DataSet set, final List<DataSource> list, final List<DataType> list2) {
        this.btV = 2;
        this.bMh = set.O(list);
        this.bKx = set.Mw();
        this.bMe = t.a(set.MA(), list);
        this.bMg = t.a(set.MF(), list2);
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this != o) {
            final boolean b = o instanceof RawDataSet;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final RawDataSet set = (RawDataSet)o;
            int n;
            if (this.bMe == set.bMe && this.bMg == set.bMg && this.bKx == set.bKx && E.b(this.bMh, set.bMh)) {
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
        return Arrays.hashCode(new Object[] { this.bMe, this.bMg });
    }
    
    @Override
    public final String toString() {
        return String.format("RawDataSet{%s@[%s, %s]}", this.bMe, this.bMg, this.bMh);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        o.a(this, parcel);
    }
}
