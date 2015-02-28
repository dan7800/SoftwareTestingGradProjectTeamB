package com.google.android.gms.games.multiplayer;

import android.os.*;
import android.net.*;
import com.google.android.gms.games.*;
import com.google.android.gms.common.internal.safeparcel.*;

public class d implements Parcelable$Creator<ParticipantEntity>
{
    static void a(final ParticipantEntity participantEntity, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, participantEntity.PC(), false);
        b.d(parcel, 1000, participantEntity.Jt());
        b.a(parcel, 2, participantEntity.getDisplayName(), false);
        b.a(parcel, 3, (Parcelable)participantEntity.NR(), n, false);
        b.a(parcel, 4, (Parcelable)participantEntity.NT(), n, false);
        b.d(parcel, 5, participantEntity.getStatus());
        b.a(parcel, 6, participantEntity.OP(), false);
        b.a(parcel, 7, participantEntity.PB());
        b.a(parcel, 8, (Parcelable)participantEntity.OG(), n, false);
        b.d(parcel, 9, participantEntity.getCapabilities());
        b.a(parcel, 10, (Parcelable)participantEntity.PD(), n, false);
        b.a(parcel, 11, participantEntity.NS(), false);
        b.a(parcel, 12, participantEntity.NU(), false);
        b.D(parcel, ae);
    }
    
    public ParticipantEntity ak(final Parcel parcel) {
        final int ad = a.ad(parcel);
        int g = 0;
        String p = null;
        String p2 = null;
        Uri uri = null;
        Uri uri2 = null;
        int g2 = 0;
        String p3 = null;
        boolean c = false;
        PlayerEntity playerEntity = null;
        int g3 = 0;
        ParticipantResult participantResult = null;
        String p4 = null;
        String p5 = null;
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
                    g2 = a.g(parcel, int1);
                    continue;
                }
                case 6: {
                    p3 = a.p(parcel, int1);
                    continue;
                }
                case 7: {
                    c = a.c(parcel, int1);
                    continue;
                }
                case 8: {
                    playerEntity = a.a(parcel, int1, PlayerEntity.CREATOR);
                    continue;
                }
                case 9: {
                    g3 = a.g(parcel, int1);
                    continue;
                }
                case 10: {
                    participantResult = a.a(parcel, int1, (android.os.Parcelable$Creator<ParticipantResult>)ParticipantResult.CREATOR);
                    continue;
                }
                case 11: {
                    p4 = a.p(parcel, int1);
                    continue;
                }
                case 12: {
                    p5 = a.p(parcel, int1);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        return new ParticipantEntity(g, p, p2, uri, uri2, g2, p3, c, playerEntity, g3, participantResult, p4, p5);
    }
}
