package com.google.android.gms.games;

import android.os.*;
import android.net.*;
import com.google.android.gms.common.internal.safeparcel.*;

public class b implements Parcelable$Creator<GameEntity>
{
    static void a(final GameEntity gameEntity, final Parcel parcel, final int n) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, gameEntity.JX(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, gameEntity.getDisplayName(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, gameEntity.NO(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, gameEntity.NP(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, gameEntity.getDescription(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, gameEntity.NQ(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, (Parcelable)gameEntity.NR(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, (Parcelable)gameEntity.NT(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, (Parcelable)gameEntity.NV(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, gameEntity.NX());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, gameEntity.NZ());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, gameEntity.Oa(), false);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 13, gameEntity.Ob());
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 14, gameEntity.Oc());
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 15, gameEntity.Od());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 17, gameEntity.Of());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 16, gameEntity.Oe());
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1000, gameEntity.Jt());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 19, gameEntity.NU(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 18, gameEntity.NS(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 21, gameEntity.isMuted());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 20, gameEntity.NW(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 23, gameEntity.Og());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 22, gameEntity.NY());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 24, gameEntity.Oh(), false);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
    
    public GameEntity af(final Parcel parcel) {
        final int ad = a.ad(parcel);
        int g = 0;
        String p = null;
        String p2 = null;
        String p3 = null;
        String p4 = null;
        String p5 = null;
        String p6 = null;
        Uri uri = null;
        Uri uri2 = null;
        Uri uri3 = null;
        boolean c = false;
        boolean c2 = false;
        String p7 = null;
        int g2 = 0;
        int g3 = 0;
        int g4 = 0;
        boolean c3 = false;
        boolean c4 = false;
        String p8 = null;
        String p9 = null;
        String p10 = null;
        boolean c5 = false;
        boolean c6 = false;
        boolean c7 = false;
        String p11 = null;
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
                case 2: {
                    p2 = a.p(parcel, int1);
                    continue;
                }
                case 3: {
                    p3 = a.p(parcel, int1);
                    continue;
                }
                case 4: {
                    p4 = a.p(parcel, int1);
                    continue;
                }
                case 5: {
                    p5 = a.p(parcel, int1);
                    continue;
                }
                case 6: {
                    p6 = a.p(parcel, int1);
                    continue;
                }
                case 7: {
                    uri = a.a(parcel, int1, (android.os.Parcelable$Creator<Uri>)Uri.CREATOR);
                    continue;
                }
                case 8: {
                    uri2 = a.a(parcel, int1, (android.os.Parcelable$Creator<Uri>)Uri.CREATOR);
                    continue;
                }
                case 9: {
                    uri3 = a.a(parcel, int1, (android.os.Parcelable$Creator<Uri>)Uri.CREATOR);
                    continue;
                }
                case 10: {
                    c = a.c(parcel, int1);
                    continue;
                }
                case 11: {
                    c2 = a.c(parcel, int1);
                    continue;
                }
                case 12: {
                    p7 = a.p(parcel, int1);
                    continue;
                }
                case 13: {
                    g2 = a.g(parcel, int1);
                    continue;
                }
                case 14: {
                    g3 = a.g(parcel, int1);
                    continue;
                }
                case 15: {
                    g4 = a.g(parcel, int1);
                    continue;
                }
                case 17: {
                    c4 = a.c(parcel, int1);
                    continue;
                }
                case 16: {
                    c3 = a.c(parcel, int1);
                    continue;
                }
                case 1000: {
                    g = a.g(parcel, int1);
                    continue;
                }
                case 19: {
                    p9 = a.p(parcel, int1);
                    continue;
                }
                case 18: {
                    p8 = a.p(parcel, int1);
                    continue;
                }
                case 21: {
                    c5 = a.c(parcel, int1);
                    continue;
                }
                case 20: {
                    p10 = a.p(parcel, int1);
                    continue;
                }
                case 23: {
                    c7 = a.c(parcel, int1);
                    continue;
                }
                case 22: {
                    c6 = a.c(parcel, int1);
                    continue;
                }
                case 24: {
                    p11 = a.p(parcel, int1);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new GameEntity(g, p, p2, p3, p4, p5, p6, uri, uri2, uri3, c, c2, p7, g2, g3, g4, c3, c4, p8, p9, p10, c5, c6, c7, p11);
    }
}
