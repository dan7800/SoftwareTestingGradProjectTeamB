package com.google.android.gms.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class c implements Parcelable$Creator<bd>
{
    static void a(final bd bd, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, bd.versionCode);
        b.a(parcel, 2, bd.bRA, false);
        b.d(parcel, 3, bd.height);
        b.d(parcel, 4, bd.heightPixels);
        b.a(parcel, 5, bd.bRB);
        b.d(parcel, 6, bd.width);
        b.d(parcel, 7, bd.widthPixels);
        b.a(parcel, 8, bd.bRC, n);
        b.D(parcel, ae);
    }
}
