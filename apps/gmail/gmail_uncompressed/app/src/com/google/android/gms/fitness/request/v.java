package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class v implements SafeParcelable
{
    public static final Parcelable$Creator<v> CREATOR;
    private final Session bKt;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new F();
    }
    
    v(final int btV, final Session bKt) {
        this.btV = btV;
        this.bKt = bKt;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final Session Ms() {
        return this.bKt;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        return o == this || (o instanceof v && E.b(this.bKt, ((v)o).bKt));
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.bKt });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("session", this.bKt).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        F.a(this, parcel, n);
    }
}
