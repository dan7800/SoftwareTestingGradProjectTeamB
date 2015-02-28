package com.google.android.gms.appdatasearch;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class r implements Parcelable$Creator<ac>
{
    static void a(final ac ac, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, ac.bwF, false);
        b.d(parcel, 1000, ac.btV);
        b.a(parcel, 2, ac.bwG, n);
        b.d(parcel, 3, ac.bwH);
        b.D(parcel, ae);
    }
    
    public static ac c(final Parcel parcel) {
        final int ad = a.ad(parcel);
        DocumentId[] array = null;
        String p = null;
        int g = 0;
        int g2 = 0;
        while (parcel.dataPosition() < ad) {
            final int int1 = parcel.readInt();
            switch (0xFFFF & int1) {
                default: {
                    a.b(parcel, int1);
                    continue;
                }
                case 1: {
                    p = a.p(parcel, int1);
                    continue;
                }
                case 1000: {
                    g = a.g(parcel, int1);
                    continue;
                }
                case 2: {
                    array = a.b(parcel, int1, (android.os.Parcelable$Creator<DocumentId>)DocumentId.CREATOR);
                    continue;
                }
                case 3: {
                    g2 = a.g(parcel, int1);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new ac(g, p, array, g2);
    }
}
