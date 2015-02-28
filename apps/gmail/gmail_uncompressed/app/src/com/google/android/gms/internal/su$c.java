package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.api.*;
import android.os.*;

public class su$c implements t, SafeParcelable
{
    public static final dl CREATOR;
    public su$a[] bZM;
    public long bZN;
    public long bZO;
    public long bZP;
    final int btV;
    public Status buu;
    
    static {
        CREATOR = new dl();
    }
    
    public su$c() {
        this.btV = 1;
    }
    
    su$c(final int btV, final Status buu, final su$a[] bzm, final long bzn, final long bzo, final long bzp) {
        this.btV = btV;
        this.buu = buu;
        this.bZM = bzm;
        this.bZN = bzn;
        this.bZO = bzo;
        this.bZP = bzp;
    }
    
    @Override
    public final Status Jk() {
        return this.buu;
    }
    
    public int describeContents() {
        final dl creator = su$c.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final dl creator = su$c.CREATOR;
        dl.a(this, parcel, n);
    }
}
