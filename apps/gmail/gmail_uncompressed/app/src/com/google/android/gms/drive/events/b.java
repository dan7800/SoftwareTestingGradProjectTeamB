package com.google.android.gms.drive.events;

import com.google.android.gms.drive.*;
import com.google.android.gms.drive.metadata.internal.*;
import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;
import java.util.*;

public final class b implements Parcelable$Creator<CompletionEvent>
{
    static void a(final CompletionEvent completionEvent, final Parcel parcel, final int n) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, completionEvent.btV);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable)completionEvent.bGk, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, completionEvent.bxh, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, (Parcelable)completionEvent.bGR, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, (Parcelable)completionEvent.bGS, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, (Parcelable)completionEvent.bGT, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, completionEvent.bGU, false);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 8, completionEvent.bBx);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, completionEvent.bGV);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
