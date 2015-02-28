package com.google.android.gms.audiomodem;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class DsssEncoding implements SafeParcelable
{
    public static final Parcelable$Creator<DsssEncoding> CREATOR;
    private final int btV;
    private final int bwK;
    private final boolean bwL;
    private final boolean bwM;
    private final int bwN;
    private final int bwO;
    private final float bwP;
    private final int bwQ;
    private final float bwR;
    private final int bwS;
    private final int bwT;
    private final int bwU;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    DsssEncoding(final int btV, final int bwK, final boolean bwL, final boolean bwM, final int bwN, final int bwO, final float bwP, final int bwQ, final float bwR, final int bwS, final int bwT, final int bwU) {
        this.btV = btV;
        this.bwK = bwK;
        this.bwL = bwL;
        this.bwM = bwM;
        this.bwN = bwN;
        this.bwO = bwO;
        this.bwP = bwP;
        this.bwQ = bwQ;
        this.bwR = bwR;
        this.bwS = bwS;
        this.bwT = bwT;
        this.bwU = bwU;
    }
    
    public final float JA() {
        return this.bwP;
    }
    
    public final int JB() {
        return this.bwQ;
    }
    
    public final float JC() {
        return this.bwR;
    }
    
    public final int JD() {
        return this.bwS;
    }
    
    public final int JE() {
        return this.bwT;
    }
    
    public final int JF() {
        return this.bwU;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final int Jv() {
        return this.bwK;
    }
    
    public final boolean Jw() {
        return this.bwL;
    }
    
    public final boolean Jx() {
        return this.bwM;
    }
    
    public final int Jy() {
        return this.bwN;
    }
    
    public final int Jz() {
        return this.bwO;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            if (!(o instanceof DsssEncoding)) {
                return false;
            }
            final DsssEncoding dsssEncoding = (DsssEncoding)o;
            if (this.btV != dsssEncoding.btV || this.bwK != dsssEncoding.bwK || this.bwL != dsssEncoding.bwL || this.bwM != dsssEncoding.bwM || this.bwN != dsssEncoding.bwN || this.bwO != dsssEncoding.bwO || this.bwP != dsssEncoding.bwP || this.bwQ != dsssEncoding.bwQ || this.bwR != dsssEncoding.bwR || this.bwS != dsssEncoding.bwS || this.bwT != dsssEncoding.bwT || this.bwU != dsssEncoding.bwU) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.btV, this.bwK, this.bwL, this.bwM, this.bwN, this.bwO, this.bwP, this.bwQ, this.bwR, this.bwS, this.bwT, this.bwU });
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel);
    }
}
