package com.google.android.gms.auth.firstparty.dataservice;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class e implements Parcelable$Creator<ReauthSettingsRequest>
{
    static void a(final ReauthSettingsRequest reauthSettingsRequest, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, reauthSettingsRequest.version);
        b.a(parcel, 2, reauthSettingsRequest.acw, false);
        b.a(parcel, 3, reauthSettingsRequest.byS);
        b.D(parcel, ae);
    }
    
    public static ReauthSettingsRequest u(final Parcel parcel) {
        boolean c = false;
        final int ad = a.ad(parcel);
        String p = null;
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
                    p = a.p(parcel, int1);
                    continue;
                }
                case 3: {
                    c = a.c(parcel, int1);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new ReauthSettingsRequest(g, p, c);
    }
}
