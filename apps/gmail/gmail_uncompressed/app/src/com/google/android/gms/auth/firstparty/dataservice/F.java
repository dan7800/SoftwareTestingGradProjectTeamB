package com.google.android.gms.auth.firstparty.dataservice;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class f implements Parcelable$Creator<ReauthSettingsResponse>
{
    static void a(final ReauthSettingsResponse reauthSettingsResponse, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, reauthSettingsResponse.version);
        b.d(parcel, 2, reauthSettingsResponse.status);
        b.a(parcel, 3, (Parcelable)reauthSettingsResponse.byT, n, false);
        b.a(parcel, 4, (Parcelable)reauthSettingsResponse.byU, n, false);
        b.D(parcel, ae);
    }
    
    public static ReauthSettingsResponse v(final Parcel parcel) {
        final int ad = a.ad(parcel);
        PasswordSettings passwordSettings = null;
        int g = 0;
        int g2 = 0;
        PinSettings pinSettings = null;
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
                    passwordSettings = a.a(parcel, int1, (android.os.Parcelable$Creator<PasswordSettings>)PasswordSettings.CREATOR);
                    continue;
                }
                case 4: {
                    pinSettings = a.a(parcel, int1, (android.os.Parcelable$Creator<PinSettings>)PinSettings.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new ReauthSettingsResponse(g2, g, passwordSettings, pinSettings);
    }
}
