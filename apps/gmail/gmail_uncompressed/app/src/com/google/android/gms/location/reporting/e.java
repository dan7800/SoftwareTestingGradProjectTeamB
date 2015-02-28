package com.google.android.gms.location.reporting;

import android.os.*;
import android.accounts.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class e implements Parcelable$Creator<UploadRequest>
{
    static void a(final UploadRequest uploadRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, uploadRequest.Jt());
        b.a(parcel, 2, (Parcelable)uploadRequest.mr(), n, false);
        b.a(parcel, 3, uploadRequest.getReason(), false);
        b.a(parcel, 4, uploadRequest.TP());
        b.a(parcel, 5, uploadRequest.TQ());
        b.a(parcel, 6, uploadRequest.TR());
        b.a(parcel, 7, uploadRequest.TS(), false);
        b.D(parcel, ae);
    }
}
