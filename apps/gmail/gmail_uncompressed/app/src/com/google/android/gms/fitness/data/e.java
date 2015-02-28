package com.google.android.gms.fitness.data;

import android.os.*;
import java.util.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class e implements Parcelable$Creator<DataSet>
{
    static void a(final DataSet set, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, (Parcelable)set.MA(), n, false);
        b.d(parcel, 1000, set.Jt());
        b.a(parcel, 2, (Parcelable)set.MF(), n, false);
        b.b(parcel, 3, set.MG());
        b.b(parcel, 4, set.MH(), false);
        b.a(parcel, 5, set.Mw());
        b.D(parcel, ae);
    }
}
