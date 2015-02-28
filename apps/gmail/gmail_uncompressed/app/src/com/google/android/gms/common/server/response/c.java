package com.google.android.gms.common.server.response;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class c implements Parcelable$Creator<FieldMappingDictionary$FieldMapPair>
{
    static void a(final FieldMappingDictionary$FieldMapPair fieldMappingDictionary$FieldMapPair, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, fieldMappingDictionary$FieldMapPair.versionCode);
        b.a(parcel, 2, fieldMappingDictionary$FieldMapPair.key, false);
        b.a(parcel, 3, (Parcelable)fieldMappingDictionary$FieldMapPair.bGa, n, false);
        b.D(parcel, ae);
    }
}
