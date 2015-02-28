package com.google.android.gms.ocr;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<CreditCardOcrResult>
{
    static void a(final CreditCardOcrResult creditCardOcrResult, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, creditCardOcrResult.Jt());
        b.a(parcel, 2, creditCardOcrResult.cgg, false);
        b.d(parcel, 3, creditCardOcrResult.cgh);
        b.d(parcel, 4, creditCardOcrResult.cgi);
        b.D(parcel, ae);
    }
}
