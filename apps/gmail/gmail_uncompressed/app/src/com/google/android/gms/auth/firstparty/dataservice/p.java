package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.auth.firstparty.shared.*;
import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class p implements Parcelable$Creator<AccountRecoveryDataRequest>
{
    public static AccountRecoveryDataRequest F(final Parcel parcel) {
        boolean c = false;
        String p = null;
        final int ad = a.ad(parcel);
        AppDescription appDescription = null;
        String p2 = null;
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
                    p2 = a.p(parcel, int1);
                    continue;
                }
                case 3: {
                    c = a.c(parcel, int1);
                    continue;
                }
                case 4: {
                    appDescription = a.a(parcel, int1, (android.os.Parcelable$Creator<AppDescription>)AppDescription.CREATOR);
                    continue;
                }
                case 5: {
                    p = a.p(parcel, int1);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new AccountRecoveryDataRequest(g, p2, c, appDescription, p);
    }
    
    static void a(final AccountRecoveryDataRequest accountRecoveryDataRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, accountRecoveryDataRequest.version);
        b.a(parcel, 2, accountRecoveryDataRequest.acw, false);
        b.a(parcel, 3, accountRecoveryDataRequest.byf);
        b.a(parcel, 4, (Parcelable)accountRecoveryDataRequest.bxQ, n, false);
        b.a(parcel, 5, accountRecoveryDataRequest.byg, false);
        b.D(parcel, ae);
    }
}
