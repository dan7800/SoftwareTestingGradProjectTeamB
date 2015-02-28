package com.google.android.gms.location.copresence;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class l implements Parcelable$Creator<OptInParams>
{
    static void a(final OptInParams optInParams, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, optInParams.Jt());
        b.a(parcel, 2, optInParams.getPackageName(), false);
        b.d(parcel, 3, optInParams.Tc());
        b.d(parcel, 4, optInParams.Td());
        b.d(parcel, 5, optInParams.Te());
        b.d(parcel, 6, optInParams.Tf());
        b.a(parcel, 7, optInParams.Tg(), false);
        b.a(parcel, 8, optInParams.Th(), false);
        b.D(parcel, ae);
    }
}
