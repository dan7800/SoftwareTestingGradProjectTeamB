package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.fitness.data.*;
import android.os.*;

public class lr implements SafeParcelable
{
    public static final Parcelable$Creator<lr> CREATOR;
    private final DataSource bKy;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new ax();
    }
    
    lr(final int btV, final DataSource bKy) {
        this.btV = btV;
        this.bKy = bKy;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final DataSource MA() {
        return this.bKy;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public String toString() {
        return String.format("ApplicationUnregistrationRequest{%s}", this.bKy);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        ax.a(this, parcel, n);
    }
}
