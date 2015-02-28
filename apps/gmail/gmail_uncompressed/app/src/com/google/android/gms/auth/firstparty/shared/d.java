package com.google.android.gms.auth.firstparty.shared;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class d implements Parcelable$Creator<CaptchaSolution>
{
    static void a(final CaptchaSolution captchaSolution, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, captchaSolution.version);
        b.a(parcel, 2, captchaSolution.byq, false);
        b.a(parcel, 3, captchaSolution.bzT, false);
        b.D(parcel, ae);
    }
}
