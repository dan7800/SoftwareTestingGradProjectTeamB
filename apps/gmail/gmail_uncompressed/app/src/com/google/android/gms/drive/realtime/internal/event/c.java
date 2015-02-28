package com.google.android.gms.drive.realtime.internal.event;

import android.os.*;
import com.google.android.gms.common.data.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class c implements Parcelable$Creator<ParcelableEventList>
{
    static void a(final ParcelableEventList list, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, list.btV);
        b.b(parcel, 2, list.bxl, false);
        b.a(parcel, 3, (Parcelable)list.bJm, n, false);
        b.a(parcel, 4, list.bJn);
        b.a(parcel, 5, list.bJo, false);
        b.D(parcel, ae);
    }
}
