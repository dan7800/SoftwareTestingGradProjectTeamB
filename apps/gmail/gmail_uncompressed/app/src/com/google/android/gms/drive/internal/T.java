package com.google.android.gms.drive.internal;

import android.os.*;
import com.google.android.gms.common.data.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class t implements Parcelable$Creator<OnListEntriesResponse>
{
    static void a(final OnListEntriesResponse onListEntriesResponse, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, onListEntriesResponse.btV);
        b.a(parcel, 2, (Parcelable)onListEntriesResponse.bHB, n, false);
        b.a(parcel, 3, onListEntriesResponse.bHC);
        b.D(parcel, ae);
    }
}
