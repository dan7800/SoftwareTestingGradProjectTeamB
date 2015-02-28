package com.google.android.gms.internal;

import com.google.android.gms.location.copresence.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class mt extends a implements SafeParcelable
{
    public static final Parcelable$Creator<mt> CREATOR;
    private final boolean bUG;
    private final boolean bUH;
    private final int bUI;
    private final boolean bUJ;
    private final boolean bUK;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new aO();
    }
    
    mt(final int btV, final boolean bug, final boolean buh, final int bui, final boolean buj, final boolean buk) {
        this.btV = btV;
        this.bUG = bug;
        this.bUH = buh;
        this.bUI = bui;
        this.bUJ = buj;
        this.bUK = buk;
    }
    
    public mt(final boolean b, final boolean b2, final int n, final boolean b3, final boolean b4) {
        this(1, b, b2, n, b3, b4);
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final boolean Rl() {
        return this.bUH;
    }
    
    public final int Rm() {
        return this.bUI;
    }
    
    public final boolean Rn() {
        return this.bUJ;
    }
    
    public final boolean Ro() {
        return this.bUK;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            if (o == null) {
                return false;
            }
            if (this.getClass() != o.getClass()) {
                return false;
            }
            final mt mt = (mt)o;
            if (this.bUG != mt.bUG || this.bUH != mt.bUH || this.bUI != mt.bUI || this.bUJ != mt.bUJ || this.bUK != mt.bUK) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.bUG, this.bUH });
    }
    
    public final boolean isActive() {
        return this.bUG;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        aO.a(this, parcel);
    }
}
