package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.auth.firstparty.shared.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class AccountRecoveryDataRequest implements SafeParcelable
{
    public static final p CREATOR;
    private static final String bye;
    public final String acw;
    public final AppDescription bxQ;
    public final boolean byf;
    public final String byg;
    final int version;
    
    static {
        bye = "[" + AccountRecoveryDataRequest.class.getSimpleName() + "]";
        CREATOR = new p();
    }
    
    AccountRecoveryDataRequest(final int version, final String s, final boolean byf, final AppDescription appDescription, final String byg) {
        G.f(s, (Object)(AccountRecoveryDataRequest.bye + " accountName cannot be empty or null!"));
        G.f(byg, (Object)(AccountRecoveryDataRequest.bye + " requestDescription cannot be empty or null!"));
        this.version = version;
        this.acw = G.fX(s);
        this.byf = byf;
        this.bxQ = G.ae(appDescription);
        this.byg = byg;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        p.a(this, parcel, n);
    }
}
