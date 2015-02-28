package com.google.android.gms.drive.realtime.internal.event;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class ReferenceShiftedDetails implements SafeParcelable
{
    public static final Parcelable$Creator<ReferenceShiftedDetails> CREATOR;
    final String bJp;
    final String bJq;
    final int bJr;
    final int bJs;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
    }
    
    ReferenceShiftedDetails(final int btV, final String bJp, final String bJq, final int bJr, final int bJs) {
        this.btV = btV;
        this.bJp = bJp;
        this.bJq = bJq;
        this.bJr = bJr;
        this.bJs = bJs;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        d.a(this, parcel);
    }
}
