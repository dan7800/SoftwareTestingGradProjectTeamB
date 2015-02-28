package com.google.android.gms.fitness.result;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class SessionStopResult implements t, SafeParcelable
{
    public static final Parcelable$Creator<SessionStopResult> CREATOR;
    private final Status bHX;
    private final List<Session> bMq;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new g();
    }
    
    SessionStopResult(final int btV, final Status bhx, final List<Session> list) {
        this.btV = btV;
        this.bHX = bhx;
        this.bMq = Collections.unmodifiableList((List<? extends Session>)list);
    }
    
    @Override
    public final Status Jk() {
        return this.bHX;
    }
    
    final int Jt() {
        return this.btV;
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
            final boolean b = o instanceof SessionStopResult;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final SessionStopResult sessionStopResult = (SessionStopResult)o;
            int n;
            if (this.bHX.equals(sessionStopResult.bHX) && E.b(this.bMq, sessionStopResult.bMq)) {
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
        return Arrays.hashCode(new Object[] { this.bHX, this.bMq });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("status", this.bHX).e("sessions", this.bMq).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        g.a(this, parcel, n);
    }
}
