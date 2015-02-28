package com.google.android.gms.googlehelp.internal.common;

import com.google.android.gms.common.internal.safeparcel.*;
import android.content.*;
import android.os.*;

public final class OverflowMenuItem implements SafeParcelable
{
    public static final Parcelable$Creator<OverflowMenuItem> CREATOR;
    final String bGC;
    final int btV;
    final int cH;
    final Intent mIntent;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    OverflowMenuItem(final int btV, final int ch, final String bgc, final Intent mIntent) {
        this.btV = btV;
        this.cH = ch;
        this.bGC = bgc;
        this.mIntent = mIntent;
    }
    
    public OverflowMenuItem(final int n, final String s, final Intent intent) {
        this(1, n, s, intent);
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel, n);
    }
}
