package com.google.android.gms.fitness.request;

import android.os.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class q implements Parcelable$Creator<DataTypeCreateRequest>
{
    static void a(final DataTypeCreateRequest dataTypeCreateRequest, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, dataTypeCreateRequest.getName(), false);
        b.d(parcel, 1000, dataTypeCreateRequest.Jt());
        b.b(parcel, 2, dataTypeCreateRequest.MN(), false);
        b.D(parcel, ae);
    }
}
