package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class mp implements SafeParcelable
{
    public static final Parcelable$Creator<mp> CREATOR;
    public final mx bUA;
    public final mv bUB;
    public final mz bUC;
    public final int bUy;
    public final mr bUz;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new aM();
    }
    
    mp(final int btV, final int bUy, final mr bUz, final mx bua, final mv bub, final mz buc) {
        this.btV = btV;
        this.bUy = bUy;
        this.bUz = bUz;
        this.bUA = bua;
        this.bUB = bub;
        this.bUC = buc;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        aM.a(this, parcel, n);
    }
}
