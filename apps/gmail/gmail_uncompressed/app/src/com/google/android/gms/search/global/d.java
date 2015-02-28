package com.google.android.gms.search.global;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class d implements Parcelable$Creator<GetGlobalSearchSourcesCall$GlobalSearchSource>
{
    static void a(final GetGlobalSearchSourcesCall$GlobalSearchSource getGlobalSearchSourcesCall$GlobalSearchSource, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, getGlobalSearchSourcesCall$GlobalSearchSource.btV);
        b.a(parcel, 1, getGlobalSearchSourcesCall$GlobalSearchSource.packageName, false);
        b.d(parcel, 2, getGlobalSearchSourcesCall$GlobalSearchSource.labelId);
        b.d(parcel, 3, getGlobalSearchSourcesCall$GlobalSearchSource.buy);
        b.d(parcel, 4, getGlobalSearchSourcesCall$GlobalSearchSource.iconId);
        b.a(parcel, 5, getGlobalSearchSourcesCall$GlobalSearchSource.buz, false);
        b.a(parcel, 6, getGlobalSearchSourcesCall$GlobalSearchSource.buA, false);
        b.a(parcel, 7, getGlobalSearchSourcesCall$GlobalSearchSource.buB, false);
        b.a(parcel, 8, getGlobalSearchSourcesCall$GlobalSearchSource.ckm, n);
        b.a(parcel, 9, getGlobalSearchSourcesCall$GlobalSearchSource.enabled);
        b.D(parcel, ae);
    }
}
