package com.google.android.gms.auth;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class b implements Parcelable$Creator<AccountChangeEventsRequest>
{
    static void a(final AccountChangeEventsRequest accountChangeEventsRequest, final Parcel parcel) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, accountChangeEventsRequest.bxf);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 2, accountChangeEventsRequest.bxj);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, accountChangeEventsRequest.bxh, false);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
    
    public static AccountChangeEventsRequest r(final Parcel parcel) {
        int g = 0;
        final int ad = a.ad(parcel);
        String p = null;
        int g2 = 0;
        while (parcel.dataPosition() < ad) {
            final int int1 = parcel.readInt();
            switch (0xFFFF & int1) {
                default: {
                    a.b(parcel, int1);
                    continue;
                }
                case 1: {
                    g2 = a.g(parcel, int1);
                    continue;
                }
                case 2: {
                    g = a.g(parcel, int1);
                    continue;
                }
                case 3: {
                    p = a.p(parcel, int1);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new AccountChangeEventsRequest(g2, g, p);
    }
}
