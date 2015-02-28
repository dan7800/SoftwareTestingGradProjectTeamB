package com.google.android.gms.games.multiplayer.turnbased;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.games.multiplayer.*;
import com.google.android.gms.common.internal.*;
import com.google.android.gms.games.*;
import java.util.*;
import android.os.*;

public final class TurnBasedMatchEntity implements SafeParcelable, TurnBasedMatch
{
    public static final a CREATOR;
    private final byte[] Rb;
    private final String bMj;
    private final long bNY;
    private final GameEntity bOg;
    private final String bPA;
    private final String bPB;
    private final int bPC;
    private final String bPD;
    private final byte[] bPE;
    private final int bPF;
    private final int bPG;
    private final boolean bPH;
    private final String bPI;
    private final long bPc;
    private final ArrayList<ParticipantEntity> bPf;
    private final int bPg;
    private final String bPu;
    private final Bundle bPw;
    private final String bPz;
    private final int btV;
    private final int bxf;
    
    static {
        CREATOR = new a();
    }
    
    TurnBasedMatchEntity(final int btV, final GameEntity bOg, final String bPz, final String bPu, final long bPc, final String bpa, final long bny, final String bpb, final int bpc, final int bPg, final int bxf, final byte[] rb, final ArrayList<ParticipantEntity> bPf, final String bpd, final byte[] bpe, final int bpf, final Bundle bPw, final int bpg, final boolean bph, final String bMj, final String bpi) {
        this.btV = btV;
        this.bOg = bOg;
        this.bPz = bPz;
        this.bPu = bPu;
        this.bPc = bPc;
        this.bPA = bpa;
        this.bNY = bny;
        this.bPB = bpb;
        this.bPC = bpc;
        this.bPG = bpg;
        this.bPg = bPg;
        this.bxf = bxf;
        this.Rb = rb;
        this.bPf = bPf;
        this.bPD = bpd;
        this.bPE = bpe;
        this.bPF = bpf;
        this.bPw = bPw;
        this.bPH = bph;
        this.bMj = bMj;
        this.bPI = bpi;
    }
    
    public TurnBasedMatchEntity(final TurnBasedMatch turnBasedMatch) {
        this.btV = 2;
        this.bOg = new GameEntity(turnBasedMatch.OR());
        this.bPz = turnBasedMatch.PM();
        this.bPu = turnBasedMatch.PI();
        this.bPc = turnBasedMatch.Pj();
        this.bPA = turnBasedMatch.PO();
        this.bNY = turnBasedMatch.OJ();
        this.bPB = turnBasedMatch.PP();
        this.bPC = turnBasedMatch.getStatus();
        this.bPG = turnBasedMatch.PN();
        this.bPg = turnBasedMatch.Pl();
        this.bxf = turnBasedMatch.getVersion();
        this.bPD = turnBasedMatch.PQ();
        this.bPF = turnBasedMatch.PS();
        this.bPw = turnBasedMatch.PJ();
        this.bPH = turnBasedMatch.PT();
        this.bMj = turnBasedMatch.getDescription();
        this.bPI = turnBasedMatch.PU();
        final byte[] data = turnBasedMatch.getData();
        if (data == null) {
            this.Rb = null;
        }
        else {
            System.arraycopy(data, 0, this.Rb = new byte[data.length], 0, data.length);
        }
        final byte[] pr = turnBasedMatch.PR();
        if (pr == null) {
            this.bPE = null;
        }
        else {
            System.arraycopy(pr, 0, this.bPE = new byte[pr.length], 0, pr.length);
        }
        final ArrayList<Participant> pn = turnBasedMatch.Pn();
        final int size = pn.size();
        this.bPf = new ArrayList<ParticipantEntity>(size);
        for (int i = 0; i < size; ++i) {
            this.bPf.add((ParticipantEntity)pn.get(i).KN());
        }
    }
    
    static int a(final TurnBasedMatch turnBasedMatch) {
        return Arrays.hashCode(new Object[] { turnBasedMatch.OR(), turnBasedMatch.PM(), turnBasedMatch.PI(), turnBasedMatch.Pj(), turnBasedMatch.PO(), turnBasedMatch.OJ(), turnBasedMatch.PP(), turnBasedMatch.getStatus(), turnBasedMatch.PN(), turnBasedMatch.getDescription(), turnBasedMatch.Pl(), turnBasedMatch.getVersion(), turnBasedMatch.Pn(), turnBasedMatch.PQ(), turnBasedMatch.PS(), turnBasedMatch.PJ(), turnBasedMatch.Pm(), turnBasedMatch.PT() });
    }
    
    static boolean a(final TurnBasedMatch turnBasedMatch, final Object o) {
        if (o instanceof TurnBasedMatch) {
            if (turnBasedMatch == o) {
                return true;
            }
            final TurnBasedMatch turnBasedMatch2 = (TurnBasedMatch)o;
            if (E.b(turnBasedMatch2.OR(), turnBasedMatch.OR()) && E.b(turnBasedMatch2.PM(), turnBasedMatch.PM()) && E.b(turnBasedMatch2.PI(), turnBasedMatch.PI()) && E.b(turnBasedMatch2.Pj(), turnBasedMatch.Pj()) && E.b(turnBasedMatch2.PO(), turnBasedMatch.PO()) && E.b(turnBasedMatch2.OJ(), turnBasedMatch.OJ()) && E.b(turnBasedMatch2.PP(), turnBasedMatch.PP()) && E.b(turnBasedMatch2.getStatus(), turnBasedMatch.getStatus()) && E.b(turnBasedMatch2.PN(), turnBasedMatch.PN()) && E.b(turnBasedMatch2.getDescription(), turnBasedMatch.getDescription()) && E.b(turnBasedMatch2.Pl(), turnBasedMatch.Pl()) && E.b(turnBasedMatch2.getVersion(), turnBasedMatch.getVersion()) && E.b(turnBasedMatch2.Pn(), turnBasedMatch.Pn()) && E.b(turnBasedMatch2.PQ(), turnBasedMatch.PQ()) && E.b(turnBasedMatch2.PS(), turnBasedMatch.PS()) && E.b(turnBasedMatch2.PJ(), turnBasedMatch.PJ()) && E.b(turnBasedMatch2.Pm(), turnBasedMatch.Pm()) && E.b(turnBasedMatch2.PT(), turnBasedMatch.PT())) {
                return true;
            }
        }
        return false;
    }
    
    static String b(final TurnBasedMatch turnBasedMatch) {
        return E.ad(turnBasedMatch).e("Game", turnBasedMatch.OR()).e("MatchId", turnBasedMatch.PM()).e("CreatorId", turnBasedMatch.PI()).e("CreationTimestamp", turnBasedMatch.Pj()).e("LastUpdaterId", turnBasedMatch.PO()).e("LastUpdatedTimestamp", turnBasedMatch.OJ()).e("PendingParticipantId", turnBasedMatch.PP()).e("MatchStatus", turnBasedMatch.getStatus()).e("TurnStatus", turnBasedMatch.PN()).e("Description", turnBasedMatch.getDescription()).e("Variant", turnBasedMatch.Pl()).e("Data", turnBasedMatch.getData()).e("Version", turnBasedMatch.getVersion()).e("Participants", turnBasedMatch.Pn()).e("RematchId", turnBasedMatch.PQ()).e("PreviousData", turnBasedMatch.PR()).e("MatchNumber", turnBasedMatch.PS()).e("AutoMatchCriteria", turnBasedMatch.PJ()).e("AvailableAutoMatchSlots", turnBasedMatch.Pm()).e("LocallyModified", turnBasedMatch.PT()).e("DescriptionParticipantId", turnBasedMatch.PU()).toString();
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    @Override
    public final long OJ() {
        return this.bNY;
    }
    
    @Override
    public final Game OR() {
        return this.bOg;
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
    public final String PM() {
        return this.bPz;
    }
    
    @Override
    public final int PN() {
        return this.bPG;
    }
    
    @Override
    public final String PO() {
        return this.bPA;
    }
    
    @Override
    public final String PP() {
        return this.bPB;
    }
    
    @Override
    public final String PQ() {
        return this.bPD;
    }
    
    @Override
    public final byte[] PR() {
        return this.bPE;
    }
    
    @Override
    public final int PS() {
        return this.bPF;
    }
    
    @Override
    public final boolean PT() {
        return this.bPH;
    }
    
    @Override
    public final String PU() {
        return this.bPI;
    }
    
    @Override
    public final long Pj() {
        return this.bPc;
    }
    
    @Override
    public final int Pl() {
        return this.bPg;
    }
    
    @Override
    public final int Pm() {
        if (this.bPw == null) {
            return 0;
        }
        return this.bPw.getInt("max_automatch_players");
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
    public final byte[] getData() {
        return this.Rb;
    }
    
    @Override
    public final String getDescription() {
        return this.bMj;
    }
    
    @Override
    public final int getStatus() {
        return this.bPC;
    }
    
    @Override
    public final int getVersion() {
        return this.bxf;
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
        a.a(this, parcel, n);
    }
}
