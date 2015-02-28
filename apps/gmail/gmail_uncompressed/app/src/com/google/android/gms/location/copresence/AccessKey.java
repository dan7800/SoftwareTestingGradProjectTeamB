package com.google.android.gms.location.copresence;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class AccessKey implements SafeParcelable
{
    public static final Parcelable$Creator<AccessKey> CREATOR;
    private final int btV;
    private final String caB;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    AccessKey(final int btV, final String caB) {
        this.btV = btV;
        this.caB = caB;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public final String getPassphrase() {
        return this.caB;
    }
    
    @Override
    public String toString() {
        if (this.caB == null) {
            return "N/A";
        }
        return this.caB;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.a(this, parcel);
    }
}
