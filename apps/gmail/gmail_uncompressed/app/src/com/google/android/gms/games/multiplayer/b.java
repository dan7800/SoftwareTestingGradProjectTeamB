package com.google.android.gms.games.multiplayer;

import android.os.*;
import com.google.android.gms.games.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public class b implements Parcelable$Creator<InvitationEntity>
{
    static void a(final InvitationEntity invitationEntity, final Parcel parcel, final int n) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, (Parcelable)invitationEntity.OR(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1000, invitationEntity.Jt());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, invitationEntity.Ph(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, invitationEntity.Pj());
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 4, invitationEntity.Pk());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, (Parcelable)invitationEntity.Pi(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 6, invitationEntity.Pn(), false);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 7, invitationEntity.Pl());
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 8, invitationEntity.Pm());
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
    
    public InvitationEntity aj(final Parcel parcel) {
        ArrayList<ParticipantEntity> c = null;
        int g = 0;
        final int ad = a.ad(parcel);
        long i = 0L;
        int g2 = 0;
        ParticipantEntity participantEntity = null;
        int g3 = 0;
        String p = null;
        GameEntity gameEntity = null;
        int g4 = 0;
        while (parcel.dataPosition() < ad) {
            final int int1 = parcel.readInt();
            switch (0xFFFF & int1) {
                default: {
                    a.b(parcel, int1);
                    continue;
                }
                case 1: {
                    gameEntity = a.a(parcel, int1, GameEntity.CREATOR);
                    continue;
                }
                case 1000: {
                    g4 = a.g(parcel, int1);
                    continue;
                }
                case 2: {
                    p = a.p(parcel, int1);
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
                    participantEntity = a.a(parcel, int1, ParticipantEntity.CREATOR);
                    continue;
                }
                case 6: {
                    c = a.c(parcel, int1, ParticipantEntity.CREATOR);
                    continue;
                }
                case 7: {
                    g2 = a.g(parcel, int1);
                    continue;
                }
                case 8: {
                    g = a.g(parcel, int1);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new InvitationEntity(g4, gameEntity, p, i, g3, participantEntity, c, g2, g);
    }
}
