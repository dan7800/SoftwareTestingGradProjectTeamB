package com.google.android.gms.fitness.data;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class c implements Parcelable$Creator<Bucket>
{
    static void a(final Bucket bucket, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, bucket.Mx());
        b.d(parcel, 1000, bucket.Jt());
        b.a(parcel, 2, bucket.My());
        b.a(parcel, 3, (Parcelable)bucket.Ms(), n, false);
        b.d(parcel, 4, bucket.Mt());
        b.b(parcel, 5, bucket.Mu(), false);
        b.d(parcel, 6, bucket.Mv());
        b.a(parcel, 7, bucket.Mw());
        b.D(parcel, ae);
    }
}
