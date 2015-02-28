package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class ig implements SafeParcelable
{
    public static final Parcelable$Creator<ig> CREATOR;
    private String bTb;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new C();
    }
    
    public ig() {
        this(1, null);
    }
    
    ig(final int btV, final String bTb) {
        this.btV = btV;
        this.bTb = bTb;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final String QV() {
        return this.bTb;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        return o == this || (o instanceof ig && D.g(this.bTb, ((ig)o).bTb));
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.bTb });
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        C.a(this, parcel);
    }
}
