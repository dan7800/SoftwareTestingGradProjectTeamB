package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class ac implements SafeParcelable
{
    public static final r CREATOR;
    final int btV;
    final String bwF;
    final DocumentId[] bwG;
    final int bwH;
    
    static {
        CREATOR = new r();
    }
    
    ac(final int btV, final String bwF, final DocumentId[] bwG, final int bwH) {
        this.btV = btV;
        this.bwF = bwF;
        this.bwG = bwG;
        this.bwH = bwH;
    }
    
    public int describeContents() {
        final r creator = ac.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final r creator = ac.CREATOR;
        r.a(this, parcel, n);
    }
}
