package com.google.android.gms.auth.firstparty.dataservice;

import android.os.*;
import com.google.android.gms.auth.firstparty.shared.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class c implements Parcelable$Creator<AccountNameCheckRequest>
{
    static void a(final AccountNameCheckRequest accountNameCheckRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, accountNameCheckRequest.version);
        b.a(parcel, 2, accountNameCheckRequest.bxN, false);
        b.a(parcel, 3, accountNameCheckRequest.bxO, false);
        b.a(parcel, 4, accountNameCheckRequest.bxP, false);
        b.a(parcel, 5, (Parcelable)accountNameCheckRequest.bxQ, n, false);
        b.a(parcel, 6, (Parcelable)accountNameCheckRequest.bxR, n, false);
        b.D(parcel, ae);
    }
    
    public static AccountNameCheckRequest t(final Parcel parcel) {
        CaptchaSolution captchaSolution = null;
        final int ad = a.ad(parcel);
        int g = 0;
        AppDescription appDescription = null;
        String p = null;
        String p2 = null;
        String p3 = null;
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
                    p3 = a.p(parcel, int1);
                    continue;
                }
                case 3: {
                    p2 = a.p(parcel, int1);
                    continue;
                }
                case 4: {
                    p = a.p(parcel, int1);
                    continue;
                }
                case 5: {
                    appDescription = a.a(parcel, int1, (android.os.Parcelable$Creator<AppDescription>)AppDescription.CREATOR);
                    continue;
                }
                case 6: {
                    captchaSolution = a.a(parcel, int1, (android.os.Parcelable$Creator<CaptchaSolution>)CaptchaSolution.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new AccountNameCheckRequest(g, p3, p2, p, appDescription, captchaSolution);
    }
}
