package com.google.android.gms.drive.realtime.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class ParcelableIndexReference implements SafeParcelable
{
    public static final Parcelable$Creator<ParcelableIndexReference> CREATOR;
    final String bIX;
    final boolean bIY;
    final int btV;
    final int y;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    ParcelableIndexReference(final int btV, final String bix, final int y, final boolean biy) {
        this.btV = btV;
        this.bIX = bix;
        this.y = y;
        this.bIY = biy;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.a(this, parcel);
    }
}
