package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.safeparcel.*;
import android.app.*;
import com.google.android.gms.location.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class n implements SafeParcelable
{
    public static final Parcelable$Creator<n> CREATOR;
    private final PendingIntent bBR;
    private final DataType bKF;
    private final DataSource bKy;
    private j bMN;
    int bMO;
    int bMP;
    private final long bMQ;
    private final long bMR;
    private final List<LocationRequest> bMS;
    private final long bMT;
    private final List bMU;
    private final long bMk;
    private final int bMl;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new A();
    }
    
    n(final int btV, final DataSource bKy, final DataType bkf, final IBinder binder, final int n, final int n2, long bMk, long bmq, final PendingIntent bbr, final long bmr, final int bMl, final List<LocationRequest> bms, final long bmt) {
        this.btV = btV;
        this.bKy = bKy;
        this.bKF = bkf;
        j x;
        if (binder == null) {
            x = null;
        }
        else {
            x = k.x(binder);
        }
        this.bMN = x;
        if (bMk == 0L) {
            bMk = n;
        }
        this.bMk = bMk;
        this.bMR = bmr;
        if (bmq == 0L) {
            bmq = n2;
        }
        this.bMQ = bmq;
        this.bMS = bms;
        this.bBR = bbr;
        this.bMl = bMl;
        this.bMU = Collections.emptyList();
        this.bMT = bmt;
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
    
    public final int MU() {
        return this.bMl;
    }
    
    public final long MV() {
        return this.bMk;
    }
    
    public final PendingIntent NA() {
        return this.bBR;
    }
    
    public final long NB() {
        return this.bMR;
    }
    
    public final long NC() {
        return this.bMQ;
    }
    
    public final List<LocationRequest> ND() {
        return this.bMS;
    }
    
    public final long NE() {
        return this.bMT;
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
    public boolean equals(final Object o) {
        if (this != o) {
            final boolean b = o instanceof n;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final n n = (n)o;
            int n2;
            if (E.b(this.bKy, n.bKy) && E.b(this.bKF, n.bKF) && this.bMk == n.bMk && this.bMR == n.bMR && this.bMQ == n.bMQ && this.bMl == n.bMl && E.b(this.bMS, n.bMS)) {
                n2 = 1;
            }
            else {
                n2 = 0;
            }
            b2 = false;
            if (n2 == 0) {
                return b2;
            }
        }
        return true;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.bKy, this.bKF, this.bMN, this.bMk, this.bMR, this.bMQ, this.bMl, this.bMS });
    }
    
    @Override
    public String toString() {
        return String.format("SensorRegistrationRequest{type %s source %s interval %s fastest %s latency %s}", this.bKF, this.bKy, this.bMk, this.bMR, this.bMQ);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        A.a(this, parcel, n);
    }
}
