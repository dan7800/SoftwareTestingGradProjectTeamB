package com.google.android.gms.auth.firstparty.shared;

import com.google.android.gms.common.internal.safeparcel.*;
import android.graphics.*;
import android.os.*;

public class CaptchaChallenge implements SafeParcelable
{
    public static final c CREATOR;
    String bxS;
    String byq;
    Bitmap bzS;
    final int version;
    
    static {
        CREATOR = new c();
    }
    
    CaptchaChallenge(final int version, final String bxS, final String byq, final Bitmap bzS) {
        this.version = version;
        this.bxS = bxS;
        this.byq = byq;
        this.bzS = bzS;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.a(this, parcel, n);
    }
}
