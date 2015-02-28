package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class SessionInsertRequest implements SafeParcelable
{
    public static final Parcelable$Creator<SessionInsertRequest> CREATOR;
    private final Session bKt;
    private final List<DataSet> bKv;
    private final List<DataPoint> bMD;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new C();
    }
    
    SessionInsertRequest(final int btV, final Session bKt, final List<DataSet> list, final List<DataPoint> list2) {
        this.btV = btV;
        this.bKt = bKt;
        this.bKv = Collections.unmodifiableList((List<? extends DataSet>)list);
        this.bMD = Collections.unmodifiableList((List<? extends DataPoint>)list2);
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final Session Ms() {
        return this.bKt;
    }
    
    public final List<DataSet> Mu() {
        return this.bKv;
    }
    
    public final List<DataPoint> Np() {
        return this.bMD;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o != this) {
            final boolean b = o instanceof SessionInsertRequest;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final SessionInsertRequest sessionInsertRequest = (SessionInsertRequest)o;
            int n;
            if (E.b(this.bKt, sessionInsertRequest.bKt) && E.b(this.bKv, sessionInsertRequest.bKv) && E.b(this.bMD, sessionInsertRequest.bMD)) {
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
        return Arrays.hashCode(new Object[] { this.bKt, this.bKv, this.bMD });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("session", this.bKt).e("dataSets", this.bKv).e("aggregateDataPoints", this.bMD).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        C.a(this, parcel, n);
    }
}
