package com.google.android.gms.fitness.data;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.internal.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public final class Device implements SafeParcelable
{
    public static final Parcelable$Creator<Device> CREATOR;
    private final String bLv;
    private final String bLw;
    private final String bLx;
    private final int bLy;
    private final int btV;
    private final String bud;
    private final int bwX;
    
    static {
        CREATOR = (Parcelable$Creator)new h();
    }
    
    Device(final int btV, final String s, final String s2, final String s3, final int bwX, final int bLy) {
        this.btV = btV;
        this.bLv = G.ae(s);
        this.bLw = G.ae(s2);
        this.bud = "";
        this.bLx = G.ae(s3);
        this.bwX = bwX;
        this.bLy = bLy;
    }
    
    private Device(final String s, final String s2, final String s3, final int n) {
        this(s, s2, s3, n, '\0');
    }
    
    private Device(final String s, final String s2, final String s3, final int n, final byte b) {
        this(s, s2, s3, n);
    }
    
    private Device(final String s, final String s2, final String s3, final int n, final char c) {
        this(1, s, s2, s3, n, 0);
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final int MP() {
        return this.bLy;
    }
    
    final String MQ() {
        return String.format("%s:%s:%s", this.bLv, this.bLw, this.bLx);
    }
    
    final Device MR() {
        final String gr = av.gr(this.bLv);
        final String gr2 = av.gr(this.bLw);
        av.gr(this.bud);
        return new Device(gr, gr2, this.bLx, this.bwX, (byte)0);
    }
    
    public final String MS() {
        int n = 1;
        if (!av.Rf()) {
            if (this.bLy != n) {
                n = 0;
            }
            if (n == 0) {
                return av.gr(this.bLx);
            }
        }
        return this.bLx;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this != o) {
            final boolean b = o instanceof Device;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final Device device = (Device)o;
            int n;
            if (E.b(this.bLv, device.bLv) && E.b(this.bLw, device.bLw) && E.b(this.bud, device.bud) && E.b(this.bLx, device.bLx) && this.bwX == device.bwX && this.bLy == device.bLy) {
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
    
    public final String getManufacturer() {
        return this.bLv;
    }
    
    public final String getModel() {
        return this.bLw;
    }
    
    public final int getType() {
        return this.bwX;
    }
    
    public final String getVersion() {
        return this.bud;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.bLv, this.bLw, this.bud, this.bLx, this.bwX });
    }
    
    public final String ln() {
        return this.bLx;
    }
    
    @Override
    public final String toString() {
        return String.format("Device{%s:%s:%s:%s}", this.MQ(), this.bud, this.bwX, this.bLy);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        h.a(this, parcel);
    }
}
