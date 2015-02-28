package com.google.android.gms.auth.firstparty.proximity.data;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class d implements Parcelable$Creator<Permit>
{
    static void a(final Permit permit, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, permit.bxf);
        b.a(parcel, 2, permit.bzz, false);
        b.a(parcel, 3, permit.bzA, false);
        b.a(parcel, 5, permit.bzB, false);
        b.a(parcel, 6, (Parcelable)permit.bzC, n, false);
        b.b(parcel, 7, permit.bzD, false);
        b.a(parcel, 8, permit.bzF, false);
        b.D(parcel, ae);
    }
}
