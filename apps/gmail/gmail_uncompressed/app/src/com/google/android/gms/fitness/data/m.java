package com.google.android.gms.fitness.data;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class m implements Parcelable$Creator<RawBucket>
{
    static void a(final RawBucket rawBucket, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, rawBucket.bKr);
        b.d(parcel, 1000, rawBucket.btV);
        b.a(parcel, 2, rawBucket.bKs);
        b.a(parcel, 3, (Parcelable)rawBucket.bKt, n, false);
        b.d(parcel, 4, rawBucket.bMd);
        b.b(parcel, 5, rawBucket.bKv, false);
        b.d(parcel, 6, rawBucket.bKw);
        b.a(parcel, 7, rawBucket.bKx);
        b.D(parcel, ae);
    }
}
