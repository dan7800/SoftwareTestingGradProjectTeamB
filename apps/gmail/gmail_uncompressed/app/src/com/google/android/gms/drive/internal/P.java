package com.google.android.gms.drive.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class p implements Parcelable$Creator<OnDownloadProgressResponse>
{
    static void a(final OnDownloadProgressResponse onDownloadProgressResponse, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, onDownloadProgressResponse.btV);
        b.a(parcel, 2, onDownloadProgressResponse.bHw);
        b.a(parcel, 3, onDownloadProgressResponse.bHx);
        b.D(parcel, ae);
    }
}
