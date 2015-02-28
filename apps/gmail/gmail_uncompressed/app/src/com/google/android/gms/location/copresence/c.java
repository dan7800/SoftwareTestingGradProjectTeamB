package com.google.android.gms.location.copresence;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class c implements Parcelable$Creator<AccessKey>
{
    static void a(final AccessKey accessKey, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, accessKey.Jt());
        b.a(parcel, 2, accessKey.getPassphrase(), false);
        b.D(parcel, ae);
    }
}
