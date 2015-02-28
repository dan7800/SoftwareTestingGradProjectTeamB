package com.google.android.gms.drive.realtime.internal.event;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class ValuesSetDetails implements SafeParcelable
{
    public static final Parcelable$Creator<ValuesSetDetails> CREATOR;
    final int bIZ;
    final int bJa;
    final int btV;
    final int y;
    
    static {
        CREATOR = (Parcelable$Creator)new j();
    }
    
    ValuesSetDetails(final int btV, final int y, final int biz, final int bJa) {
        this.btV = btV;
        this.y = y;
        this.bIZ = biz;
        this.bJa = bJa;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        j.a(this, parcel);
    }
}
