package com.google.android.gms.fitness.data;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class b implements Parcelable$Creator<BleDevice>
{
    static void a(final BleDevice bleDevice, final Parcel parcel) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, bleDevice.getAddress(), false);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1000, bleDevice.Jt());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, bleDevice.getName(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, bleDevice.Mq(), false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 4, bleDevice.Mr(), false);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
