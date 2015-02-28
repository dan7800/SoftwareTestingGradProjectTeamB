package com.google.android.gms.location.places;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class b implements Parcelable$Creator<AutocompleteFilter>
{
    static void a(final AutocompleteFilter autocompleteFilter, final Parcel parcel) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, autocompleteFilter.Ts());
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1000, autocompleteFilter.btV);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 2, autocompleteFilter.Tt(), false);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
