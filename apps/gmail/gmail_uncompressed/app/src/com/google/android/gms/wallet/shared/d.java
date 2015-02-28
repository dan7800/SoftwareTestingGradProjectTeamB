package com.google.android.gms.wallet.shared;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class d implements Parcelable$Creator<LegalDocsForCountry>
{
    static void a(final LegalDocsForCountry legalDocsForCountry, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, legalDocsForCountry.btV);
        b.a(parcel, 2, legalDocsForCountry.cmr, false);
        b.a(parcel, 3, legalDocsForCountry.cms, false);
        b.a(parcel, 4, legalDocsForCountry.cmt);
        b.D(parcel, ae);
    }
}
