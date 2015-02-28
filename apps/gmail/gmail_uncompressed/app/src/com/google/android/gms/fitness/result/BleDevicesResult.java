package com.google.android.gms.fitness.result;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class BleDevicesResult implements t, SafeParcelable
{
    public static final Parcelable$Creator<BleDevicesResult> CREATOR;
    private final Status bHX;
    private final List<BleDevice> bMV;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    BleDevicesResult(final int btV, final List<BleDevice> list, final Status bhx) {
        this.btV = btV;
        this.bMV = Collections.unmodifiableList((List<? extends BleDevice>)list);
        this.bHX = bhx;
    }
    
    @Override
    public final Status Jk() {
        return this.bHX;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final List<BleDevice> NG() {
        return this.bMV;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            final boolean b = o instanceof BleDevicesResult;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final BleDevicesResult bleDevicesResult = (BleDevicesResult)o;
            int n;
            if (this.bHX.equals(bleDevicesResult.bHX) && E.b(this.bMV, bleDevicesResult.bMV)) {
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
        return Arrays.hashCode(new Object[] { this.bHX, this.bMV });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("status", this.bHX).e("bleDevices", this.bMV).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel, n);
    }
}
