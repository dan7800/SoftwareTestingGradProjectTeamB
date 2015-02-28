package com.google.android.gms.internal;

import android.os.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class aw implements Parcelable$Creator<lp>
{
    static void a(final lp lp, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.b(parcel, 1, lp.Mr(), false);
        b.d(parcel, 1000, lp.Jt());
        b.D(parcel, ae);
    }
}
