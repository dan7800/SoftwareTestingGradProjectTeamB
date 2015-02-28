package com.google.android.gms.common.server.response;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class d implements Parcelable$Creator<FieldMappingDictionary>
{
    static void a(final FieldMappingDictionary fieldMappingDictionary, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, fieldMappingDictionary.Jt());
        b.b(parcel, 2, fieldMappingDictionary.LJ(), false);
        b.a(parcel, 3, fieldMappingDictionary.LK(), false);
        b.D(parcel, ae);
    }
}
