package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.location.copresence.*;
import android.os.*;

public final class mr implements SafeParcelable
{
    public static final Parcelable$Creator<mr> CREATOR;
    private final mt bUD;
    private final Message bUE;
    private final AccessPolicy bUF;
    private final int btV;
    private final String bzz;
    
    static {
        CREATOR = (Parcelable$Creator)new aN();
    }
    
    mr(final int btV, final String bzz, final mt bud, final Message bue, final AccessPolicy buf) {
        this.btV = btV;
        this.bzz = bzz;
        this.bUD = bud;
        this.bUE = bue;
        this.bUF = buf;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    final mt Ri() {
        return this.bUD;
    }
    
    public final Message Rj() {
        return this.bUE;
    }
    
    public final AccessPolicy Rk() {
        return this.bUF;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final String getId() {
        return this.bzz;
    }
    
    @Override
    public final String toString() {
        return "PublishOperation: " + this.bUE.toString();
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        aN.a(this, parcel, n);
    }
}
