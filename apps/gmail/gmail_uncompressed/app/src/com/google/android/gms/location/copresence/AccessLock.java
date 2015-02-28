package com.google.android.gms.location.copresence;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class AccessLock implements SafeParcelable
{
    public static final Parcelable$Creator<AccessLock> CREATOR;
    private final int btV;
    private final String caC;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
    }
    
    AccessLock(final int btV, final String caC) {
        this.btV = btV;
        this.caC = caC;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final String SR() {
        return this.caC;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        d.a(this, parcel);
    }
}
