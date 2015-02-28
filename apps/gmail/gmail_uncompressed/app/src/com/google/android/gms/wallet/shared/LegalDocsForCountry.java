package com.google.android.gms.wallet.shared;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class LegalDocsForCountry implements SafeParcelable
{
    public static final Parcelable$Creator<LegalDocsForCountry> CREATOR;
    final int btV;
    final String cmr;
    final String cms;
    final String[] cmt;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
    }
    
    LegalDocsForCountry(final int btV, final String cmr, final String cms, String[] cmt) {
        this.btV = btV;
        this.cmr = cmr;
        this.cms = cms;
        if (cmt == null) {
            cmt = new String[0];
        }
        this.cmt = cmt;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        d.a(this, parcel);
    }
}
