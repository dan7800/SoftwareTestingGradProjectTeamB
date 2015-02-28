package com.google.android.gms.fitness.result;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class SessionReadResult implements t, SafeParcelable
{
    public static final Parcelable$Creator<SessionReadResult> CREATOR;
    private final Status bHX;
    private final List<Session> bMq;
    private final List<p> bNa;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new f();
    }
    
    SessionReadResult(final int btV, final List<Session> bMq, final List<p> list, final Status bhx) {
        this.btV = btV;
        this.bMq = bMq;
        this.bNa = Collections.unmodifiableList((List<? extends p>)list);
        this.bHX = bhx;
    }
    
    @Override
    public final Status Jk() {
        return this.bHX;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final List<p> NM() {
        return this.bNa;
    }
    
    public final List<Session> Nd() {
        return this.bMq;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            final boolean b = o instanceof SessionReadResult;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final SessionReadResult sessionReadResult = (SessionReadResult)o;
            int n;
            if (this.bHX.equals(sessionReadResult.bHX) && E.b(this.bMq, sessionReadResult.bMq) && E.b(this.bNa, sessionReadResult.bNa)) {
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
        return Arrays.hashCode(new Object[] { this.bHX, this.bMq, this.bNa });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("status", this.bHX).e("sessions", this.bMq).e("sessionDataSets", this.bNa).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        f.a(this, parcel, n);
    }
}
