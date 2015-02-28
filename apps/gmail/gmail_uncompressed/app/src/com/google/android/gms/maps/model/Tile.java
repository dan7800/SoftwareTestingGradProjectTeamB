package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;
import com.google.android.gms.maps.a.*;

public final class Tile implements SafeParcelable
{
    public static final q CREATOR;
    private final int btV;
    public final byte[] cfR;
    public final int height;
    public final int width;
    
    static {
        CREATOR = new q();
    }
    
    public Tile() {
        this(1, -1, -1, null);
    }
    
    Tile(final int btV, final int width, final int height, final byte[] cfR) {
        this.btV = btV;
        this.width = width;
        this.height = height;
        this.cfR = cfR;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        if (b.Ul()) {
            final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
            com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, this.btV);
            com.google.android.gms.common.internal.safeparcel.b.d(parcel, 2, this.width);
            com.google.android.gms.common.internal.safeparcel.b.d(parcel, 3, this.height);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.cfR);
            com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
            return;
        }
        q.a(this, parcel);
    }
}
