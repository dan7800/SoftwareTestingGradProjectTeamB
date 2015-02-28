package com.google.android.gms.wallet.shared;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class b implements Parcelable$Creator<BrokerAndRelationships>
{
    static void a(final BrokerAndRelationships brokerAndRelationships, final Parcel parcel) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, brokerAndRelationships.Jt());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, brokerAndRelationships.cmk, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, brokerAndRelationships.cml);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
