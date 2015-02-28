package com.google.android.gms.wallet;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class i implements Parcelable$Creator<LineItem>
{
    static void a(final LineItem lineItem, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, lineItem.Jt());
        b.a(parcel, 2, lineItem.description, false);
        b.a(parcel, 3, lineItem.clm, false);
        b.a(parcel, 4, lineItem.cln, false);
        b.a(parcel, 5, lineItem.ckL, false);
        b.d(parcel, 6, lineItem.clo);
        b.a(parcel, 7, lineItem.ckM, false);
        b.D(parcel, ae);
    }
}
