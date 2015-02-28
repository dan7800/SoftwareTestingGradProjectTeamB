package com.google.android.gms.common.images;

import android.os.*;
import android.net.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class h implements Parcelable$Creator<WebImage>
{
    static void a(final WebImage webImage, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, webImage.Jt());
        b.a(parcel, 2, (Parcelable)webImage.getUrl(), n, false);
        b.d(parcel, 3, webImage.getWidth());
        b.d(parcel, 4, webImage.getHeight());
        b.D(parcel, ae);
    }
}
