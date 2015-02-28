package com.google.android.gms.fitness.data;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class Session implements SafeParcelable
{
    public static final Parcelable$Creator<Session> CREATOR;
    private final Application bKJ;
    private final long bKr;
    private final long bKs;
    private final int bKu;
    private final String bMi;
    private final String bMj;
    private final int btV;
    private final String mName;
    
    static {
        CREATOR = (Parcelable$Creator)new q();
    }
    
    Session(final int btV, final long bKr, final long bKs, final String mName, final String bMi, final String bMj, final int bKu, final Application bkj) {
        this.btV = btV;
        this.bKr = bKr;
        this.bKs = bKs;
        this.mName = mName;
        this.bMi = bMi;
        this.bMj = bMj;
        this.bKu = bKu;
        this.bKJ = bkj;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final Application MI() {
        return this.bKJ;
    }
    
    public final String MT() {
        return this.bMi;
    }
    
    public final int Mt() {
        return this.bKu;
    }
    
    public final long Mx() {
        return this.bKr;
    }
    
    public final long My() {
        return this.bKs;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o != this) {
            final boolean b = o instanceof Session;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final Session session = (Session)o;
            int n;
            if (this.bKr == session.bKr && this.bKs == session.bKs && E.b(this.mName, session.mName) && E.b(this.bMi, session.bMi) && E.b(this.bMj, session.bMj) && E.b(this.bKJ, session.bKJ) && this.bKu == session.bKu) {
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
    
    public final String getDescription() {
        return this.bMj;
    }
    
    public final String getName() {
        return this.mName;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.bKr, this.bKs, this.bMi });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("startTime", this.bKr).e("endTime", this.bKs).e("name", this.mName).e("identifier", this.bMi).e("description", this.bMj).e("activity", this.bKu).e("application", this.bKJ).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        q.a(this, parcel, n);
    }
}
