package com.google.android.gms.fitness.data;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class o implements Parcelable$Creator<RawDataSet>
{
    static void a(final RawDataSet set, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, set.bMe);
        b.d(parcel, 1000, set.btV);
        b.d(parcel, 2, set.bMg);
        b.b(parcel, 3, set.bMh, false);
        b.a(parcel, 4, set.bKx);
        b.D(parcel, ae);
    }
}
