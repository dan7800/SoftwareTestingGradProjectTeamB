package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.auth.firstparty.shared.*;
import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class x implements Parcelable$Creator<CheckRealNameRequest>
{
    public static CheckRealNameRequest N(final Parcel parcel) {
        final int ad = a.ad(parcel);
        String p = null;
        AppDescription appDescription = null;
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
                    appDescription = a.a(parcel, int1, (android.os.Parcelable$Creator<AppDescription>)AppDescription.CREATOR);
                    continue;
                }
                case 3: {
                    p = a.p(parcel, int1);
                    continue;
                }
                case 4: {
                    p2 = a.p(parcel, int1);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new CheckRealNameRequest(g, appDescription, p, p2);
    }
    
    static void a(final CheckRealNameRequest checkRealNameRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, checkRealNameRequest.version);
        b.a(parcel, 2, (Parcelable)checkRealNameRequest.bxQ, n, false);
        b.a(parcel, 3, checkRealNameRequest.byo, false);
        b.a(parcel, 4, checkRealNameRequest.byp, false);
        b.D(parcel, ae);
    }
}
