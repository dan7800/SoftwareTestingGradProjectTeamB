package com.google.android.gms.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class aG implements Parcelable$Creator<md>
{
    static void a(final md md, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, md.Jt());
        b.b(parcel, 2, md.bUv, false);
        b.D(parcel, ae);
    }
}
