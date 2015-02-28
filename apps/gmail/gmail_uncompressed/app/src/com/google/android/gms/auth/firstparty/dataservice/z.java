package com.google.android.gms.auth.firstparty.dataservice;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class z implements Parcelable$Creator<ClearTokenRequest>
{
    public static ClearTokenRequest P(final Parcel parcel) {
        final int ad = a.ad(parcel);
        int g = 0;
        String p = null;
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
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new ClearTokenRequest(g, p);
    }
    
    static void a(final ClearTokenRequest clearTokenRequest, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, clearTokenRequest.version);
        b.a(parcel, 2, clearTokenRequest.byq, false);
        b.D(parcel, ae);
    }
}
