package com.google.android.gms.drive.metadata.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class b implements Parcelable$Creator<AppVisibleCustomProperties>
{
    static void a(final AppVisibleCustomProperties appVisibleCustomProperties, final Parcel parcel) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, appVisibleCustomProperties.btV);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 2, appVisibleCustomProperties.bIg, false);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
