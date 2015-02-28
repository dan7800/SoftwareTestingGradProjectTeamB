package com.google.android.gms.auth.firstparty.shared;

import android.os.*;
import android.graphics.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class c implements Parcelable$Creator<CaptchaChallenge>
{
    static void a(final CaptchaChallenge captchaChallenge, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, captchaChallenge.version);
        b.a(parcel, 2, captchaChallenge.bxS, false);
        b.a(parcel, 3, captchaChallenge.byq, false);
        b.a(parcel, 4, (Parcelable)captchaChallenge.bzS, n, false);
        b.D(parcel, ae);
    }
}
