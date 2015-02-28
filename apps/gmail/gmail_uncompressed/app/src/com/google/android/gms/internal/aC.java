package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class ac implements SafeParcelable
{
    public static final a CREATOR;
    public final boolean bRn;
    public final boolean bRo;
    public final int versionCode;
    
    static {
        CREATOR = new a();
    }
    
    ac(final int versionCode, final boolean bRn, final boolean bRo) {
        this.versionCode = versionCode;
        this.bRn = bRn;
        this.bRo = bRo;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel);
    }
}
