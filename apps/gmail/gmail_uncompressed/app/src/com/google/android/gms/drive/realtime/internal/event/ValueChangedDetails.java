package com.google.android.gms.drive.realtime.internal.event;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class ValueChangedDetails implements SafeParcelable
{
    public static final Parcelable$Creator<ValueChangedDetails> CREATOR;
    final int bJu;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new g();
    }
    
    ValueChangedDetails(final int btV, final int bJu) {
        this.btV = btV;
        this.bJu = bJu;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        g.a(this, parcel);
    }
}
