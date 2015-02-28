package com.google.android.gms.fitness.data;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class p implements SafeParcelable
{
    public static final Parcelable$Creator<p> CREATOR;
    private final Session bKt;
    private final DataSet bMo;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new r();
    }
    
    p(final int btV, final Session bKt, final DataSet bMo) {
        this.btV = btV;
        this.bKt = bKt;
        this.bMo = bMo;
    }
    
    public final Session Ms() {
        return this.bKt;
    }
    
    public final DataSet Nb() {
        return this.bMo;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o != this) {
            final boolean b = o instanceof p;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final p p = (p)o;
            int n;
            if (E.b(this.bKt, p.bKt) && E.b(this.bMo, p.bMo)) {
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
        return Arrays.hashCode(new Object[] { this.bKt, this.bMo });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("session", this.bKt).e("dataSet", this.bMo).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        r.a(this, parcel, n);
    }
}
