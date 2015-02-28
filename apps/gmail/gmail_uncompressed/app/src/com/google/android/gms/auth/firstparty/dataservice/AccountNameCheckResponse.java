package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import com.google.android.gms.auth.firstparty.shared.*;
import android.os.*;

public class AccountNameCheckResponse implements SafeParcelable
{
    public static final n CREATOR;
    String bxS;
    List<String> bxT;
    String bxU;
    CaptchaChallenge bxV;
    final int version;
    
    static {
        CREATOR = new n();
    }
    
    AccountNameCheckResponse(final int version, final String bxS, final List<String> bxT, final String bxU, final CaptchaChallenge bxV) {
        this.version = version;
        this.bxS = bxS;
        this.bxT = bxT;
        this.bxU = bxU;
        this.bxV = bxV;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        n.a(this, parcel, n);
    }
}
