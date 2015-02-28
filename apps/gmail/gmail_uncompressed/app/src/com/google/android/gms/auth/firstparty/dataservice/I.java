package com.google.android.gms.auth.firstparty.dataservice;

import android.os.*;
import com.google.android.gms.auth.firstparty.shared.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class i implements Parcelable$Creator<UpdateCredentialsRequest>
{
    static void a(final UpdateCredentialsRequest updateCredentialsRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, updateCredentialsRequest.version);
        b.a(parcel, 2, (Parcelable)updateCredentialsRequest.byn, n, false);
        b.a(parcel, 3, (Parcelable)updateCredentialsRequest.bxR, n, false);
        b.D(parcel, ae);
    }
    
    public static UpdateCredentialsRequest y(final Parcel parcel) {
        final int ad = a.ad(parcel);
        AccountCredentials accountCredentials = null;
        int g = 0;
        CaptchaSolution captchaSolution = null;
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
                    accountCredentials = a.a(parcel, int1, (android.os.Parcelable$Creator<AccountCredentials>)AccountCredentials.CREATOR);
                    continue;
                }
                case 3: {
                    captchaSolution = a.a(parcel, int1, (android.os.Parcelable$Creator<CaptchaSolution>)CaptchaSolution.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new UpdateCredentialsRequest(g, accountCredentials, captchaSolution);
    }
}
