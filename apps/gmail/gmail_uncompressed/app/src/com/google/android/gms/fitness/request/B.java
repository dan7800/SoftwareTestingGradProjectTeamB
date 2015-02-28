package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.fitness.data.*;
import android.os.*;

public class b implements SafeParcelable
{
    public static final Parcelable$Creator<b> CREATOR;
    private final String bML;
    private final BleDevice bMM;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new i();
    }
    
    b(final int btV, final String bml, final BleDevice bmm) {
        this.btV = btV;
        this.bML = bml;
        this.bMM = bmm;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final BleDevice Ny() {
        return this.bMM;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public final String getDeviceAddress() {
        return this.bML;
    }
    
    @Override
    public String toString() {
        return String.format("ClaimBleDeviceRequest{%s %s}", this.bML, this.bMM);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        i.a(this, parcel, n);
    }
}
