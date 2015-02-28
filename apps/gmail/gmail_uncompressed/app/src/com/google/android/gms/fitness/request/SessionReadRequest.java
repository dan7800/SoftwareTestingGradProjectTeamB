package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class SessionReadRequest implements SafeParcelable
{
    public static final Parcelable$Creator<SessionReadRequest> CREATOR;
    private final String bIT;
    private final List<DataType> bKq;
    private final long bKr;
    private final long bKs;
    private final boolean bMA;
    private final String bME;
    private boolean bMF;
    private final List<String> bMG;
    private final List<DataSource> bMp;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new D();
    }
    
    SessionReadRequest(final int btV, final String bme, final String bit, final long bKr, final long bKs, final List<DataType> list, final List<DataSource> list2, final boolean bmf, final boolean bma, final List<String> bmg) {
        this.btV = btV;
        this.bME = bme;
        this.bIT = bit;
        this.bKr = bKr;
        this.bKs = bKs;
        this.bKq = Collections.unmodifiableList((List<? extends DataType>)list);
        this.bMp = Collections.unmodifiableList((List<? extends DataSource>)list2);
        this.bMF = bmf;
        this.bMA = bma;
        this.bMG = bmg;
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
    
    public final boolean Nk() {
        return this.bMA;
    }
    
    public final String Nq() {
        return this.bME;
    }
    
    public final String Nr() {
        return this.bIT;
    }
    
    public final List<String> Ns() {
        return this.bMG;
    }
    
    public final boolean Nt() {
        return this.bMF;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            final boolean b = o instanceof SessionReadRequest;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final SessionReadRequest sessionReadRequest = (SessionReadRequest)o;
            int n;
            if (E.b(this.bME, sessionReadRequest.bME) && this.bIT.equals(sessionReadRequest.bIT) && this.bKr == sessionReadRequest.bKr && this.bKs == sessionReadRequest.bKs && E.b(this.bKq, sessionReadRequest.bKq) && E.b(this.bMp, sessionReadRequest.bMp) && this.bMF == sessionReadRequest.bMF && this.bMG.equals(sessionReadRequest.bMG) && this.bMA == sessionReadRequest.bMA) {
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
        return Arrays.hashCode(new Object[] { this.bME, this.bIT, this.bKr, this.bKs });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("sessionName", this.bME).e("sessionId", this.bIT).e("startTimeMillis", this.bKr).e("endTimeMillis", this.bKs).e("dataTypes", this.bKq).e("dataSources", this.bMp).e("sessionsFromAllApps", this.bMF).e("excludedPackages", this.bMG).e("useServer", this.bMA).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        D.a(this, parcel);
    }
}
