package com.google.android.gms.internal;

import android.os.*;
import java.util.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class da implements Parcelable$Creator<rj$g>
{
    static void a(final rj$g rj$g, final Parcel parcel) {
        final int ae = b.ae(parcel);
        final Set<Integer> bXw = rj$g.bXw;
        if (bXw.contains(1)) {
            b.d(parcel, 1, rj$g.btV);
        }
        if (bXw.contains(2)) {
            b.a(parcel, 2, rj$g.bZc);
        }
        if (bXw.contains(3)) {
            b.a(parcel, 3, rj$g.mValue, true);
        }
        b.D(parcel, ae);
    }
}
