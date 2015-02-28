package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.auth.firstparty.shared.*;
import android.os.*;

public class AccountRecoveryUpdateRequest implements SafeParcelable
{
    public static final s CREATOR;
    public final String acw;
    public final AppDescription bxQ;
    public final String bxZ;
    public final String bya;
    public final String byj;
    public final boolean byk;
    final int version;
    
    static {
        CREATOR = new s();
    }
    
    AccountRecoveryUpdateRequest(final int version, final String acw, final String bxZ, final String bya, final String byj, final boolean byk, final AppDescription bxQ) {
        this.version = version;
        this.acw = acw;
        this.bxZ = bxZ;
        this.bya = bya;
        this.byj = byj;
        this.byk = byk;
        this.bxQ = bxQ;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        s.a(this, parcel, n);
    }
}
