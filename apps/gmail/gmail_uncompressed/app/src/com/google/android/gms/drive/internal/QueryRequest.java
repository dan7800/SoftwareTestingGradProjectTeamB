package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.query.*;
import android.os.*;

public class QueryRequest implements SafeParcelable
{
    public static final Parcelable$Creator<QueryRequest> CREATOR;
    final Query bHH;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new C();
    }
    
    QueryRequest(final int btV, final Query bhh) {
        this.btV = btV;
        this.bHH = bhh;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        C.a(this, parcel, n);
    }
}
