package com.google.android.gms.drive.metadata.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.metadata.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class CustomProperty implements SafeParcelable
{
    public static final Parcelable$Creator<CustomProperty> CREATOR;
    final CustomPropertyKey bIi;
    final int btV;
    final String mValue;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
    }
    
    CustomProperty(final int btV, final CustomPropertyKey bIi, final String mValue) {
        this.btV = btV;
        G.f(bIi, "key");
        this.bIi = bIi;
        this.mValue = mValue;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        d.a(this, parcel, n);
    }
}
