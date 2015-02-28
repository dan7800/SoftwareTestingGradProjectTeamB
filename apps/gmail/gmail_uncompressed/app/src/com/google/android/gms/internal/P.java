package com.google.android.gms.internal;

import android.content.pm.*;
import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;
import java.util.*;

public final class p implements Parcelable$Creator<fn>
{
    static void a(final fn fn, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, fn.versionCode);
        b.a(parcel, 2, fn.bSl);
        b.a(parcel, 3, (Parcelable)fn.bSm, n, false);
        b.a(parcel, 4, (Parcelable)fn.bSn, n, false);
        b.a(parcel, 5, fn.bSo, false);
        b.a(parcel, 6, (Parcelable)fn.applicationInfo, n, false);
        b.a(parcel, 7, (Parcelable)fn.bSp, n, false);
        b.a(parcel, 8, fn.bSq, false);
        b.a(parcel, 9, fn.bSr, false);
        b.a(parcel, 10, fn.bzP, false);
        b.a(parcel, 11, (Parcelable)fn.bSd, n, false);
        b.a(parcel, 12, fn.bSs);
        b.d(parcel, 13, fn.bSt);
        b.a(parcel, 14, fn.bSu, false);
        b.a(parcel, 15, fn.bSv);
        b.a(parcel, 16, fn.bSw);
        b.D(parcel, ae);
    }
}
