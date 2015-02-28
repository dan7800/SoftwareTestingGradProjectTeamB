package com.google.android.gms.auth.firstparty.proximity.data;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import android.text.*;
import java.util.*;
import android.os.*;

public class AuthorizationRequest implements SafeParcelable
{
    public static final b CREATOR;
    final byte[] Rb;
    final int bxf;
    final String bzx;
    final String bzy;
    
    static {
        CREATOR = new b();
    }
    
    AuthorizationRequest(final int bxf, final String s, final String s2, final byte[] array) {
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
            if (o instanceof AuthorizationRequest) {
                final AuthorizationRequest authorizationRequest = (AuthorizationRequest)o;
                if (TextUtils.equals((CharSequence)this.bzx, (CharSequence)authorizationRequest.bzx) && TextUtils.equals((CharSequence)this.bzy, (CharSequence)authorizationRequest.bzy) && Arrays.equals(this.Rb, authorizationRequest.Rb)) {
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
        b.a(this, parcel);
    }
}
