package com.google.android.gms.search.queries;

import android.os.*;
import com.google.android.gms.appdatasearch.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<GetDocumentsCall$b>
{
    static void a(final GetDocumentsCall$b getDocumentsCall$b, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, getDocumentsCall$b.btV);
        b.a(parcel, 1, getDocumentsCall$b.packageName, false);
        b.a(parcel, 2, getDocumentsCall$b.btW, false);
        b.a(parcel, 3, getDocumentsCall$b.ckt);
        b.a(parcel, 4, (Parcelable)getDocumentsCall$b.cku, n, false);
        b.D(parcel, ae);
    }
}
