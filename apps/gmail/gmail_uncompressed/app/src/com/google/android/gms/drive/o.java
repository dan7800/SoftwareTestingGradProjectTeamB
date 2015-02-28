package com.google.android.gms.drive;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class o implements Parcelable$Creator<Contents>
{
    static void a(final Contents contents, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, contents.btV);
        b.a(parcel, 2, (Parcelable)contents.bEA, n, false);
        b.d(parcel, 3, contents.bGi);
        b.d(parcel, 4, contents.bGj);
        b.a(parcel, 5, (Parcelable)contents.bGk, n, false);
        b.a(parcel, 7, contents.bGl);
        b.D(parcel, ae);
    }
}
