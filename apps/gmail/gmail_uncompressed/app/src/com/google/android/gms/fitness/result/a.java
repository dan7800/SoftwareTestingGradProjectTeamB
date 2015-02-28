package com.google.android.gms.fitness.result;

import android.os.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class a implements Parcelable$Creator<BleDevicesResult>
{
    static void a(final BleDevicesResult bleDevicesResult, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.b(parcel, 1, bleDevicesResult.NG(), false);
        b.d(parcel, 1000, bleDevicesResult.Jt());
        b.a(parcel, 2, (Parcelable)bleDevicesResult.Jk(), n, false);
        b.D(parcel, ae);
    }
}
