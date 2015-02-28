package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class do implements SafeParcelable
{
    public static final h CREATOR;
    public final String bRP;
    public final String bRQ;
    public final String bRR;
    public final String bRS;
    public final String bzq;
    public final String mimeType;
    public final String packageName;
    public final int versionCode;
    
    static {
        CREATOR = new h();
    }
    
    public do(final int versionCode, final String brp, final String bzq, final String mimeType, final String packageName, final String brq, final String brr, final String brs) {
        this.versionCode = versionCode;
        this.bRP = brp;
        this.bzq = bzq;
        this.mimeType = mimeType;
        this.packageName = packageName;
        this.bRQ = brq;
        this.bRR = brr;
        this.bRS = brs;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        h.a(this, parcel);
    }
}
