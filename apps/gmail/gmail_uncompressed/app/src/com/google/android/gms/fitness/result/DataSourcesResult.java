package com.google.android.gms.fitness.result;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class DataSourcesResult implements t, SafeParcelable
{
    public static final Parcelable$Creator<DataSourcesResult> CREATOR;
    private final Status bHX;
    private final List<DataSource> bMp;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    DataSourcesResult(final int btV, final List<DataSource> list, final Status bhx) {
        this.btV = btV;
        this.bMp = Collections.unmodifiableList((List<? extends DataSource>)list);
        this.bHX = bhx;
    }
    
    @Override
    public final Status Jk() {
        return this.bHX;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final List<DataSource> Nc() {
        return this.bMp;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            final boolean b = o instanceof DataSourcesResult;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final DataSourcesResult dataSourcesResult = (DataSourcesResult)o;
            int n;
            if (this.bHX.equals(dataSourcesResult.bHX) && E.b(this.bMp, dataSourcesResult.bMp)) {
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
        return Arrays.hashCode(new Object[] { this.bHX, this.bMp });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("status", this.bHX).e("dataSets", this.bMp).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.a(this, parcel, n);
    }
}
