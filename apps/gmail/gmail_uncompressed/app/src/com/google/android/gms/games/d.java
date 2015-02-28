package com.google.android.gms.games;

import android.os.*;
import android.net.*;
import com.google.android.gms.games.internal.player.*;
import com.google.android.gms.common.internal.safeparcel.*;

public class d implements Parcelable$Creator<PlayerEntity>
{
    static void a(final PlayerEntity playerEntity, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, playerEntity.Ok(), false);
        b.a(parcel, 2, playerEntity.getDisplayName(), false);
        b.a(parcel, 3, (Parcelable)playerEntity.NR(), n, false);
        b.a(parcel, 4, (Parcelable)playerEntity.NT(), n, false);
        b.a(parcel, 5, playerEntity.Ol());
        b.d(parcel, 6, playerEntity.On());
        b.a(parcel, 7, playerEntity.Om());
        b.a(parcel, 8, playerEntity.NS(), false);
        b.a(parcel, 9, playerEntity.NU(), false);
        b.a(parcel, 14, playerEntity.getTitle(), false);
        b.a(parcel, 15, (Parcelable)playerEntity.Oq(), n, false);
        b.a(parcel, 16, (Parcelable)playerEntity.Op(), n, false);
        b.d(parcel, 1000, playerEntity.Jt());
        b.a(parcel, 18, playerEntity.Oo());
        b.D(parcel, ae);
    }
    
    public PlayerEntity ag(final Parcel parcel) {
        final int ad = a.ad(parcel);
        int g = 0;
        String p = null;
        String p2 = null;
        Uri uri = null;
        Uri uri2 = null;
        long i = 0L;
        int g2 = 0;
        long j = 0L;
        String p3 = null;
        String p4 = null;
        String p5 = null;
        MostRecentGameInfoEntity mostRecentGameInfoEntity = null;
        PlayerLevelInfo playerLevelInfo = null;
        boolean c = false;
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
                    uri = a.a(parcel, int1, (android.os.Parcelable$Creator<Uri>)Uri.CREATOR);
                    continue;
                }
                case 4: {
                    uri2 = a.a(parcel, int1, (android.os.Parcelable$Creator<Uri>)Uri.CREATOR);
                    continue;
                }
                case 5: {
                    i = a.i(parcel, int1);
                    continue;
                }
                case 6: {
                    g2 = a.g(parcel, int1);
                    continue;
                }
                case 7: {
                    j = a.i(parcel, int1);
                    continue;
                }
                case 8: {
                    p3 = a.p(parcel, int1);
                    continue;
                }
                case 9: {
                    p4 = a.p(parcel, int1);
                    continue;
                }
                case 14: {
                    p5 = a.p(parcel, int1);
                    continue;
                }
                case 15: {
                    mostRecentGameInfoEntity = a.a(parcel, int1, (android.os.Parcelable$Creator<MostRecentGameInfoEntity>)MostRecentGameInfoEntity.CREATOR);
                    continue;
                }
                case 16: {
                    playerLevelInfo = a.a(parcel, int1, (android.os.Parcelable$Creator<PlayerLevelInfo>)PlayerLevelInfo.CREATOR);
                    continue;
                }
                case 1000: {
                    g = a.g(parcel, int1);
                    continue;
                }
                case 18: {
                    c = a.c(parcel, int1);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new PlayerEntity(g, p, p2, uri, uri2, i, g2, j, p3, p4, p5, mostRecentGameInfoEntity, playerLevelInfo, c);
    }
}
