package com.google.android.gms.audiomodem;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class DtmfEncoding implements SafeParcelable
{
    public static final Parcelable$Creator<DtmfEncoding> CREATOR;
    private final int btV;
    private final int bwK;
    private final boolean bwL;
    private final float bwP;
    private final int bwU;
    private final int bwV;
    private final int bwW;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    DtmfEncoding(final int btV, final int bwK, final boolean bwL, final float bwP, final int bwU, final int bwV, final int bwW) {
        this.btV = btV;
        this.bwK = bwK;
        this.bwL = bwL;
        this.bwP = bwP;
        this.bwU = bwU;
        this.bwV = bwV;
        this.bwW = bwW;
    }
    
    public final float JA() {
        return this.bwP;
    }
    
    public final int JF() {
        return this.bwU;
    }
    
    public final int JG() {
        return this.bwV;
    }
    
    public final int JH() {
        return this.bwW;
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
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            if (!(o instanceof DtmfEncoding)) {
                return false;
            }
            final DtmfEncoding dtmfEncoding = (DtmfEncoding)o;
            if (this.btV != dtmfEncoding.btV || this.bwK != dtmfEncoding.bwK || this.bwL != dtmfEncoding.bwL || this.bwP != dtmfEncoding.bwP || this.bwU != dtmfEncoding.bwU || this.bwV != dtmfEncoding.bwV || this.bwW != dtmfEncoding.bwW) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.btV, this.bwK, this.bwL, this.bwP, this.bwU, this.bwV, this.bwW });
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.a(this, parcel);
    }
}
