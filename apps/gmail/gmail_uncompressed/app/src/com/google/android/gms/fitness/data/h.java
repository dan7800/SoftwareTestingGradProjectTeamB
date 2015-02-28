package com.google.android.gms.fitness.data;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class h implements Parcelable$Creator<Device>
{
    static void a(final Device device, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, device.getManufacturer(), false);
        b.d(parcel, 1000, device.Jt());
        b.a(parcel, 2, device.getModel(), false);
        b.a(parcel, 3, device.getVersion(), false);
        b.a(parcel, 4, device.MS(), false);
        b.d(parcel, 5, device.getType());
        b.d(parcel, 6, device.MP());
        b.D(parcel, ae);
    }
}
