package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.auth.firstparty.shared.*;
import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class s implements Parcelable$Creator<AccountRecoveryUpdateRequest>
{
    public static AccountRecoveryUpdateRequest I(final Parcel parcel) {
        boolean c = false;
        AppDescription appDescription = null;
        final int ad = a.ad(parcel);
        String p = null;
        String p2 = null;
        String p3 = null;
        String p4 = null;
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
                    p4 = a.p(parcel, int1);
                    continue;
                }
                case 3: {
                    p3 = a.p(parcel, int1);
                    continue;
                }
                case 4: {
                    p2 = a.p(parcel, int1);
                    continue;
                }
                case 5: {
                    p = a.p(parcel, int1);
                    continue;
                }
                case 6: {
                    c = a.c(parcel, int1);
                    continue;
                }
                case 7: {
                    appDescription = a.a(parcel, int1, (android.os.Parcelable$Creator<AppDescription>)AppDescription.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new AccountRecoveryUpdateRequest(g, p4, p3, p2, p, c, appDescription);
    }
    
    static void a(final AccountRecoveryUpdateRequest accountRecoveryUpdateRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, accountRecoveryUpdateRequest.version);
        b.a(parcel, 2, accountRecoveryUpdateRequest.acw, false);
        b.a(parcel, 3, accountRecoveryUpdateRequest.bxZ, false);
        b.a(parcel, 4, accountRecoveryUpdateRequest.bya, false);
        b.a(parcel, 5, accountRecoveryUpdateRequest.byj, false);
        b.a(parcel, 6, accountRecoveryUpdateRequest.byk);
        b.a(parcel, 7, (Parcelable)accountRecoveryUpdateRequest.bxQ, n, false);
        b.D(parcel, ae);
    }
}
