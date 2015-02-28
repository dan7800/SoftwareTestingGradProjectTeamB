package com.google.android.gms.common.server.response;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class e implements Parcelable$Creator<FieldMappingDictionary$Entry>
{
    static void a(final FieldMappingDictionary$Entry fieldMappingDictionary$Entry, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, fieldMappingDictionary$Entry.versionCode);
        b.a(parcel, 2, fieldMappingDictionary$Entry.className, false);
        b.b(parcel, 3, fieldMappingDictionary$Entry.bFZ, false);
        b.D(parcel, ae);
    }
}
