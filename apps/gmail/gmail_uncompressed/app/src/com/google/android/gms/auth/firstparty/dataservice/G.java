package com.google.android.gms.auth.firstparty.dataservice;

import android.os.*;
import com.google.android.gms.auth.firstparty.shared.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class g implements Parcelable$Creator<TokenRequest>
{
    static void a(final TokenRequest tokenRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, tokenRequest.version);
        b.a(parcel, 2, tokenRequest.byV, false);
        b.a(parcel, 3, tokenRequest.acw, false);
        b.a(parcel, 4, tokenRequest.byv);
        b.a(parcel, 5, (Parcelable)tokenRequest.byW, n, false);
        b.a(parcel, 6, (Parcelable)tokenRequest.byX, n, false);
        b.a(parcel, 7, tokenRequest.byA);
        b.a(parcel, 8, tokenRequest.byl);
        b.a(parcel, 9, tokenRequest.byY, false);
        b.a(parcel, 10, (Parcelable)tokenRequest.bxQ, n, false);
        b.a(parcel, 11, (Parcelable)tokenRequest.bxR, n, false);
        b.a(parcel, 12, tokenRequest.byZ);
        b.a(parcel, 13, tokenRequest.bza);
        b.a(parcel, 14, tokenRequest.bzb);
        b.D(parcel, ae);
    }
    
    public static TokenRequest w(final Parcel parcel) {
        final int ad = a.ad(parcel);
        int g = 0;
        String p = null;
        String p2 = null;
        Bundle r = new Bundle();
        FACLConfig faclConfig = null;
        PACLConfig paclConfig = null;
        boolean c = false;
        boolean c2 = false;
        String p3 = "com.google.android.gms.auth.firstparty.shared.Consent.UNKNOWN.toString()";
        AppDescription appDescription = null;
        CaptchaSolution captchaSolution = null;
        boolean c3 = false;
        boolean c4 = false;
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
                    p2 = a.p(parcel, int1);
                    continue;
                }
                case 4: {
                    r = a.r(parcel, int1);
                    continue;
                }
                case 5: {
                    faclConfig = a.a(parcel, int1, (android.os.Parcelable$Creator<FACLConfig>)FACLConfig.CREATOR);
                    continue;
                }
                case 6: {
                    paclConfig = a.a(parcel, int1, (android.os.Parcelable$Creator<PACLConfig>)PACLConfig.CREATOR);
                    continue;
                }
                case 7: {
                    c = a.c(parcel, int1);
                    continue;
                }
                case 8: {
                    c2 = a.c(parcel, int1);
                    continue;
                }
                case 9: {
                    p3 = a.p(parcel, int1);
                    continue;
                }
                case 10: {
                    appDescription = a.a(parcel, int1, (android.os.Parcelable$Creator<AppDescription>)AppDescription.CREATOR);
                    continue;
                }
                case 11: {
                    captchaSolution = a.a(parcel, int1, (android.os.Parcelable$Creator<CaptchaSolution>)CaptchaSolution.CREATOR);
                    continue;
                }
                case 12: {
                    c3 = a.c(parcel, int1);
                    continue;
                }
                case 13: {
                    c4 = a.c(parcel, int1);
                    continue;
                }
                case 14: {
                    a.c(parcel, int1);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new TokenRequest(g, p, p2, r, faclConfig, paclConfig, c, c2, p3, appDescription, captchaSolution, c3, c4);
    }
}
