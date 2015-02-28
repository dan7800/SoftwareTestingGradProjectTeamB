package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.auth.firstparty.shared.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class OtpRequest implements SafeParcelable
{
    public static final J CREATOR;
    public final String acw;
    final int bxf;
    public final AppDescription byI;
    public final byte[] byJ;
    public final boolean byK;
    
    static {
        CREATOR = new J();
    }
    
    OtpRequest(final int bxf, final String acw, final AppDescription appDescription, final byte[] byJ, final boolean byK) {
        this.bxf = bxf;
        this.acw = acw;
        this.byJ = byJ;
        this.byI = G.f(appDescription, "Caller's app description cannot be null!");
        this.byK = byK;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        J.a(this, parcel, n);
    }
}
