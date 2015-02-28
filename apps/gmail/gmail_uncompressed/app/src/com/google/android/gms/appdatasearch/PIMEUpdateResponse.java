package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class PIMEUpdateResponse implements SafeParcelable
{
    public static final O CREATOR;
    final int btV;
    public final byte[] buZ;
    public final PIMEUpdate[] bva;
    final String mErrorMessage;
    
    static {
        CREATOR = new O();
    }
    
    PIMEUpdateResponse(final int btV, final String mErrorMessage, final byte[] buZ, final PIMEUpdate[] bva) {
        this.btV = btV;
        this.mErrorMessage = mErrorMessage;
        this.buZ = buZ;
        this.bva = bva;
    }
    
    public int describeContents() {
        final O creator = PIMEUpdateResponse.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final O creator = PIMEUpdateResponse.CREATOR;
        O.a(this, parcel, n);
    }
}
