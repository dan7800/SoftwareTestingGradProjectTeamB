package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class Feature implements SafeParcelable
{
    public static final E CREATOR;
    final int btV;
    final Bundle bus;
    public final int id;
    
    static {
        CREATOR = new E();
    }
    
    Feature(final int btV, final int id, final Bundle bus) {
        this.btV = btV;
        this.id = id;
        this.bus = bus;
    }
    
    public int describeContents() {
        final E creator = Feature.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final E creator = Feature.CREATOR;
        E.a(this, parcel);
    }
}
