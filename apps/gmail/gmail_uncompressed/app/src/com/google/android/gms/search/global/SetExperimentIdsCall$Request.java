package com.google.android.gms.search.global;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class SetExperimentIdsCall$Request implements SafeParcelable
{
    public static final i CREATOR;
    final int btV;
    public byte[] ckp;
    public boolean ckq;
    
    static {
        CREATOR = new i();
    }
    
    public SetExperimentIdsCall$Request() {
        this.btV = 1;
    }
    
    SetExperimentIdsCall$Request(final int btV, final byte[] ckp, final boolean ckq) {
        this.btV = btV;
        this.ckp = ckp;
        this.ckq = ckq;
    }
    
    public int describeContents() {
        final i creator = SetExperimentIdsCall$Request.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final i creator = SetExperimentIdsCall$Request.CREATOR;
        i.a(this, parcel);
    }
}
