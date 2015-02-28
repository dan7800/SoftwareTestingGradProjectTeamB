package com.google.android.gms.fitness.result;

import android.os.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class f implements Parcelable$Creator<SessionReadResult>
{
    static void a(final SessionReadResult sessionReadResult, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.b(parcel, 1, sessionReadResult.Nd(), false);
        b.d(parcel, 1000, sessionReadResult.Jt());
        b.b(parcel, 2, sessionReadResult.NM(), false);
        b.a(parcel, 3, (Parcelable)sessionReadResult.Jk(), n, false);
        b.D(parcel, ae);
    }
}
