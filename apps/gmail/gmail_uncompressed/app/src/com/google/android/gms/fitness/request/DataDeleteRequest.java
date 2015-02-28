package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class DataDeleteRequest implements SafeParcelable
{
    public static final Parcelable$Creator<DataDeleteRequest> CREATOR;
    private final List<DataType> bKq;
    private final long bKr;
    private final long bKs;
    private final List<DataSource> bMp;
    private final List<Session> bMq;
    private final boolean bMr;
    private final boolean bMs;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new k();
    }
    
    DataDeleteRequest(final int btV, final long bKr, final long bKs, final List<DataSource> list, final List<DataType> list2, final List<Session> bMq, final boolean bMr, final boolean bMs) {
        this.btV = btV;
        this.bKr = bKr;
        this.bKs = bKs;
        this.bMp = Collections.unmodifiableList((List<? extends DataSource>)list);
        this.bKq = Collections.unmodifiableList((List<? extends DataType>)list2);
        this.bMq = bMq;
        this.bMr = bMr;
        this.bMs = bMs;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final List<DataType> Mr() {
        return this.bKq;
    }
    
    public final long Mx() {
        return this.bKr;
    }
    
    public final long My() {
        return this.bKs;
    }
    
    public final List<DataSource> Nc() {
        return this.bMp;
    }
    
    public final List<Session> Nd() {
        return this.bMq;
    }
    
    public final boolean Ne() {
        return this.bMr;
    }
    
    public final boolean Nf() {
        return this.bMs;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o != this) {
            final boolean b = o instanceof DataDeleteRequest;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final DataDeleteRequest dataDeleteRequest = (DataDeleteRequest)o;
            int n;
            if (this.bKr == dataDeleteRequest.bKr && this.bKs == dataDeleteRequest.bKs && E.b(this.bMp, dataDeleteRequest.bMp) && E.b(this.bKq, dataDeleteRequest.bKq) && E.b(this.bMq, dataDeleteRequest.bMq) && this.bMr == dataDeleteRequest.bMr && this.bMs == dataDeleteRequest.bMs) {
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
        return Arrays.hashCode(new Object[] { this.bKr, this.bKs });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("startTimeMillis", this.bKr).e("endTimeMillis", this.bKs).e("dataSources", this.bMp).e("dateTypes", this.bKq).e("sessions", this.bMq).e("deleteAllData", this.bMr).e("deleteAllSessions", this.bMs).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        k.a(this, parcel);
    }
}
