package com.google.android.gms.auth.firstparty.dataservice;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class j implements Parcelable$Creator<VerifyPinRequest>
{
    static void a(final VerifyPinRequest verifyPinRequest, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, verifyPinRequest.version);
        b.a(parcel, 2, verifyPinRequest.acw, false);
        b.a(parcel, 3, verifyPinRequest.pin, false);
        b.D(parcel, ae);
    }
    
    public static VerifyPinRequest z(final Parcel parcel) {
        String p = null;
        final int ad = a.ad(parcel);
        int g = 0;
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
                    p = a.p(parcel, int1);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new VerifyPinRequest(g, p2, p);
    }
}
