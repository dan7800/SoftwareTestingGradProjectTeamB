package com.google.android.gms.fitness.service;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class FitnessSensorServiceRequest implements SafeParcelable
{
    public static final Parcelable$Creator<FitnessSensorServiceRequest> CREATOR;
    private final DataSource bKy;
    private final j bMN;
    private final long bNb;
    private final long bNc;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    FitnessSensorServiceRequest(final int btV, final DataSource bKy, final IBinder binder, final long bNb, final long bNc) {
        this.btV = btV;
        this.bKy = bKy;
        this.bMN = k.x(binder);
        this.bNb = bNb;
        this.bNc = bNc;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final DataSource MA() {
        return this.bKy;
    }
    
    public final long MV() {
        return this.bNb;
    }
    
    final IBinder NF() {
        return this.bMN.asBinder();
    }
    
    public final long NN() {
        return this.bNc;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            final boolean b = o instanceof FitnessSensorServiceRequest;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final FitnessSensorServiceRequest fitnessSensorServiceRequest = (FitnessSensorServiceRequest)o;
            int n;
            if (E.b(this.bKy, fitnessSensorServiceRequest.bKy) && this.bNb == fitnessSensorServiceRequest.bNb && this.bNc == fitnessSensorServiceRequest.bNc) {
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
        return Arrays.hashCode(new Object[] { this.bKy, this.bNb, this.bNc });
    }
    
    @Override
    public String toString() {
        return String.format("FitnessSensorServiceRequest{%s}", this.bKy);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel, n);
    }
}
