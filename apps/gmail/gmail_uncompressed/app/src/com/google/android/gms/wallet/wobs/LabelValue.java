package com.google.android.gms.wallet.wobs;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class LabelValue implements SafeParcelable
{
    public static final Parcelable$Creator<LabelValue> CREATOR;
    private final int btV;
    String label;
    String value;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    LabelValue() {
        this.btV = 1;
    }
    
    LabelValue(final int btV, final String label, final String value) {
        this.btV = btV;
        this.label = label;
        this.value = value;
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
