package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class x implements SafeParcelable
{
    public static final Parcelable$Creator<x> CREATOR;
    private final String bMi;
    private final int btV;
    private final String mName;
    
    static {
        CREATOR = (Parcelable$Creator)new G();
    }
    
    x(final int btV, final String mName, final String bMi) {
        this.btV = btV;
        this.mName = mName;
        this.bMi = bMi;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final String MT() {
        return this.bMi;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o != this) {
            final boolean b = o instanceof x;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final x x = (x)o;
            int n;
            if (E.b(this.mName, x.mName) && E.b(this.bMi, x.bMi)) {
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
    
    public final String getName() {
        return this.mName;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.mName, this.bMi });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("name", this.mName).e("identifier", this.bMi).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        G.a(this, parcel);
    }
}
