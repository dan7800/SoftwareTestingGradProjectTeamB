package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class bd implements SafeParcelable
{
    public static final c CREATOR;
    public final String bRA;
    public final boolean bRB;
    public final bd[] bRC;
    public final int height;
    public final int heightPixels;
    public final int versionCode;
    public final int width;
    public final int widthPixels;
    
    static {
        CREATOR = new c();
    }
    
    public bd() {
        this(2, "interstitial_mb", 0, 0, true, 0, 0, null);
    }
    
    bd(final int versionCode, final String bra, final int height, final int heightPixels, final boolean brb, final int width, final int widthPixels, final bd[] brc) {
        this.versionCode = versionCode;
        this.bRA = bra;
        this.height = height;
        this.heightPixels = heightPixels;
        this.bRB = brb;
        this.width = width;
        this.widthPixels = widthPixels;
        this.bRC = brc;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        c.a(this, parcel, n);
    }
}
