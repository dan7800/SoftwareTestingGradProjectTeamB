package com.google.android.gms.drive.internal;

import com.google.android.gms.drive.*;
import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.data.*;
import android.os.*;

public class OnListEntriesResponse extends g implements SafeParcelable
{
    public static final Parcelable$Creator<OnListEntriesResponse> CREATOR;
    final DataHolder bHB;
    final boolean bHC;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new t();
    }
    
    OnListEntriesResponse(final int btV, final DataHolder bhb, final boolean bhc) {
        this.btV = btV;
        this.bHB = bhb;
        this.bHC = bhc;
    }
    
    @Override
    protected final void E(final Parcel parcel, final int n) {
        t.a(this, parcel, n);
    }
    
    public int describeContents() {
        return 0;
    }
}
