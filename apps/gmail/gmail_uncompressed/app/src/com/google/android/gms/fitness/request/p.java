package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.safeparcel.*;
import android.app.*;
import com.google.android.gms.fitness.data.*;
import android.os.*;

public class p implements SafeParcelable
{
    public static final Parcelable$Creator<p> CREATOR;
    private final PendingIntent bBR;
    private final j bMN;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new B();
    }
    
    p(final int btV, final IBinder binder, final PendingIntent bbr) {
        this.btV = btV;
        j x;
        if (binder == null) {
            x = null;
        }
        else {
            x = k.x(binder);
        }
        this.bMN = x;
        this.bBR = bbr;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final PendingIntent NA() {
        return this.bBR;
    }
    
    final IBinder NF() {
        if (this.bMN == null) {
            return null;
        }
        return this.bMN.asBinder();
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public String toString() {
        return String.format("SensorUnregistrationRequest{%s}", this.bMN);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        B.a(this, parcel, n);
    }
}
