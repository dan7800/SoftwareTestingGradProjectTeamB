package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.content.*;
import android.os.*;

public class b implements SafeParcelable
{
    public static final Parcelable$Creator<b> CREATOR;
    final int btV;
    public final d cna;
    public final IntentFilter[] cnc;
    
    static {
        CREATOR = (Parcelable$Creator)new o();
    }
    
    b(final int btV, final IBinder binder, final IntentFilter[] cnc) {
        this.btV = btV;
        if (binder != null) {
            this.cna = e.K(binder);
        }
        else {
            this.cna = null;
        }
        this.cnc = cnc;
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
        o.a(this, parcel, n);
    }
}
