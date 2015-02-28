package com.google.android.gms.drive;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class StorageStats implements SafeParcelable
{
    public static final Parcelable$Creator<StorageStats> CREATOR;
    final long bGH;
    final long bGI;
    final long bGJ;
    final long bGK;
    final int bGL;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new s();
    }
    
    StorageStats(final int btV, final long bgh, final long bgi, final long bgj, final long bgk, final int bgl) {
        this.btV = btV;
        this.bGH = bgh;
        this.bGI = bgi;
        this.bGJ = bgj;
        this.bGK = bgk;
        this.bGL = bgl;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        s.a(this, parcel);
    }
}
