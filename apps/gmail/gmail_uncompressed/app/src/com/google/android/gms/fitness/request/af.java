package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class af implements SafeParcelable
{
    public static final Parcelable$Creator<af> CREATOR;
    private final String bML;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new g();
    }
    
    af(final int btV, final String bml) {
        this.btV = btV;
        this.bML = bml;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public final String getDeviceAddress() {
        return this.bML;
    }
    
    @Override
    public String toString() {
        return String.format("UnclaimBleDeviceRequest{%s}", this.bML);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        g.a(this, parcel);
    }
}
