package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class GlobalSearchApplication implements SafeParcelable
{
    public static final I CREATOR;
    final int btV;
    public final GlobalSearchApplicationInfo buw;
    final k[] bux;
    public final boolean enabled;
    
    static {
        CREATOR = new I();
    }
    
    GlobalSearchApplication(final int btV, final GlobalSearchApplicationInfo buw, final k[] bux, final boolean enabled) {
        this.btV = btV;
        this.buw = buw;
        this.bux = bux;
        this.enabled = enabled;
    }
    
    public int describeContents() {
        final I creator = GlobalSearchApplication.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final I creator = GlobalSearchApplication.CREATOR;
        I.a(this, parcel, n);
    }
}
