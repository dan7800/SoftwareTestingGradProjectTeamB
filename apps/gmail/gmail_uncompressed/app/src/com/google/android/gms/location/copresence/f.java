package com.google.android.gms.location.copresence;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.internal.*;
import java.util.*;
import android.os.*;

public class f implements SafeParcelable, Cloneable
{
    public static final h CREATOR;
    private final int btV;
    private final boolean cbp;
    private final boolean cbq;
    private mi[] cbr;
    private mg[] cbs;
    
    static {
        CREATOR = new h();
    }
    
    f(final int btV, final boolean cbp, final boolean cbq, final mi[] cbr, final mg[] cbs) {
        this.btV = btV;
        this.cbp = cbp;
        this.cbq = cbq;
        this.cbr = cbr;
        this.cbs = cbs;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final boolean Tp() {
        return this.cbq;
    }
    
    public final mi[] Tq() {
        if (this.cbr == null) {
            return null;
        }
        return this.cbr.clone();
    }
    
    public final mg[] Tr() {
        if (this.cbs == null) {
            return null;
        }
        return this.cbs.clone();
    }
    
    public Object clone() {
        final int btV = this.btV;
        final boolean cbp = this.cbp;
        final boolean cbq = this.cbq;
        mi[] array;
        if (this.cbr == null) {
            array = null;
        }
        else {
            array = this.cbr.clone();
        }
        final mg[] cbs = this.cbs;
        mg[] array2 = null;
        if (cbs != null) {
            array2 = this.cbs.clone();
        }
        return new f(btV, cbp, cbq, array, array2);
    }
    
    public int describeContents() {
        final h creator = f.CREATOR;
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            if (o == null || this.getClass() != o.getClass()) {
                return false;
            }
            final f f = (f)o;
            if (this.btV != f.btV || this.cbp != f.cbp || this.cbq != f.cbq || !Arrays.equals(this.cbr, f.cbr) || !Arrays.equals(this.cbs, f.cbs)) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.btV, this.cbq, this.cbp, Arrays.hashCode(this.cbr), Arrays.hashCode(this.cbs) });
    }
    
    public final boolean isEnabled() {
        return this.cbp;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final h creator = f.CREATOR;
        h.a(this, parcel, n);
    }
}
