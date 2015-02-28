package com.google.android.gms.fitness.result;

import android.os.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class d implements Parcelable$Creator<DataTypeResult>
{
    static void a(final DataTypeResult dataTypeResult, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, (Parcelable)dataTypeResult.Jk(), n, false);
        b.d(parcel, 1000, dataTypeResult.Jt());
        b.a(parcel, 3, (Parcelable)dataTypeResult.MF(), n, false);
        b.D(parcel, ae);
    }
}
