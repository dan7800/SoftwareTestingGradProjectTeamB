package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class DocumentResults implements SafeParcelable
{
    public static final C CREATOR;
    final int btV;
    final Bundle buk;
    final Bundle bul;
    final Bundle bum;
    final String mErrorMessage;
    
    static {
        CREATOR = new C();
    }
    
    DocumentResults(final int btV, final String mErrorMessage, final Bundle buk, final Bundle bul, final Bundle bum) {
        this.btV = btV;
        this.mErrorMessage = mErrorMessage;
        this.buk = buk;
        this.bul = bul;
        this.bum = bum;
    }
    
    public int describeContents() {
        final C creator = DocumentResults.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final C creator = DocumentResults.CREATOR;
        C.a(this, parcel);
    }
}
