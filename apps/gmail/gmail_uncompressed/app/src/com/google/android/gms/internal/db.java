package com.google.android.gms.internal;

import android.os.*;
import java.util.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class db implements Parcelable$Creator<rj$h>
{
    static void a(final rj$h rj$h, final Parcel parcel) {
        final int ae = b.ae(parcel);
        final Set<Integer> bXw = rj$h.bXw;
        if (bXw.contains(1)) {
            b.d(parcel, 1, rj$h.btV);
        }
        if (bXw.contains(3)) {
            b.d(parcel, 3, rj$h.Sf());
        }
        if (bXw.contains(4)) {
            b.a(parcel, 4, rj$h.mValue, true);
        }
        if (bXw.contains(5)) {
            b.a(parcel, 5, rj$h.bZd, true);
        }
        if (bXw.contains(6)) {
            b.d(parcel, 6, rj$h.bwX);
        }
        b.D(parcel, ae);
    }
}
