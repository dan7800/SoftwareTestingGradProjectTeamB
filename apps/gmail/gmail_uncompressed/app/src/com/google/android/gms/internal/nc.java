package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class nc implements SafeParcelable
{
    public static final aS CREATOR;
    private final int btV;
    public final String packageName;
    public final int uid;
    
    static {
        CREATOR = new aS();
    }
    
    nc(final int btV, final int uid, final String packageName) {
        this.btV = btV;
        this.uid = uid;
        this.packageName = packageName;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o instanceof nc) {
            final nc nc = (nc)o;
            if (nc.uid == this.uid && E.b(nc.packageName, this.packageName)) {
                return true;
            }
        }
        return false;
    }
    
    @Override
    public int hashCode() {
        return this.uid;
    }
    
    @Override
    public String toString() {
        return String.format("%d:%s", this.uid, this.packageName);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        aS.a(this, parcel);
    }
}
