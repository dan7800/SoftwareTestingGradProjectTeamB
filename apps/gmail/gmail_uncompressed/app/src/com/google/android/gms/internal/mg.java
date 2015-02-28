package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import android.text.*;
import java.util.*;
import android.os.*;

public class mg implements SafeParcelable, Cloneable
{
    public static final aH CREATOR;
    private final boolean bUw;
    private final int btV;
    private final String bzz;
    
    static {
        CREATOR = new aH();
    }
    
    mg(final int btV, final String bzz, final boolean bUw) {
        G.fX(bzz);
        this.btV = btV;
        this.bzz = bzz;
        this.bUw = bUw;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final boolean Rg() {
        return this.bUw;
    }
    
    public Object clone() {
        return new mg(this.btV, this.bzz, this.bUw);
    }
    
    public int describeContents() {
        final aH creator = mg.CREATOR;
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            if (o == null || this.getClass() != o.getClass()) {
                return false;
            }
            final mg mg = (mg)o;
            if (this.btV != mg.btV || !TextUtils.equals((CharSequence)this.bzz, (CharSequence)mg.bzz) || this.bUw != mg.bUw) {
                return false;
            }
        }
        return true;
    }
    
    public final String getId() {
        return this.bzz;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.btV, this.bzz, this.bUw });
    }
    
    @Override
    public String toString() {
        return "FeatureOptIn[id=" + this.bzz + ", isOptedIn=" + this.bUw + "]";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final aH creator = mg.CREATOR;
        aH.a(this, parcel);
    }
}
