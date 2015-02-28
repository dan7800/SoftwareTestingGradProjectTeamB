package com.google.android.gms.drive.events;

import android.os.*;
import com.google.android.gms.drive.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<ChangeEvent>
{
    static void a(final ChangeEvent changeEvent, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, changeEvent.btV);
        b.a(parcel, 2, (Parcelable)changeEvent.bGk, n, false);
        b.d(parcel, 3, changeEvent.bGQ);
        b.D(parcel, ae);
    }
}
