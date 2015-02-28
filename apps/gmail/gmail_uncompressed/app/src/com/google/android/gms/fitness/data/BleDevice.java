package com.google.android.gms.fitness.data;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.internal.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class BleDevice implements SafeParcelable
{
    public static final Parcelable$Creator<BleDevice> CREATOR;
    private final String bKo;
    private final List<String> bKp;
    private final List<DataType> bKq;
    private final int btV;
    private final String mName;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    BleDevice(final int btV, final String bKo, final String mName, final List<String> list, final List<DataType> list2) {
        this.btV = btV;
        this.bKo = bKo;
        this.mName = mName;
        this.bKp = Collections.unmodifiableList((List<? extends String>)list);
        this.bKq = Collections.unmodifiableList((List<? extends DataType>)list2);
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final List<String> Mq() {
        return this.bKp;
    }
    
    public final List<DataType> Mr() {
        return this.bKq;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o != this) {
            final boolean b = o instanceof BleDevice;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final BleDevice bleDevice = (BleDevice)o;
            int n;
            if (this.mName.equals(bleDevice.mName) && this.bKo.equals(bleDevice.bKo) && au.b(bleDevice.bKp, this.bKp) && au.b(this.bKq, bleDevice.bKq)) {
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
    
    public final String getAddress() {
        return this.bKo;
    }
    
    public final String getName() {
        return this.mName;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.mName, this.bKo, this.bKp, this.bKq });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("name", this.mName).e("address", this.bKo).e("dataTypes", this.bKq).e("supportedProfiles", this.bKp).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel);
    }
}
