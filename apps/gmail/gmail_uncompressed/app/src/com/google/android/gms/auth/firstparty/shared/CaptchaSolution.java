package com.google.android.gms.auth.firstparty.shared;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class CaptchaSolution implements SafeParcelable
{
    public static final d CREATOR;
    String byq;
    String bzT;
    final int version;
    
    static {
        CREATOR = new d();
    }
    
    CaptchaSolution(final int version, final String byq, final String bzT) {
        this.version = version;
        this.byq = byq;
        this.bzT = bzT;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        d.a(this, parcel);
    }
}
