package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class ap implements SafeParcelable
{
    public static final Parcelable$Creator<ap> CREATOR;
    final int btV;
    public final d cna;
    
    static {
        CREATOR = (Parcelable$Creator)new k();
    }
    
    ap(final int btV, final IBinder binder) {
        this.btV = btV;
        if (binder != null) {
            this.cna = e.K(binder);
            return;
        }
        this.cna = null;
    }
    
    final IBinder VP() {
        if (this.cna == null) {
            return null;
        }
        return this.cna.asBinder();
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        k.a(this, parcel);
    }
}
