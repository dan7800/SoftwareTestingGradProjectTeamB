package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class ak implements SafeParcelable
{
    public static final Parcelable$Creator<ak> CREATOR;
    private final String bFK;
    final int btV;
    private final String bzz;
    
    static {
        CREATOR = (Parcelable$Creator)new h();
    }
    
    ak(final int btV, final String bzz, final String bfk) {
        this.btV = btV;
        this.bzz = bzz;
        this.bFK = bfk;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o instanceof ak) {
            final ak ak = (ak)o;
            if (ak.bzz.equals(this.bzz) && ak.bFK.equals(this.bFK)) {
                return true;
            }
        }
        return false;
    }
    
    public final String getDisplayName() {
        return this.bFK;
    }
    
    public final String getId() {
        return this.bzz;
    }
    
    @Override
    public int hashCode() {
        return 37 * (629 + this.bzz.hashCode()) + this.bFK.hashCode();
    }
    
    @Override
    public String toString() {
        return "NodeParcelable{" + this.bzz + "," + this.bFK + "}";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.a(this, parcel);
    }
}
