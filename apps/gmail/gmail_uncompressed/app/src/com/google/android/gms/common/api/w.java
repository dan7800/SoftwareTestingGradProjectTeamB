package com.google.android.gms.common.api;

import android.os.*;
import android.app.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class w implements Parcelable$Creator<Status>
{
    static void a(final Status status, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, status.getStatusCode());
        b.d(parcel, 1000, status.Jt());
        b.a(parcel, 2, status.KB(), false);
        b.a(parcel, 3, (Parcelable)status.KA(), n, false);
        b.D(parcel, ae);
    }
    
    public static Status ab(final Parcel parcel) {
        PendingIntent pendingIntent = null;
        final int ad = a.ad(parcel);
        int g = 0;
        int g2 = 0;
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
                case 1000: {
                    g2 = a.g(parcel, int1);
                    continue;
                }
                case 2: {
                    p = a.p(parcel, int1);
                    continue;
                }
                case 3: {
                    pendingIntent = a.a(parcel, int1, (android.os.Parcelable$Creator<PendingIntent>)PendingIntent.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new Status(g2, g, p, pendingIntent);
    }
}
