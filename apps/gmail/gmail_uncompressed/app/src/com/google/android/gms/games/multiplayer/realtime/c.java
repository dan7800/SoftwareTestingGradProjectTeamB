package com.google.android.gms.games.multiplayer.realtime;

import com.google.android.gms.games.multiplayer.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class c implements Parcelable$Creator<RoomEntity>
{
    static void a(final RoomEntity roomEntity, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, roomEntity.PH(), false);
        b.d(parcel, 1000, roomEntity.Jt());
        b.a(parcel, 2, roomEntity.PI(), false);
        b.a(parcel, 3, roomEntity.Pj());
        b.d(parcel, 4, roomEntity.getStatus());
        b.a(parcel, 5, roomEntity.getDescription(), false);
        b.d(parcel, 6, roomEntity.Pl());
        b.a(parcel, 7, roomEntity.PJ());
        b.b(parcel, 8, roomEntity.Pn(), false);
        b.d(parcel, 9, roomEntity.PK());
        b.D(parcel, ae);
    }
    
    public RoomEntity al(final Parcel parcel) {
        int g = 0;
        ArrayList<ParticipantEntity> c = null;
        final int ad = a.ad(parcel);
        long i = 0L;
        Bundle r = null;
        int g2 = 0;
        String p = null;
        int g3 = 0;
        String p2 = null;
        String p3 = null;
        int g4 = 0;
        while (parcel.dataPosition() < ad) {
            final int int1 = parcel.readInt();
            switch (0xFFFF & int1) {
                default: {
                    a.b(parcel, int1);
                    continue;
                }
                case 1: {
                    p3 = a.p(parcel, int1);
                    continue;
                }
                case 1000: {
                    g4 = a.g(parcel, int1);
                    continue;
                }
                case 2: {
                    p2 = a.p(parcel, int1);
                    continue;
                }
                case 3: {
                    i = a.i(parcel, int1);
                    continue;
                }
                case 4: {
                    g3 = a.g(parcel, int1);
                    continue;
                }
                case 5: {
                    p = a.p(parcel, int1);
                    continue;
                }
                case 6: {
                    g2 = a.g(parcel, int1);
                    continue;
                }
                case 7: {
                    r = a.r(parcel, int1);
                    continue;
                }
                case 8: {
                    c = a.c(parcel, int1, ParticipantEntity.CREATOR);
                    continue;
                }
                case 9: {
                    g = a.g(parcel, int1);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new RoomEntity(g4, p3, p2, i, g3, p, g2, r, c, g);
    }
}
