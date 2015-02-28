package com.google.android.gms.drive.realtime.internal.event;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class ObjectChangedDetails implements SafeParcelable
{
    public static final Parcelable$Creator<ObjectChangedDetails> CREATOR;
    final int bIZ;
    final int bJa;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    ObjectChangedDetails(final int btV, final int biz, final int bJa) {
        this.btV = btV;
        this.bIZ = biz;
        this.bJa = bJa;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel);
    }
}
