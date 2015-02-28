package com.google.android.gms.cast;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class c implements Parcelable$Creator<LaunchOptions>
{
    static void a(final LaunchOptions launchOptions, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, launchOptions.Jt());
        b.a(parcel, 2, launchOptions.Kg());
        b.a(parcel, 3, launchOptions.getLanguage(), false);
        b.D(parcel, ae);
    }
}
