package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public final class md implements SafeParcelable
{
    public static final Parcelable$Creator<md> CREATOR;
    public final ArrayList<mp> bUv;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new aG();
    }
    
    public md() {
        this.btV = 1;
        this.bUv = new ArrayList<mp>();
    }
    
    md(final int btV, final ArrayList<mp> bUv) {
        this.btV = btV;
        this.bUv = bUv;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        aG.a(this, parcel);
    }
}
