package com.google.android.gms.location.copresence;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class AclResourceId implements SafeParcelable
{
    public static final Parcelable$Creator<AclResourceId> CREATOR;
    private final int btV;
    private final String bzz;
    private final String caL;
    private final String caM;
    
    static {
        CREATOR = (Parcelable$Creator)new g();
    }
    
    AclResourceId(final int btV, final String caL, final String bzz, final String caM) {
        this.btV = btV;
        this.caL = caL;
        this.bzz = bzz;
        this.caM = caM;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final String SZ() {
        return this.caL;
    }
    
    public final String Ta() {
        return this.caM;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public final String getId() {
        return this.bzz;
    }
    
    @Override
    public String toString() {
        return String.format("AclResourceId{application = %s, id = %s, part = %s}", this.caL, this.bzz, this.caM);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        g.a(this, parcel);
    }
}
