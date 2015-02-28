package com.google.android.gms.googlehelp.internal.common;

import android.os.*;
import android.content.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<OverflowMenuItem>
{
    static void a(final OverflowMenuItem overflowMenuItem, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, overflowMenuItem.btV);
        b.d(parcel, 2, overflowMenuItem.cH);
        b.a(parcel, 3, overflowMenuItem.bGC, false);
        b.a(parcel, 4, (Parcelable)overflowMenuItem.mIntent, n, false);
        b.D(parcel, ae);
    }
}
