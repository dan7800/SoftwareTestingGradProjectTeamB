package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.auth.firstparty.shared.*;
import java.util.*;
import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class n implements Parcelable$Creator<AccountNameCheckResponse>
{
    public static AccountNameCheckResponse D(final Parcel parcel) {
        CaptchaChallenge captchaChallenge = null;
        final int ad = a.ad(parcel);
        int g = 0;
        String p = null;
        List<String> y = null;
        String p2 = null;
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
                    y = a.y(parcel, int1);
                    continue;
                }
                case 4: {
                    p = a.p(parcel, int1);
                    continue;
                }
                case 5: {
                    captchaChallenge = a.a(parcel, int1, (android.os.Parcelable$Creator<CaptchaChallenge>)CaptchaChallenge.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new AccountNameCheckResponse(g, p2, y, p, captchaChallenge);
    }
    
    static void a(final AccountNameCheckResponse accountNameCheckResponse, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, accountNameCheckResponse.version);
        b.a(parcel, 2, accountNameCheckResponse.bxS, false);
        b.a(parcel, 3, accountNameCheckResponse.bxT, false);
        b.a(parcel, 4, accountNameCheckResponse.bxU, false);
        b.a(parcel, 5, (Parcelable)accountNameCheckResponse.bxV, n, false);
        b.D(parcel, ae);
    }
}
