package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.location.*;
import android.os.*;

public final class ba implements SafeParcelable
{
    public static final b CREATOR;
    public final long bRp;
    public final int bRq;
    public final List<String> bRr;
    public final boolean bRs;
    public final int bRt;
    public final boolean bRu;
    public final String bRv;
    public final bo bRw;
    public final Location bRx;
    public final String bRy;
    public final Bundle bRz;
    public final Bundle extras;
    public final int versionCode;
    
    static {
        CREATOR = new b();
    }
    
    public ba(final int versionCode, final long bRp, final Bundle extras, final int bRq, final List<String> bRr, final boolean bRs, final int bRt, final boolean bRu, final String bRv, final bo bRw, final Location bRx, final String bRy, final Bundle bRz) {
        this.versionCode = versionCode;
        this.bRp = bRp;
        this.extras = extras;
        this.bRq = bRq;
        this.bRr = bRr;
        this.bRs = bRs;
        this.bRt = bRt;
        this.bRu = bRu;
        this.bRv = bRv;
        this.bRw = bRw;
        this.bRx = bRx;
        this.bRy = bRy;
        this.bRz = bRz;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel, n);
    }
}
