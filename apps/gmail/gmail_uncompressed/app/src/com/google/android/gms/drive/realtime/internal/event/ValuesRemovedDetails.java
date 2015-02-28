package com.google.android.gms.drive.realtime.internal.event;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class ValuesRemovedDetails implements SafeParcelable
{
    public static final Parcelable$Creator<ValuesRemovedDetails> CREATOR;
    final int bIZ;
    final int bJa;
    final String bJx;
    final int bJy;
    final int btV;
    final int y;
    
    static {
        CREATOR = (Parcelable$Creator)new i();
    }
    
    ValuesRemovedDetails(final int btV, final int y, final int biz, final int bJa, final String bJx, final int bJy) {
        this.btV = btV;
        this.y = y;
        this.bIZ = biz;
        this.bJa = bJa;
        this.bJx = bJx;
        this.bJy = bJy;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        i.a(this, parcel);
    }
}
