package com.google.android.gms.fitness.data;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class Subscription implements SafeParcelable
{
    public static final Parcelable$Creator<Subscription> CREATOR;
    private final DataType bKF;
    private final DataSource bKy;
    private final long bMk;
    private final int bMl;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new s();
    }
    
    Subscription(final int btV, final DataSource bKy, final DataType bkf, final long bMk, final int bMl) {
        this.btV = btV;
        this.bKy = bKy;
        this.bKF = bkf;
        this.bMk = bMk;
        this.bMl = bMl;
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
    
    public final DataType MW() {
        if (this.bKF == null) {
            return this.bKy.MF();
        }
        return this.bKF;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            final boolean b = o instanceof Subscription;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final Subscription subscription = (Subscription)o;
            int n;
            if (E.b(this.bKy, subscription.bKy) && E.b(this.bKF, subscription.bKF) && this.bMk == subscription.bMk && this.bMl == subscription.bMl) {
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
        return Arrays.hashCode(new Object[] { this.bKy, this.bKy, this.bMk, this.bMl });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("dataSource", this.bKy).e("dataType", this.bKF).e("samplingIntervalMicros", this.bMk).e("accuracyMode", this.bMl).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        s.a(this, parcel, n);
    }
}
