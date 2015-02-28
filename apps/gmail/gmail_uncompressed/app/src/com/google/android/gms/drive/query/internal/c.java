package com.google.android.gms.drive.query.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class c implements Parcelable$Creator<FieldWithSortOrder>
{
    static void a(final FieldWithSortOrder fieldWithSortOrder, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, fieldWithSortOrder.btV);
        b.a(parcel, 1, fieldWithSortOrder.bIb, false);
        b.a(parcel, 2, fieldWithSortOrder.bIu);
        b.D(parcel, ae);
    }
}
