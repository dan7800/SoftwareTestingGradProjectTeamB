package com.google.android.gms.appdatasearch;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class D implements Parcelable$Creator<DocumentSection>
{
    static void a(final DocumentSection documentSection, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, documentSection.content, false);
        b.d(parcel, 1000, documentSection.btV);
        b.a(parcel, 3, (Parcelable)documentSection.bup, n, false);
        b.d(parcel, 4, documentSection.buq);
        b.a(parcel, 5, documentSection.bur);
        b.D(parcel, ae);
    }
}
