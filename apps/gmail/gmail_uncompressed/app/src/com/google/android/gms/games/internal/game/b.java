package com.google.android.gms.games.internal.game;

import android.os.*;
import com.google.android.gms.games.*;
import com.google.android.gms.games.snapshot.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public class b implements Parcelable$Creator<ExtendedGameEntity>
{
    static void a(final ExtendedGameEntity extendedGameEntity, final Parcel parcel, final int n) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, (Parcelable)extendedGameEntity.Pc(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1000, extendedGameEntity.Jt());
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 2, extendedGameEntity.OT());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, extendedGameEntity.OU());
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 4, extendedGameEntity.OV());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, extendedGameEntity.OW());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, extendedGameEntity.OX());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, extendedGameEntity.OY(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, extendedGameEntity.OZ());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, extendedGameEntity.Pa(), false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 10, extendedGameEntity.OS(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, (Parcelable)extendedGameEntity.Pb(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
    
    public ExtendedGameEntity ah(final Parcel parcel) {
        final int ad = a.ad(parcel);
        int g = 0;
        GameEntity gameEntity = null;
        int g2 = 0;
        boolean c = false;
        int g3 = 0;
        long i = 0L;
        long j = 0L;
        String p = null;
        long k = 0L;
        String p2 = null;
        ArrayList<GameBadgeEntity> c2 = null;
        SnapshotMetadataEntity snapshotMetadataEntity = null;
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
                    g = a.g(parcel, int1);
                    continue;
                }
                case 2: {
                    g2 = a.g(parcel, int1);
                    continue;
                }
                case 3: {
                    c = a.c(parcel, int1);
                    continue;
                }
                case 4: {
                    g3 = a.g(parcel, int1);
                    continue;
                }
                case 5: {
                    i = a.i(parcel, int1);
                    continue;
                }
                case 6: {
                    j = a.i(parcel, int1);
                    continue;
                }
                case 7: {
                    p = a.p(parcel, int1);
                    continue;
                }
                case 8: {
                    k = a.i(parcel, int1);
                    continue;
                }
                case 9: {
                    p2 = a.p(parcel, int1);
                    continue;
                }
                case 10: {
                    c2 = a.c(parcel, int1, (android.os.Parcelable$Creator<GameBadgeEntity>)GameBadgeEntity.CREATOR);
                    continue;
                }
                case 11: {
                    snapshotMetadataEntity = a.a(parcel, int1, (android.os.Parcelable$Creator<SnapshotMetadataEntity>)SnapshotMetadataEntity.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new ExtendedGameEntity(g, gameEntity, g2, c, g3, i, j, p, k, p2, c2, snapshotMetadataEntity);
    }
}
