package com.google.android.gms.drive.realtime.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class b implements Parcelable$Creator<ParcelableCollaborator>
{
    static void a(final ParcelableCollaborator parcelableCollaborator, final Parcel parcel) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, parcelableCollaborator.btV);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, parcelableCollaborator.bIR);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, parcelableCollaborator.bIS);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, parcelableCollaborator.bIT, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, parcelableCollaborator.bIU, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, parcelableCollaborator.bFK, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, parcelableCollaborator.bIV, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, parcelableCollaborator.bIW, false);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
