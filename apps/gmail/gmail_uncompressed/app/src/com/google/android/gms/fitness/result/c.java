package com.google.android.gms.fitness.result;

import android.os.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class c implements Parcelable$Creator<DataSourcesResult>
{
    static void a(final DataSourcesResult dataSourcesResult, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.b(parcel, 1, dataSourcesResult.Nc(), false);
        b.d(parcel, 1000, dataSourcesResult.Jt());
        b.a(parcel, 2, (Parcelable)dataSourcesResult.Jk(), n, false);
        b.D(parcel, ae);
    }
}
