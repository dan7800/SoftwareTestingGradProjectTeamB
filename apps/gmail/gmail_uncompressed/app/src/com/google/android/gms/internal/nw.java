package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class nw implements SafeParcelable
{
    public static final aY CREATOR;
    public final String acw;
    public final String bJZ;
    public final String bVF;
    public final int versionCode;
    
    static {
        CREATOR = new aY();
    }
    
    public nw(final int versionCode, final String bvf, final String bjz, final String acw) {
        this.versionCode = versionCode;
        this.bVF = bvf;
        this.bJZ = bjz;
        this.acw = acw;
    }
    
    public int describeContents() {
        final aY creator = nw.CREATOR;
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            if (o == null || !(o instanceof nw)) {
                return false;
            }
            final nw nw = (nw)o;
            if (!this.bJZ.equals(nw.bJZ) || !this.bVF.equals(nw.bVF) || !E.b(this.acw, nw.acw)) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.bVF, this.bJZ, this.acw });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("clientPackageName", this.bVF).e("locale", this.bJZ).e("accountName", this.acw).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final aY creator = nw.CREATOR;
        aY.a(this, parcel);
    }
}
