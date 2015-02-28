package com.google.android.gms.fitness.result;

import android.os.*;
import java.util.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class b implements Parcelable$Creator<DataReadResult>
{
    static void a(final DataReadResult dataReadResult, final Parcel parcel, final int n) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 1, dataReadResult.NJ());
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1000, dataReadResult.Jt());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable)dataReadResult.Jk(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 3, dataReadResult.NI());
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 5, dataReadResult.NH());
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 6, dataReadResult.MH(), false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 7, dataReadResult.NK(), false);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
