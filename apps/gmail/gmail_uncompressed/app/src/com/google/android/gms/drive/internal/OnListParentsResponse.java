package com.google.android.gms.drive.internal;

import com.google.android.gms.drive.*;
import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.data.*;
import android.os.*;

public class OnListParentsResponse extends g implements SafeParcelable
{
    public static final Parcelable$Creator<OnListParentsResponse> CREATOR;
    final DataHolder bHD;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new u();
    }
    
    OnListParentsResponse(final int btV, final DataHolder bhd) {
        this.btV = btV;
        this.bHD = bhd;
    }
    
    @Override
    protected final void E(final Parcel parcel, final int n) {
        u.a(this, parcel, n);
    }
    
    public int describeContents() {
        return 0;
    }
}
