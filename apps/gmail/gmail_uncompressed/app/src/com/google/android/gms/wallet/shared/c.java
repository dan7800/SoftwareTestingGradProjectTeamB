package com.google.android.gms.wallet.shared;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class c implements Parcelable$Creator<BuyFlowConfig>
{
    static void a(final BuyFlowConfig buyFlowConfig, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, buyFlowConfig.btV);
        b.a(parcel, 2, buyFlowConfig.cmm, false);
        b.a(parcel, 3, (Parcelable)buyFlowConfig.cmn, n, false);
        b.a(parcel, 4, buyFlowConfig.cmo, false);
        b.a(parcel, 5, buyFlowConfig.cmp, false);
        b.a(parcel, 6, buyFlowConfig.cmq, false);
        b.D(parcel, ae);
    }
}
