package com.google.android.gms.googlehelp;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class c implements Parcelable$Creator<OfflineSuggestion>
{
    static void a(final OfflineSuggestion offlineSuggestion, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, offlineSuggestion.btV);
        b.a(parcel, 2, offlineSuggestion.bzz, false);
        b.a(parcel, 3, offlineSuggestion.bGC, false);
        b.a(parcel, 4, offlineSuggestion.bQT, false);
        b.a(parcel, 5, offlineSuggestion.bQU, false);
        b.D(parcel, ae);
    }
}
