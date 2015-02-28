package com.google.android.gms.drive.realtime.internal.event;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class TextInsertedDetails implements SafeParcelable
{
    public static final Parcelable$Creator<TextInsertedDetails> CREATOR;
    final int bJt;
    final int btV;
    final int y;
    
    static {
        CREATOR = (Parcelable$Creator)new f();
    }
    
    TextInsertedDetails(final int btV, final int y, final int bJt) {
        this.btV = btV;
        this.y = y;
        this.bJt = bJt;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        f.a(this, parcel);
    }
}
