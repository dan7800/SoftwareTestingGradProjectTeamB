package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.auth.firstparty.shared.*;
import android.os.*;

public class PasswordCheckRequest implements SafeParcelable
{
    public static final L CREATOR;
    String acw;
    String bxO;
    String bxP;
    String byM;
    AppDescription byN;
    final int version;
    
    static {
        CREATOR = new L();
    }
    
    PasswordCheckRequest(final int version, final String acw, final String byM, final String bxO, final String bxP, final AppDescription byN) {
        this.version = version;
        this.acw = acw;
        this.byM = byM;
        this.bxO = bxO;
        this.bxP = bxP;
        this.byN = byN;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        L.a(this, parcel, n);
    }
}
