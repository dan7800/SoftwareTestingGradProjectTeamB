package com.google.android.gms.wallet.shared;

import android.accounts.*;
import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class a implements Parcelable$Creator<ApplicationParameters>
{
    static void a(final ApplicationParameters applicationParameters, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, applicationParameters.btV);
        b.d(parcel, 2, applicationParameters.cme);
        b.a(parcel, 3, (Parcelable)applicationParameters.cmi, n, false);
        b.a(parcel, 4, applicationParameters.cI);
        b.a(parcel, 5, applicationParameters.cmj);
        b.d(parcel, 6, applicationParameters.ae);
        b.D(parcel, ae);
    }
}
