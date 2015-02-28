package com.google.android.gms.games.multiplayer.realtime;

import com.google.android.gms.games.internal.*;
import com.google.android.gms.games.multiplayer.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public final class RoomEntity extends GamesDowngradeableSafeParcel implements Room
{
    public static final Parcelable$Creator<RoomEntity> CREATOR;
    private final String bMj;
    private final long bPc;
    private final ArrayList<ParticipantEntity> bPf;
    private final int bPg;
    private final String bPt;
    private final String bPu;
    private final int bPv;
    private final Bundle bPw;
    private final int bPx;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    RoomEntity(final int btV, final String bPt, final String bPu, final long bPc, final int bPv, final String bMj, final int bPg, final Bundle bPw, final ArrayList<ParticipantEntity> bPf, final int bPx) {
        this.btV = btV;
        this.bPt = bPt;
        this.bPu = bPu;
        this.bPc = bPc;
        this.bPv = bPv;
        this.bMj = bMj;
        this.bPg = bPg;
        this.bPw = bPw;
        this.bPf = bPf;
        this.bPx = bPx;
    }
    
    public RoomEntity(final Room room) {
        this.btV = 2;
        this.bPt = room.PH();
        this.bPu = room.PI();
        this.bPc = room.Pj();
        this.bPv = room.getStatus();
        this.bMj = room.getDescription();
        this.bPg = room.Pl();
        this.bPw = room.PJ();
        final ArrayList<Participant> pn = room.Pn();
        final int size = pn.size();
        this.bPf = new ArrayList<ParticipantEntity>(size);
        for (int i = 0; i < size; ++i) {
            this.bPf.add((ParticipantEntity)pn.get(i).KN());
        }
        this.bPx = room.PK();
    }
    
    static int a(final Room room) {
        return Arrays.hashCode(new Object[] { room.PH(), room.PI(), room.Pj(), room.getStatus(), room.getDescription(), room.Pl(), room.PJ(), room.Pn(), room.PK() });
    }
    
    static boolean a(final Room room, final Object o) {
        if (o instanceof Room) {
            if (room == o) {
                return true;
            }
            final Room room2 = (Room)o;
            if (E.b(room2.PH(), room.PH()) && E.b(room2.PI(), room.PI()) && E.b(room2.Pj(), room.Pj()) && E.b(room2.getStatus(), room.getStatus()) && E.b(room2.getDescription(), room.getDescription()) && E.b(room2.Pl(), room.Pl()) && E.b(room2.PJ(), room.PJ()) && E.b(room2.Pn(), room.Pn()) && E.b(room2.PK(), room.PK())) {
                return true;
            }
        }
        return false;
    }
    
    static String b(final Room room) {
        return E.ad(room).e("RoomId", room.PH()).e("CreatorId", room.PI()).e("CreationTimestamp", room.Pj()).e("RoomStatus", room.getStatus()).e("Description", room.getDescription()).e("Variant", room.Pl()).e("AutoMatchCriteria", room.PJ()).e("Participants", room.Pn()).e("AutoMatchWaitEstimateSeconds", room.PK()).toString();
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    @Override
    public final String PH() {
        return this.bPt;
    }
    
    @Override
    public final String PI() {
        return this.bPu;
    }
    
    @Override
    public final Bundle PJ() {
        return this.bPw;
    }
    
    @Override
    public final int PK() {
        return this.bPx;
    }
    
    @Override
    public final long Pj() {
        return this.bPc;
    }
    
    @Override
    public final int Pl() {
        return this.bPg;
    }
    
    public final ArrayList<Participant> Pn() {
        return new ArrayList<Participant>(this.bPf);
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return a(this, o);
    }
    
    @Override
    public final String getDescription() {
        return this.bMj;
    }
    
    @Override
    public final int getStatus() {
        return this.bPv;
    }
    
    @Override
    public final int hashCode() {
        return a(this);
    }
    
    @Override
    public final String toString() {
        return b(this);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        if (!this.KZ()) {
            c.a(this, parcel);
        }
        else {
            parcel.writeString(this.bPt);
            parcel.writeString(this.bPu);
            parcel.writeLong(this.bPc);
            parcel.writeInt(this.bPv);
            parcel.writeString(this.bMj);
            parcel.writeInt(this.bPg);
            parcel.writeBundle(this.bPw);
            final int size = this.bPf.size();
            parcel.writeInt(size);
            for (int i = 0; i < size; ++i) {
                this.bPf.get(i).writeToParcel(parcel, n);
            }
        }
    }
}
