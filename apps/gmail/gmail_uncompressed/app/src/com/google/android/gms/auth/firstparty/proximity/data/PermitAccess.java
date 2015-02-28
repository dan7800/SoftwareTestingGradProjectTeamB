package com.google.android.gms.auth.firstparty.proximity.data;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import android.text.*;
import java.util.*;
import android.os.*;

public class PermitAccess implements SafeParcelable
{
    public static final c CREATOR;
    final byte[] Rb;
    final int bxf;
    final String bzB;
    final String bzz;
    
    static {
        CREATOR = new c();
    }
    
    PermitAccess(final int bxf, final String s, final String s2, final byte[] array) {
        this.bxf = bxf;
        this.bzz = G.fX(s);
        this.bzB = G.fX(s2);
        this.Rb = G.ae(array);
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o != null) {
            if (o == this) {
                return true;
            }
            if (o instanceof PermitAccess) {
                final PermitAccess permitAccess = (PermitAccess)o;
                if (TextUtils.equals((CharSequence)this.bzz, (CharSequence)permitAccess.bzz) && TextUtils.equals((CharSequence)this.bzB, (CharSequence)permitAccess.bzB) && Arrays.equals(this.Rb, permitAccess.Rb)) {
                    return true;
                }
            }
        }
        return false;
    }
    
    public final String getId() {
        return this.bzz;
    }
    
    @Override
    public int hashCode() {
        return 31 * (31 * (527 + this.bzz.hashCode()) + this.bzB.hashCode()) + Arrays.hashCode(this.Rb);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.a(this, parcel);
    }
}
