package com.google.android.gms.wearable;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class d implements Parcelable$Creator<ConnectionConfiguration>
{
    static void a(final ConnectionConfiguration connectionConfiguration, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, connectionConfiguration.btV);
        b.a(parcel, 2, connectionConfiguration.getName(), false);
        b.a(parcel, 3, connectionConfiguration.getAddress(), false);
        b.d(parcel, 4, connectionConfiguration.getType());
        b.d(parcel, 5, connectionConfiguration.getRole());
        b.a(parcel, 6, connectionConfiguration.isEnabled());
        b.a(parcel, 7, connectionConfiguration.isConnected());
        b.a(parcel, 8, connectionConfiguration.VL(), false);
        b.D(parcel, ae);
    }
}
