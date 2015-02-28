package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.auth.firstparty.shared.*;
import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class w implements Parcelable$Creator<AccountSignInRequest>
{
    public static AccountSignInRequest M(final Parcel parcel) {
        AccountCredentials accountCredentials = null;
        boolean c = false;
        final int ad = a.ad(parcel);
        CaptchaSolution captchaSolution = null;
        boolean c2 = false;
        AppDescription appDescription = null;
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
                    appDescription = a.a(parcel, int1, (android.os.Parcelable$Creator<AppDescription>)AppDescription.CREATOR);
                    continue;
                }
                case 3: {
                    c2 = a.c(parcel, int1);
                    continue;
                }
                case 4: {
                    c = a.c(parcel, int1);
                    continue;
                }
                case 5: {
                    captchaSolution = a.a(parcel, int1, (android.os.Parcelable$Creator<CaptchaSolution>)CaptchaSolution.CREATOR);
                    continue;
                }
                case 6: {
                    accountCredentials = a.a(parcel, int1, (android.os.Parcelable$Creator<AccountCredentials>)AccountCredentials.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new AccountSignInRequest(g, appDescription, c2, c, captchaSolution, accountCredentials);
    }
    
    static void a(final AccountSignInRequest accountSignInRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, accountSignInRequest.version);
        b.a(parcel, 2, (Parcelable)accountSignInRequest.bxQ, n, false);
        b.a(parcel, 3, accountSignInRequest.byl);
        b.a(parcel, 4, accountSignInRequest.bym);
        b.a(parcel, 5, (Parcelable)accountSignInRequest.bxR, n, false);
        b.a(parcel, 6, (Parcelable)accountSignInRequest.byn, n, false);
        b.D(parcel, ae);
    }
}
