package com.google.android.gms.appdatasearch;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class t implements Parcelable$Creator<Section>
{
    static void a(final Section section, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, section.name, false);
        b.d(parcel, 1000, section.btV);
        b.a(parcel, 2, section.bws);
        b.d(parcel, 3, section.bwt);
        b.D(parcel, ae);
    }
}
