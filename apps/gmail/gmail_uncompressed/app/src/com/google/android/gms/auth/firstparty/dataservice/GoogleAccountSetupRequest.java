package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.auth.firstparty.shared.*;
import android.os.*;

public class GoogleAccountSetupRequest implements SafeParcelable
{
    public static final D CREATOR;
    AppDescription bxQ;
    CaptchaSolution bxR;
    String bxZ;
    boolean byA;
    String byB;
    String bya;
    String byj;
    boolean byl;
    boolean bym;
    AccountCredentials byn;
    String byo;
    String byp;
    Bundle byv;
    boolean byw;
    boolean byx;
    boolean byy;
    String byz;
    final int version;
    
    static {
        CREATOR = new D();
    }
    
    public GoogleAccountSetupRequest() {
        this.version = 1;
        this.byv = new Bundle();
    }
    
    GoogleAccountSetupRequest(final int version, final Bundle byv, final boolean byw, final boolean byx, final boolean byy, final String byo, final String byp, final String bxZ, final String byz, final boolean byl, final boolean byA, final boolean bym, final String byB, final AppDescription bxQ, final AccountCredentials byn, final CaptchaSolution bxR, final String bya, final String byj) {
        this.version = version;
        this.byv = byv;
        this.byw = byw;
        this.byx = byx;
        this.byy = byy;
        this.byo = byo;
        this.byp = byp;
        this.bxZ = bxZ;
        this.byz = byz;
        this.byl = byl;
        this.byA = byA;
        this.bym = bym;
        this.byB = byB;
        this.bxQ = bxQ;
        this.byn = byn;
        this.bxR = bxR;
        this.bya = bya;
        this.byj = byj;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        D.a(this, parcel, n);
    }
}
