package com.google.android.gms.maps.model;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class q implements Parcelable$Creator<Tile>
{
    static void a(final Tile tile, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, tile.Jt());
        b.d(parcel, 2, tile.width);
        b.d(parcel, 3, tile.height);
        b.a(parcel, 4, tile.cfR);
        b.D(parcel, ae);
    }
    
    public static Tile as(final Parcel parcel) {
        int g = 0;
        final int ad = a.ad(parcel);
        byte[] s = null;
        int g2 = 0;
        int g3 = 0;
        while (parcel.dataPosition() < ad) {
            final int int1 = parcel.readInt();
            switch (0xFFFF & int1) {
                default: {
                    a.b(parcel, int1);
                    continue;
                }
                case 1: {
                    g3 = a.g(parcel, int1);
                    continue;
                }
                case 2: {
                    g2 = a.g(parcel, int1);
                    continue;
                }
                case 3: {
                    g = a.g(parcel, int1);
                    continue;
                }
                case 4: {
                    s = a.s(parcel, int1);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new Tile(g3, g2, g, s);
    }
}
