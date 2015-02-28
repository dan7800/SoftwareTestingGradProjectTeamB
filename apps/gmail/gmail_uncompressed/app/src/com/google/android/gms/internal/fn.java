package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.content.pm.*;
import java.util.*;
import android.os.*;

public final class fn implements SafeParcelable
{
    public static final p CREATOR;
    public final ApplicationInfo applicationInfo;
    public final gy bSd;
    public final Bundle bSl;
    public final ba bSm;
    public final bd bSn;
    public final String bSo;
    public final PackageInfo bSp;
    public final String bSq;
    public final String bSr;
    public final Bundle bSs;
    public final int bSt;
    public final List<String> bSu;
    public final Bundle bSv;
    public final boolean bSw;
    public final String bzP;
    public final int versionCode;
    
    static {
        CREATOR = new p();
    }
    
    fn(final int versionCode, final Bundle bSl, final ba bSm, final bd bSn, final String bSo, final ApplicationInfo applicationInfo, final PackageInfo bSp, final String bSq, final String bSr, final String bzP, final gy bSd, final Bundle bSs, final int bSt, final List<String> bSu, final Bundle bSv, final boolean bSw) {
        this.versionCode = versionCode;
        this.bSl = bSl;
        this.bSm = bSm;
        this.bSn = bSn;
        this.bSo = bSo;
        this.applicationInfo = applicationInfo;
        this.bSp = bSp;
        this.bSq = bSq;
        this.bSr = bSr;
        this.bzP = bzP;
        this.bSd = bSd;
        this.bSs = bSs;
        this.bSt = bSt;
        this.bSu = bSu;
        this.bSv = bSv;
        this.bSw = bSw;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        p.a(this, parcel, n);
    }
}
