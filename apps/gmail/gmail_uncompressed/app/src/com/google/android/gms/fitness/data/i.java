package com.google.android.gms.fitness.data;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class i implements Parcelable$Creator<Field>
{
    static void a(final Field field, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, field.getName(), false);
        b.d(parcel, 1000, field.Jt());
        b.d(parcel, 2, field.getFormat());
        b.D(parcel, ae);
    }
}
