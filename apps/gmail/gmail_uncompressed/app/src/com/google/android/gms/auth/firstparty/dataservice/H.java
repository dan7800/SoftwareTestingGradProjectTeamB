package com.google.android.gms.auth.firstparty.dataservice;

import android.os.*;
import com.google.android.gms.auth.firstparty.shared.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class h implements Parcelable$Creator<TokenResponse>
{
    static void a(final TokenResponse tokenResponse, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, tokenResponse.version);
        b.a(parcel, 2, tokenResponse.acw, false);
        b.a(parcel, 3, tokenResponse.bxS, false);
        b.a(parcel, 4, tokenResponse.byq, false);
        b.a(parcel, 5, tokenResponse.bzg, false);
        b.a(parcel, 6, tokenResponse.bxU, false);
        b.a(parcel, 7, tokenResponse.bzh, false);
        b.a(parcel, 8, tokenResponse.byo, false);
        b.a(parcel, 9, tokenResponse.byp, false);
        b.a(parcel, 10, tokenResponse.bzi);
        b.a(parcel, 11, tokenResponse.bzj);
        b.a(parcel, 12, tokenResponse.bzk);
        b.a(parcel, 13, tokenResponse.bzl);
        b.a(parcel, 14, (Parcelable)tokenResponse.bxV, n, false);
        b.b(parcel, 15, tokenResponse.bzm, false);
        b.a(parcel, 17, tokenResponse.byB, false);
        b.a(parcel, 16, tokenResponse.byG, false);
        b.a(parcel, 19, tokenResponse.bzo);
        b.a(parcel, 18, tokenResponse.bzn);
        b.d(parcel, 20, tokenResponse.title);
        b.D(parcel, ae);
    }
    
    public static TokenResponse x(final Parcel parcel) {
        final int ad = a.ad(parcel);
        int g = 0;
        String p = null;
        String p2 = null;
        String p3 = null;
        String p4 = null;
        String p5 = null;
        String p6 = null;
        String p7 = null;
        String p8 = null;
        boolean c = false;
        boolean c2 = false;
        boolean c3 = false;
        boolean c4 = false;
        CaptchaChallenge captchaChallenge = null;
        ArrayList<ScopeDetail> c5 = new ArrayList<ScopeDetail>();
        String p9 = null;
        String p10 = null;
        boolean c6 = false;
        boolean c7 = false;
        int g2 = 0;
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
                    p3 = a.p(parcel, int1);
                    continue;
                }
                case 5: {
                    p4 = a.p(parcel, int1);
                    continue;
                }
                case 6: {
                    p5 = a.p(parcel, int1);
                    continue;
                }
                case 7: {
                    p6 = a.p(parcel, int1);
                    continue;
                }
                case 8: {
                    p7 = a.p(parcel, int1);
                    continue;
                }
                case 9: {
                    p8 = a.p(parcel, int1);
                    continue;
                }
                case 10: {
                    c = a.c(parcel, int1);
                    continue;
                }
                case 11: {
                    c2 = a.c(parcel, int1);
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
                    captchaChallenge = a.a(parcel, int1, (android.os.Parcelable$Creator<CaptchaChallenge>)CaptchaChallenge.CREATOR);
                    continue;
                }
                case 15: {
                    c5 = a.c(parcel, int1, (android.os.Parcelable$Creator<ScopeDetail>)ScopeDetail.CREATOR);
                    continue;
                }
                case 17: {
                    p10 = a.p(parcel, int1);
                    continue;
                }
                case 16: {
                    p9 = a.p(parcel, int1);
                    continue;
                }
                case 19: {
                    c7 = a.c(parcel, int1);
                    continue;
                }
                case 18: {
                    c6 = a.c(parcel, int1);
                    continue;
                }
                case 20: {
                    g2 = a.g(parcel, int1);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new TokenResponse(g, p, p2, p3, p4, p5, p6, p7, p8, c, c2, c3, c4, captchaChallenge, c5, p9, p10, c6, c7, g2);
    }
}
