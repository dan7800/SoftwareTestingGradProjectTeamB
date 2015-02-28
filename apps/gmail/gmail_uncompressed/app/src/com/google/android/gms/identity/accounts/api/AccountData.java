package com.google.android.gms.identity.accounts.api;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public final class AccountData implements SafeParcelable
{
    public static final Parcelable$Creator<AccountData> CREATOR;
    private final String bQV;
    private final int btV;
    private final String bxh;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    public AccountData(final int btV, final String bxh, final String bqv) {
        G.f(bxh, (Object)"Account name must not be empty.");
        this.btV = btV;
        this.bxh = bxh;
        this.bQV = bqv;
    }
    
    public final String FP() {
        return this.bxh;
    }
    
    public final String Iu() {
        return this.bQV;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        c.a(this, parcel);
    }
}
