package com.google.android.gms.wallet;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class LineItem implements SafeParcelable
{
    public static final Parcelable$Creator<LineItem> CREATOR;
    private final int btV;
    String ckL;
    String ckM;
    String clm;
    String cln;
    int clo;
    String description;
    
    static {
        CREATOR = (Parcelable$Creator)new i();
    }
    
    LineItem() {
        this.btV = 1;
        this.clo = 0;
    }
    
    LineItem(final int btV, final String description, final String clm, final String cln, final String ckL, final int clo, final String ckM) {
        this.btV = btV;
        this.description = description;
        this.clm = clm;
        this.cln = cln;
        this.ckL = ckL;
        this.clo = clo;
        this.ckM = ckM;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        i.a(this, parcel);
    }
}
