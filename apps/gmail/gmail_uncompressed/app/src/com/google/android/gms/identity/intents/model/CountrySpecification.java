package com.google.android.gms.identity.intents.model;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class CountrySpecification implements SafeParcelable
{
    public static final Parcelable$Creator<CountrySpecification> CREATOR;
    String bRa;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    CountrySpecification(final int btV, final String bRa) {
        this.btV = btV;
        this.bRa = bRa;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel);
    }
}
