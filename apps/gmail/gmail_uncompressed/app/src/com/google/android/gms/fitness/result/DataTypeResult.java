package com.google.android.gms.fitness.result;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class DataTypeResult implements t, SafeParcelable
{
    public static final Parcelable$Creator<DataTypeResult> CREATOR;
    private final Status bHX;
    private final DataType bKF;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
    }
    
    DataTypeResult(final int btV, final Status bhx, final DataType bkf) {
        this.btV = btV;
        this.bHX = bhx;
        this.bKF = bkf;
    }
    
    @Override
    public final Status Jk() {
        return this.bHX;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final DataType MF() {
        return this.bKF;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            final boolean b = o instanceof DataTypeResult;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final DataTypeResult dataTypeResult = (DataTypeResult)o;
            int n;
            if (this.bHX.equals(dataTypeResult.bHX) && E.b(this.bKF, dataTypeResult.bKF)) {
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
        return Arrays.hashCode(new Object[] { this.bHX, this.bKF });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("status", this.bHX).e("dataType", this.bKF).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        d.a(this, parcel, n);
    }
}
