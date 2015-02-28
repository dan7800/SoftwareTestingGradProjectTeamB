package com.google.android.gms.drive.realtime.internal.event;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class b implements Parcelable$Creator<ParcelableEvent>
{
    static void a(final ParcelableEvent parcelableEvent, final Parcel parcel, final int n) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, parcelableEvent.btV);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, parcelableEvent.bIT, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, parcelableEvent.bIU, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, parcelableEvent.bJb, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, parcelableEvent.bJc);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, parcelableEvent.bIX, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, parcelableEvent.bJd, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, (Parcelable)parcelableEvent.bJe, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, (Parcelable)parcelableEvent.bJf, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, (Parcelable)parcelableEvent.bJg, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, (Parcelable)parcelableEvent.bJh, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, (Parcelable)parcelableEvent.bJi, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 13, (Parcelable)parcelableEvent.bJj, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 14, (Parcelable)parcelableEvent.bJk, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 15, (Parcelable)parcelableEvent.bJl, n, false);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
