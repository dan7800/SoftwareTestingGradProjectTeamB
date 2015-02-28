package com.google.android.gms.wallet.wobs;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class c implements Parcelable$Creator<LabelValue>
{
    static void a(final LabelValue labelValue, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, labelValue.Jt());
        b.a(parcel, 2, labelValue.label, false);
        b.a(parcel, 3, labelValue.value, false);
        b.D(parcel, ae);
    }
}
