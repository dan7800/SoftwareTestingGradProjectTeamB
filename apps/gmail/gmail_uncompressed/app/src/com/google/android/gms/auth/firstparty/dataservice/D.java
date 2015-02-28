package com.google.android.gms.auth.firstparty.dataservice;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class d implements Parcelable$Creator<PinSettings>
{
    static void a(final PinSettings pinSettings, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, pinSettings.version);
        b.a(parcel, 2, pinSettings.byO, false);
        b.a(parcel, 3, pinSettings.byQ, false);
        b.a(parcel, 4, pinSettings.byR, false);
        b.d(parcel, 5, pinSettings.length);
        b.D(parcel, ae);
    }
}
