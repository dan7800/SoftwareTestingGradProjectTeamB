package com.google.android.gms.wallet;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public final class Cart implements SafeParcelable
{
    public static final Parcelable$Creator<Cart> CREATOR;
    private final int btV;
    String ckL;
    String ckM;
    ArrayList<LineItem> ckN;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    Cart() {
        this.btV = 1;
        this.ckN = new ArrayList<LineItem>();
    }
    
    Cart(final int btV, final String ckL, final String ckM, final ArrayList<LineItem> ckN) {
        this.btV = btV;
        this.ckL = ckL;
        this.ckM = ckM;
        this.ckN = ckN;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel);
    }
}
