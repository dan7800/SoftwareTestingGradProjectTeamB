package com.google.android.gms.cast;

import android.os.*;
import com.google.android.gms.common.images.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class b implements Parcelable$Creator<CastDevice>
{
    static void a(final CastDevice castDevice, final Parcel parcel) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, castDevice.Jt());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, castDevice.getDeviceId(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, castDevice.bBp, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, castDevice.Kb(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, castDevice.Kc(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, castDevice.Kd(), false);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 7, castDevice.Ke());
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 8, castDevice.Kf(), false);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 9, castDevice.getCapabilities());
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 10, castDevice.getStatus());
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
