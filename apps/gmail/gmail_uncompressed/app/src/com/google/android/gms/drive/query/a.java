package com.google.android.gms.drive.query;

import android.os.*;
import com.google.android.gms.drive.query.internal.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class a implements Parcelable$Creator<Query>
{
    static void a(final Query query, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, query.btV);
        b.a(parcel, 1, (Parcelable)query.bIl, n, false);
        b.a(parcel, 3, query.bIm, false);
        b.a(parcel, 4, (Parcelable)query.bIn, n, false);
        b.a(parcel, 5, query.bIo, false);
        b.D(parcel, ae);
    }
}
