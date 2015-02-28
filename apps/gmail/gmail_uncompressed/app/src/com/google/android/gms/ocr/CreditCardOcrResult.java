package com.google.android.gms.ocr;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class CreditCardOcrResult implements SafeParcelable
{
    public static final Parcelable$Creator<CreditCardOcrResult> CREATOR;
    private final int btV;
    String cgg;
    int cgh;
    int cgi;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    CreditCardOcrResult(final int btV, final String cgg, final int cgh, final int cgi) {
        this.btV = btV;
        this.cgg = cgg;
        this.cgh = cgh;
        this.cgi = cgi;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel);
    }
}
