package com.google.android.gms.internal;

import android.location.*;
import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;
import java.util.*;

public final class b implements Parcelable$Creator<ba>
{
    static void a(final ba ba, final Parcel parcel, final int n) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, ba.versionCode);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, ba.bRp);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, ba.extras);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 4, ba.bRq);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, ba.bRr, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, ba.bRs);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 7, ba.bRt);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, ba.bRu);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, ba.bRv, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, (Parcelable)ba.bRw, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, (Parcelable)ba.bRx, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, ba.bRy, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 13, ba.bRz);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
