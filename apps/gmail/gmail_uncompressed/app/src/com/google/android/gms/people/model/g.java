package com.google.android.gms.people.model;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class g implements Parcelable$Creator<AvatarReference>
{
    static void a(final AvatarReference avatarReference, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, avatarReference.getSource());
        b.d(parcel, 1000, avatarReference.Jt());
        b.a(parcel, 2, avatarReference.getLocation(), false);
        b.D(parcel, ae);
    }
    
    public static AvatarReference at(final Parcel parcel) {
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
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new AvatarReference(g2, g, p);
    }
}
