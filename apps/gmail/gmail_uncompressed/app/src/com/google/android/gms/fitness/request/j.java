package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class j implements SafeParcelable
{
    public static final Parcelable$Creator<j> CREATOR;
    private final int btV;
    private final String mName;
    
    static {
        CREATOR = (Parcelable$Creator)new r();
    }
    
    j(final int btV, final String mName) {
        this.btV = btV;
        this.mName = mName;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        return o == this || (o instanceof j && E.b(this.mName, ((j)o).mName));
    }
    
    public final String getName() {
        return this.mName;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.mName });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("name", this.mName).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        r.a(this, parcel);
    }
}
