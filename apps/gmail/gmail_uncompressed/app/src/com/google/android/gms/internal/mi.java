package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.people.data.*;
import android.text.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class mi implements SafeParcelable, Cloneable
{
    public static final aI CREATOR;
    private final Audience bUx;
    private final int btV;
    private final String mName;
    
    static {
        CREATOR = new aI();
    }
    
    mi(final int btV, final String mName, final Audience bUx) {
        G.fX(mName);
        this.btV = btV;
        this.mName = mName;
        this.bUx = bUx;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final Audience Rh() {
        return this.bUx;
    }
    
    public Object clone() {
        return new mi(this.btV, this.mName, this.bUx);
    }
    
    public int describeContents() {
        final aI creator = mi.CREATOR;
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            if (o == null || this.getClass() != o.getClass()) {
                return false;
            }
            final mi mi = (mi)o;
            if (this.btV != mi.btV || !TextUtils.equals((CharSequence)this.mName, (CharSequence)mi.mName) || !E.b(this.bUx, mi.bUx)) {
                return false;
            }
        }
        return true;
    }
    
    public final String getName() {
        return this.mName;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.btV, this.mName, this.bUx });
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final aI creator = mi.CREATOR;
        aI.a(this, parcel, n);
    }
}
