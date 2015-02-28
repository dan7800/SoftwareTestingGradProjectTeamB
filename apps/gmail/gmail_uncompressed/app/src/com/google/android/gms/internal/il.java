package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.cast.*;
import java.util.*;
import android.os.*;

public class il implements SafeParcelable
{
    public static final Parcelable$Creator<il> CREATOR;
    private double bTc;
    private boolean bTd;
    private int bTe;
    private ApplicationMetadata bTf;
    private int bTg;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new E();
    }
    
    public il() {
        this(3, Double.NaN, false, -1, null, -1);
    }
    
    il(final int btV, final double bTc, final boolean bTd, final int bTe, final ApplicationMetadata bTf, final int bTg) {
        this.btV = btV;
        this.bTc = bTc;
        this.bTd = bTd;
        this.bTe = bTe;
        this.bTf = bTf;
        this.bTg = bTg;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final double QW() {
        return this.bTc;
    }
    
    public final boolean QX() {
        return this.bTd;
    }
    
    public final int QY() {
        return this.bTe;
    }
    
    public final int QZ() {
        return this.bTg;
    }
    
    public final ApplicationMetadata Ra() {
        return this.bTf;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o != this) {
            if (!(o instanceof il)) {
                return false;
            }
            final il il = (il)o;
            if (this.bTc != il.bTc || this.bTd != il.bTd || this.bTe != il.bTe || !D.g(this.bTf, il.bTf) || this.bTg != il.bTg) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.bTc, this.bTd, this.bTe, this.bTf, this.bTg });
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        E.a(this, parcel, n);
    }
}
