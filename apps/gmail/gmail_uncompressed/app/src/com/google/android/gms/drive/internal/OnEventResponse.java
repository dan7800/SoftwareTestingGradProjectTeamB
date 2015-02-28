package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.events.*;
import android.os.*;

public class OnEventResponse implements SafeParcelable
{
    public static final Parcelable$Creator<OnEventResponse> CREATOR;
    final CompletionEvent bHA;
    final int bHa;
    final ChangeEvent bHz;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new s();
    }
    
    OnEventResponse(final int btV, final int bHa, final ChangeEvent bHz, final CompletionEvent bha) {
        this.btV = btV;
        this.bHa = bHa;
        this.bHz = bHz;
        this.bHA = bha;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        s.a(this, parcel, n);
    }
}
