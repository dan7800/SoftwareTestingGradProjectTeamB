package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class GlobalSearchCorpusConfig implements SafeParcelable
{
    public static final K CREATOR;
    final int btV;
    public final int[] buC;
    public final Feature[] buD;
    
    static {
        CREATOR = new K();
    }
    
    GlobalSearchCorpusConfig(final int btV, final int[] buC, final Feature[] buD) {
        this.btV = btV;
        this.buC = buC;
        this.buD = buD;
    }
    
    public int describeContents() {
        final K creator = GlobalSearchCorpusConfig.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final K creator = GlobalSearchCorpusConfig.CREATOR;
        K.a(this, parcel, n);
    }
}
