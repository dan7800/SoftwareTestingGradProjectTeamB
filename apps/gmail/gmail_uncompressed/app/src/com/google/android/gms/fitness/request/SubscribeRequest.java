package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class SubscribeRequest implements SafeParcelable
{
    public static final Parcelable$Creator<SubscribeRequest> CREATOR;
    private final Subscription bMJ;
    private final boolean bMK;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new f();
    }
    
    SubscribeRequest(final int btV, final Subscription bmj, final boolean bmk) {
        this.btV = btV;
        this.bMJ = bmj;
        this.bMK = bmk;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final Subscription Nw() {
        return this.bMJ;
    }
    
    public final boolean Nx() {
        return this.bMK;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("subscription", this.bMJ).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        f.a(this, parcel, n);
    }
}
