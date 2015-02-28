package com.google.android.gms.people.model;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public final class AvatarReference implements SafeParcelable
{
    public static final g CREATOR;
    private final String bZb;
    private final int btV;
    private final int cjQ;
    
    static {
        CREATOR = new g();
    }
    
    AvatarReference(final int btV, final int cjQ, final String bZb) {
        G.cc(cjQ != 0);
        this.btV = btV;
        this.cjQ = cjQ;
        this.bZb = bZb;
    }
    
    public AvatarReference(final int n, final String s) {
        this(1, n, s);
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final String getLocation() {
        return this.bZb;
    }
    
    public final int getSource() {
        return this.cjQ;
    }
    
    @Override
    public final String toString() {
        return E.ad(this).e("source", this.cjQ).e("location", this.bZb).toString();
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        g.a(this, parcel);
    }
}
