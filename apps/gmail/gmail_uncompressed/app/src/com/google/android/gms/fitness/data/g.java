package com.google.android.gms.fitness.data;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class g implements Parcelable$Creator<DataType>
{
    static void a(final DataType dataType, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, dataType.getName(), false);
        b.d(parcel, 1000, dataType.Jt());
        b.b(parcel, 2, dataType.MN(), false);
        b.D(parcel, ae);
    }
}
