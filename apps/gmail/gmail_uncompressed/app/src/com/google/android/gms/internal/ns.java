package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

@Deprecated
public final class ns implements SafeParcelable
{
    public static final aW CREATOR;
    public final List<String> bVA;
    public final String bVx;
    public final String bVy;
    public final String bVz;
    public final String name;
    public final int versionCode;
    
    static {
        CREATOR = new aW();
    }
    
    public ns(final int versionCode, final String name, final String bVx, final String bVy, final String bVz, final List<String> bva) {
        this.versionCode = versionCode;
        this.name = name;
        this.bVx = bVx;
        this.bVy = bVy;
        this.bVz = bVz;
        this.bVA = bva;
    }
    
    public final int describeContents() {
        final aW creator = ns.CREATOR;
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this != o) {
            if (!(o instanceof ns)) {
                return false;
            }
            final ns ns = (ns)o;
            if (!E.b(this.name, ns.name) || !E.b(this.bVx, ns.bVx) || !E.b(this.bVy, ns.bVy) || !E.b(this.bVz, ns.bVz) || !E.b(this.bVA, ns.bVA)) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.name, this.bVx, this.bVy, this.bVz });
    }
    
    @Override
    public final String toString() {
        return E.ad(this).e("name", this.name).e("address", this.bVx).e("internationalPhoneNumber", this.bVy).e("regularOpenHours", this.bVz).e("attributions", this.bVA).toString();
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        final aW creator = ns.CREATOR;
        aW.a(this, parcel);
    }
}
