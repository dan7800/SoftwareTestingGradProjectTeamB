package com.google.android.gms.location.copresence;

import android.os.*;
import com.google.android.gms.internal.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class h implements Parcelable$Creator<f>
{
    static void a(final f f, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, f.Jt());
        b.a(parcel, 2, f.isEnabled());
        b.a(parcel, 3, f.Tp());
        b.a(parcel, 7, f.Tq(), n);
        b.a(parcel, 8, f.Tr(), n);
        b.D(parcel, ae);
    }
}
