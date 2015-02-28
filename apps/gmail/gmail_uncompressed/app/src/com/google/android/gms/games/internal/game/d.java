package com.google.android.gms.games.internal.game;

import android.os.*;
import android.net.*;
import com.google.android.gms.common.internal.safeparcel.*;

public class d implements Parcelable$Creator<GameBadgeEntity>
{
    static void a(final GameBadgeEntity gameBadgeEntity, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, gameBadgeEntity.getType());
        b.d(parcel, 1000, gameBadgeEntity.Jt());
        b.a(parcel, 2, gameBadgeEntity.getTitle(), false);
        b.a(parcel, 3, gameBadgeEntity.getDescription(), false);
        b.a(parcel, 4, (Parcelable)gameBadgeEntity.NR(), n, false);
        b.D(parcel, ae);
    }
    
    public GameBadgeEntity ai(final Parcel parcel) {
        int g = 0;
        Uri uri = null;
        final int ad = a.ad(parcel);
        String p = null;
        String p2 = null;
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
                    p2 = a.p(parcel, int1);
                    continue;
                }
                case 3: {
                    p = a.p(parcel, int1);
                    continue;
                }
                case 4: {
                    uri = a.a(parcel, int1, (android.os.Parcelable$Creator<Uri>)Uri.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new GameBadgeEntity(g2, g, p2, p, uri);
    }
}
