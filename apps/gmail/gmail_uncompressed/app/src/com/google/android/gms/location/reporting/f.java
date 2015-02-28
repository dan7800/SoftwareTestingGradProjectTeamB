package com.google.android.gms.location.reporting;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class f implements Parcelable$Creator<UploadRequestResult>
{
    static void a(final UploadRequestResult uploadRequestResult, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, uploadRequestResult.Jt());
        b.d(parcel, 2, uploadRequestResult.getResultCode());
        b.a(parcel, 3, uploadRequestResult.TT());
        b.D(parcel, ae);
    }
}
