package com.google.android.gms.drive.realtime.internal.event;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class ValuesAddedDetails implements SafeParcelable
{
    public static final Parcelable$Creator<ValuesAddedDetails> CREATOR;
    final int bIZ;
    final int bJa;
    final String bJv;
    final int bJw;
    final int btV;
    final int y;
    
    static {
        CREATOR = (Parcelable$Creator)new h();
    }
    
    ValuesAddedDetails(final int btV, final int y, final int biz, final int bJa, final String bJv, final int bJw) {
        this.btV = btV;
        this.y = y;
        this.bIZ = biz;
        this.bJa = bJa;
        this.bJv = bJv;
        this.bJw = bJw;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.a(this, parcel);
    }
}
