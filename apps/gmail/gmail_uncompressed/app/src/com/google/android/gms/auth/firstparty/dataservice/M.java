package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.auth.firstparty.shared.*;
import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class m implements Parcelable$Creator<WebSetupConfigRequest>
{
    public static WebSetupConfigRequest C(final Parcel parcel) {
        final int ad = a.ad(parcel);
        int g = 0;
        AppDescription appDescription = null;
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
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new WebSetupConfigRequest(g, appDescription);
    }
    
    static void a(final WebSetupConfigRequest webSetupConfigRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, webSetupConfigRequest.version);
        b.a(parcel, 2, (Parcelable)webSetupConfigRequest.bxQ, n, false);
        b.D(parcel, ae);
    }
}
