package com.google.android.gms.fitness.request;

import android.os.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class o implements Parcelable$Creator<DataSourcesRequest>
{
    static void a(final DataSourcesRequest dataSourcesRequest, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.b(parcel, 1, dataSourcesRequest.Mr(), false);
        b.d(parcel, 1000, dataSourcesRequest.Jt());
        b.a(parcel, 2, dataSourcesRequest.No());
        b.a(parcel, 3, dataSourcesRequest.Nn());
        b.D(parcel, ae);
    }
}
