package com.google.android.gms.games.multiplayer;

import com.google.android.gms.games.internal.*;
import com.google.android.gms.common.internal.*;
import com.google.android.gms.games.*;
import java.util.*;
import android.os.*;
import com.google.android.gms.common.data.*;

public final class InvitationEntity extends GamesDowngradeableSafeParcel implements Invitation
{
    public static final Parcelable$Creator<InvitationEntity> CREATOR;
    private final GameEntity bOg;
    private final String bPb;
    private final long bPc;
    private final int bPd;
    private final ParticipantEntity bPe;
    private final ArrayList<ParticipantEntity> bPf;
    private final int bPg;
    private final int bPh;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    InvitationEntity(final int btV, final GameEntity bOg, final String bPb, final long bPc, final int bPd, final ParticipantEntity bPe, final ArrayList<ParticipantEntity> bPf, final int bPg, final int bPh) {
        this.btV = btV;
        this.bOg = bOg;
        this.bPb = bPb;
        this.bPc = bPc;
        this.bPd = bPd;
        this.bPe = bPe;
        this.bPf = bPf;
        this.bPg = bPg;
        this.bPh = bPh;
    }
    
    InvitationEntity(final Invitation invitation) {
        this.btV = 2;
        this.bOg = new GameEntity(invitation.OR());
        this.bPb = invitation.Ph();
        this.bPc = invitation.Pj();
        this.bPd = invitation.Pk();
        this.bPg = invitation.Pl();
        this.bPh = invitation.Pm();
        final String pc = invitation.Pi().PC();
        Object o = null;
        final ArrayList<Participant> pn = invitation.Pn();
        final int size = pn.size();
        this.bPf = new ArrayList<ParticipantEntity>(size);
        for (int i = 0; i < size; ++i) {
            final Participant participant = pn.get(i);
            if (participant.PC().equals(pc)) {
                o = participant;
            }
            this.bPf.add(((e<ParticipantEntity>)participant).KN());
        }
        G.f(o, "Must have a valid inviter!");
        this.bPe = ((e<ParticipantEntity>)o).KN();
    }
    
    static int a(final Invitation invitation) {
        return Arrays.hashCode(new Object[] { invitation.OR(), invitation.Ph(), invitation.Pj(), invitation.Pk(), invitation.Pi(), invitation.Pn(), invitation.Pl(), invitation.Pm() });
    }
    
    static boolean a(final Invitation invitation, final Object o) {
        if (o instanceof Invitation) {
            if (invitation == o) {
                return true;
            }
            final Invitation invitation2 = (Invitation)o;
            if (E.b(invitation2.OR(), invitation.OR()) && E.b(invitation2.Ph(), invitation.Ph()) && E.b(invitation2.Pj(), invitation.Pj()) && E.b(invitation2.Pk(), invitation.Pk()) && E.b(invitation2.Pi(), invitation.Pi()) && E.b(invitation2.Pn(), invitation.Pn()) && E.b(invitation2.Pl(), invitation.Pl()) && E.b(invitation2.Pm(), invitation.Pm())) {
                return true;
            }
        }
        return false;
    }
    
    static String b(final Invitation invitation) {
        return E.ad(invitation).e("Game", invitation.OR()).e("InvitationId", invitation.Ph()).e("CreationTimestamp", invitation.Pj()).e("InvitationType", invitation.Pk()).e("Inviter", invitation.Pi()).e("Participants", invitation.Pn()).e("Variant", invitation.Pl()).e("AvailableAutoMatchSlots", invitation.Pm()).toString();
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    @Override
    public final Game OR() {
        return this.bOg;
    }
    
    @Override
    public final String Ph() {
        return this.bPb;
    }
    
    @Override
    public final Participant Pi() {
        return this.bPe;
    }
    
    @Override
    public final long Pj() {
        return this.bPc;
    }
    
    @Override
    public final int Pk() {
        return this.bPd;
    }
    
    @Override
    public final int Pl() {
        return this.bPg;
    }
    
    @Override
    public final int Pm() {
        return this.bPh;
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
    public final int hashCode() {
        return a(this);
    }
    
    @Override
    public final String toString() {
        return b(this);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        if (!this.KZ()) {
            b.a(this, parcel, n);
        }
        else {
            this.bOg.writeToParcel(parcel, n);
            parcel.writeString(this.bPb);
            parcel.writeLong(this.bPc);
            parcel.writeInt(this.bPd);
            this.bPe.writeToParcel(parcel, n);
            final int size = this.bPf.size();
            parcel.writeInt(size);
            for (int i = 0; i < size; ++i) {
                this.bPf.get(i).writeToParcel(parcel, n);
            }
        }
    }
}
