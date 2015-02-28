package com.google.android.gms.lockbox;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<LockboxOptInOptions>
{
    static void a(final LockboxOptInOptions lockboxOptInOptions, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, lockboxOptInOptions.btV);
        b.d(parcel, 2, lockboxOptInOptions.ceK);
        b.d(parcel, 3, lockboxOptInOptions.ceL);
        b.D(parcel, ae);
    }
}
