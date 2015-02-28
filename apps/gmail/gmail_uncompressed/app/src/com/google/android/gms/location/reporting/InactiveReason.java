package com.google.android.gms.location.reporting;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class InactiveReason implements SafeParcelable
{
    public static final c CREATOR;
    private final int btV;
    private final int cev;
    private final String mName;
    
    static {
        CREATOR = new c();
    }
    
    public InactiveReason(final int btV, final int cev, final String mName) {
        this.btV = btV;
        this.cev = cev;
        this.mName = mName;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final int TI() {
        return this.cev;
    }
    
    public int describeContents() {
        final c creator = InactiveReason.CREATOR;
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        return o instanceof InactiveReason && this.cev == ((InactiveReason)o).cev;
    }
    
    public final String getName() {
        return this.mName;
    }
    
    @Override
    public int hashCode() {
        return this.cev;
    }
    
    @Override
    public String toString() {
        return "InactiveReason{mVersionCode=" + this.btV + ", mIdentifier=" + this.cev + ", mName='" + this.mName + '\'' + '}';
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final c creator = InactiveReason.CREATOR;
        c.a(this, parcel);
    }
}
