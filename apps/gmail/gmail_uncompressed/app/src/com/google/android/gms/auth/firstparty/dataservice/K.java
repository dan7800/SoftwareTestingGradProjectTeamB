package com.google.android.gms.auth.firstparty.dataservice;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class k implements Parcelable$Creator<VerifyPinResponse>
{
    public static VerifyPinResponse A(final Parcel parcel) {
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
        return new VerifyPinResponse(g2, g, p);
    }
    
    static void a(final VerifyPinResponse verifyPinResponse, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, verifyPinResponse.version);
        b.d(parcel, 2, verifyPinResponse.status);
        b.a(parcel, 3, verifyPinResponse.bzp, false);
        b.D(parcel, ae);
    }
}
