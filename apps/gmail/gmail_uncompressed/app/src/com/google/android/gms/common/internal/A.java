package com.google.android.gms.common.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class a implements Parcelable$Creator<ClientSettings$ParcelableClientSettings>
{
    static void a(final ClientSettings$ParcelableClientSettings clientSettings$ParcelableClientSettings, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, clientSettings$ParcelableClientSettings.FP(), false);
        b.d(parcel, 1000, clientSettings$ParcelableClientSettings.Jt());
        b.a(parcel, 2, clientSettings$ParcelableClientSettings.KU(), false);
        b.d(parcel, 3, clientSettings$ParcelableClientSettings.KW());
        b.a(parcel, 4, clientSettings$ParcelableClientSettings.KV(), false);
        b.D(parcel, ae);
    }
}
