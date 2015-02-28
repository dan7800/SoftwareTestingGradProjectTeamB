package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.auth.*;
import java.util.*;
import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class o implements Parcelable$Creator<AccountRecoveryData>
{
    public static AccountRecoveryData E(final Parcel parcel) {
        String p = null;
        final int ad = a.ad(parcel);
        int g = 0;
        String p2 = null;
        List<Country> c = null;
        String p3 = null;
        String p4 = null;
        String p5 = null;
        String p6 = null;
        String p7 = null;
        AccountRecoveryGuidance accountRecoveryGuidance = null;
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
                    accountRecoveryGuidance = a.a(parcel, int1, (android.os.Parcelable$Creator<AccountRecoveryGuidance>)AccountRecoveryGuidance.CREATOR);
                    continue;
                }
                case 3: {
                    p7 = a.p(parcel, int1);
                    continue;
                }
                case 4: {
                    p6 = a.p(parcel, int1);
                    continue;
                }
                case 5: {
                    p5 = a.p(parcel, int1);
                    continue;
                }
                case 6: {
                    p4 = a.p(parcel, int1);
                    continue;
                }
                case 7: {
                    p3 = a.p(parcel, int1);
                    continue;
                }
                case 8: {
                    c = a.c(parcel, int1, (android.os.Parcelable$Creator<Country>)Country.CREATOR);
                    continue;
                }
                case 9: {
                    p2 = a.p(parcel, int1);
                    continue;
                }
                case 10: {
                    p = a.p(parcel, int1);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new AccountRecoveryData(g, accountRecoveryGuidance, p7, p6, p5, p4, p3, c, p2, p);
    }
    
    static void a(final AccountRecoveryData accountRecoveryData, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, accountRecoveryData.version);
        b.a(parcel, 2, (Parcelable)accountRecoveryData.bxW, n, false);
        b.a(parcel, 3, accountRecoveryData.bxX, false);
        b.a(parcel, 4, accountRecoveryData.bxY, false);
        b.a(parcel, 5, accountRecoveryData.acw, false);
        b.a(parcel, 6, accountRecoveryData.bxZ, false);
        b.a(parcel, 7, accountRecoveryData.bya, false);
        b.b(parcel, 8, accountRecoveryData.byb, false);
        b.a(parcel, 9, accountRecoveryData.byc, false);
        b.a(parcel, 10, accountRecoveryData.byd, false);
        b.D(parcel, ae);
    }
}
