package com.google.android.gms.auth.firstparty.proximity.data;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import android.text.*;
import java.util.*;
import android.os.*;

public class Authorization implements SafeParcelable
{
    public static final a CREATOR;
    public final byte[] Rb;
    final int bxf;
    public final String bzx;
    public final String bzy;
    
    static {
        CREATOR = new a();
    }
    
    Authorization(final int bxf, final String s, final String s2, final byte[] array) {
        this.bxf = bxf;
        this.bzx = G.fX(s);
        this.bzy = G.fX(s2);
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
            if (o instanceof Authorization) {
                final Authorization authorization = (Authorization)o;
                if (TextUtils.equals((CharSequence)this.bzx, (CharSequence)authorization.bzx) && TextUtils.equals((CharSequence)this.bzy, (CharSequence)authorization.bzy) && Arrays.equals(this.Rb, authorization.Rb)) {
                    return true;
                }
            }
        }
        return false;
    }
    
    @Override
    public int hashCode() {
        return 31 * (31 * (527 + this.bzx.hashCode()) + this.bzy.hashCode()) + Arrays.hashCode(this.Rb);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel);
    }
}
