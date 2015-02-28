package com.google.android.gms.drive.realtime.internal.event;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class TextDeletedDetails implements SafeParcelable
{
    public static final Parcelable$Creator<TextDeletedDetails> CREATOR;
    final int bJt;
    final int btV;
    final int y;
    
    static {
        CREATOR = (Parcelable$Creator)new e();
    }
    
    TextDeletedDetails(final int btV, final int y, final int bJt) {
        this.btV = btV;
        this.y = y;
        this.bJt = bJt;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        e.a(this, parcel);
    }
}
