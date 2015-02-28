package com.google.android.gms.wallet.wobs;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class e implements Parcelable$Creator<LoyaltyPointsBalance>
{
    static void a(final LoyaltyPointsBalance loyaltyPointsBalance, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, loyaltyPointsBalance.Jt());
        b.d(parcel, 2, loyaltyPointsBalance.cmz);
        b.a(parcel, 3, loyaltyPointsBalance.cmA, false);
        b.a(parcel, 4, loyaltyPointsBalance.cmB);
        b.a(parcel, 5, loyaltyPointsBalance.cmC, false);
        b.a(parcel, 6, loyaltyPointsBalance.cmD);
        b.d(parcel, 7, loyaltyPointsBalance.cmE);
        b.D(parcel, ae);
    }
}
