package com.google.android.gms.wallet.shared;

import com.google.android.gms.common.internal.safeparcel.*;
import android.accounts.*;
import android.os.*;

public final class ApplicationParameters implements SafeParcelable
{
    public static final Parcelable$Creator<ApplicationParameters> CREATOR;
    int ae;
    final int btV;
    Bundle cI;
    int cme;
    Account cmi;
    boolean cmj;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    ApplicationParameters() {
        this.cmj = false;
        this.btV = 2;
        this.cme = 1;
        this.ae = 0;
    }
    
    ApplicationParameters(final int btV, final int cme, final Account cmi, final Bundle ci, final boolean cmj, final int ae) {
        this.cmj = false;
        this.btV = btV;
        this.cme = cme;
        this.cmi = cmi;
        this.cI = ci;
        this.cmj = cmj;
        this.ae = ae;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel, n);
    }
}
