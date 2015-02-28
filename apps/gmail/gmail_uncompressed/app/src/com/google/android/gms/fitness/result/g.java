package com.google.android.gms.fitness.result;

import android.os.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class g implements Parcelable$Creator<SessionStopResult>
{
    static void a(final SessionStopResult sessionStopResult, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, sessionStopResult.Jt());
        b.a(parcel, 2, (Parcelable)sessionStopResult.Jk(), n, false);
        b.b(parcel, 3, sessionStopResult.Nd(), false);
        b.D(parcel, ae);
    }
}
