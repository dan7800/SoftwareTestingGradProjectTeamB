package com.google.android.gms.auth.firstparty.dataservice;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class q implements Parcelable$Creator<AccountRecoveryGuidance>
{
    public static AccountRecoveryGuidance G(final Parcel parcel) {
        boolean c = false;
        final int ad = a.ad(parcel);
        String p = null;
        boolean c2 = false;
        boolean c3 = false;
        int g = 0;
        while (parcel.dataPosition() < ad) {
            final int int1 = parcel.readInt();
            switch (0xFFFF & int1) {
                default: {
                    a.b(parcel, int1);
                    continue;
                }
                case 1: {
                    g = a.g(parcel, int1);
                    continue;
                }
                case 2: {
                    p = a.p(parcel, int1);
                    continue;
                }
                case 3: {
                    c3 = a.c(parcel, int1);
                    continue;
                }
                case 4: {
                    c2 = a.c(parcel, int1);
                    continue;
                }
                case 5: {
                    c = a.c(parcel, int1);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new AccountRecoveryGuidance(g, p, c3, c2, c);
    }
    
    static void a(final AccountRecoveryGuidance accountRecoveryGuidance, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, accountRecoveryGuidance.version);
        b.a(parcel, 2, accountRecoveryGuidance.acw, false);
        b.a(parcel, 3, accountRecoveryGuidance.bxt);
        b.a(parcel, 4, accountRecoveryGuidance.byh);
        b.a(parcel, 5, accountRecoveryGuidance.byi);
        b.D(parcel, ae);
    }
}
