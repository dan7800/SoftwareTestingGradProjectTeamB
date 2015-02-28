package com.google.android.gms.location.places.personalized.internal;

import com.google.android.gms.location.places.personalized.*;
import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class TestDataImpl extends a implements SafeParcelable
{
    public static final com.google.android.gms.location.places.personalized.internal.a CREATOR;
    final int btV;
    private final String ces;
    
    static {
        CREATOR = new com.google.android.gms.location.places.personalized.internal.a();
    }
    
    TestDataImpl(final int btV, final String ces) {
        this.btV = btV;
        this.ces = ces;
    }
    
    public final String TF() {
        return this.ces;
    }
    
    public int describeContents() {
        final com.google.android.gms.location.places.personalized.internal.a creator = TestDataImpl.CREATOR;
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        return this == o || (o instanceof TestDataImpl && this.ces.equals(((TestDataImpl)o).ces));
    }
    
    @Override
    public int hashCode() {
        return this.ces.hashCode();
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("testName", this.ces).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final com.google.android.gms.location.places.personalized.internal.a creator = TestDataImpl.CREATOR;
        com.google.android.gms.location.places.personalized.internal.a.a(this, parcel);
    }
}
