package com.google.android.gms.games.quest;

import com.google.android.gms.common.internal.safeparcel.*;
import android.net.*;
import com.google.android.gms.common.internal.*;
import com.google.android.gms.games.*;
import java.util.*;
import android.os.*;

public final class QuestEntity implements SafeParcelable, Quest
{
    public static final b CREATOR;
    private final int ao;
    private final String bMj;
    private final long bNY;
    private final GameEntity bOg;
    private final String bPP;
    private final long bPQ;
    private final Uri bPR;
    private final String bPS;
    private final long bPT;
    private final Uri bPU;
    private final String bPV;
    private final long bPW;
    private final long bPX;
    private final ArrayList<MilestoneEntity> bPY;
    private final int btV;
    private final int bwX;
    private final String mName;
    
    static {
        CREATOR = new b();
    }
    
    QuestEntity(final int btV, final GameEntity bOg, final String bpp, final long bpq, final Uri bpr, final String bps, final String bMj, final long bpt, final long bny, final Uri bpu, final String bpv, final String mName, final long bpw, final long bpx, final int ao, final int bwX, final ArrayList<MilestoneEntity> bpy) {
        this.btV = btV;
        this.bOg = bOg;
        this.bPP = bpp;
        this.bPQ = bpq;
        this.bPR = bpr;
        this.bPS = bps;
        this.bMj = bMj;
        this.bPT = bpt;
        this.bNY = bny;
        this.bPU = bpu;
        this.bPV = bpv;
        this.mName = mName;
        this.bPW = bpw;
        this.bPX = bpx;
        this.ao = ao;
        this.bwX = bwX;
        this.bPY = bpy;
    }
    
    public QuestEntity(final Quest quest) {
        this.btV = 2;
        this.bOg = new GameEntity(quest.OR());
        this.bPP = quest.Qb();
        this.bPQ = quest.Qf();
        this.bMj = quest.getDescription();
        this.bPR = quest.Qc();
        this.bPS = quest.Qd();
        this.bPT = quest.Qg();
        this.bPU = quest.NR();
        this.bPV = quest.NS();
        this.bNY = quest.OJ();
        this.mName = quest.getName();
        this.bPW = quest.Qh();
        this.bPX = quest.Qi();
        this.ao = quest.getState();
        this.bwX = quest.getType();
        final List<Milestone> qe = quest.Qe();
        final int size = qe.size();
        this.bPY = new ArrayList<MilestoneEntity>(size);
        for (int i = 0; i < size; ++i) {
            this.bPY.add((MilestoneEntity)qe.get(i).KN());
        }
    }
    
    static int a(final Quest quest) {
        return Arrays.hashCode(new Object[] { quest.OR(), quest.Qb(), quest.Qf(), quest.Qc(), quest.getDescription(), quest.Qg(), quest.NR(), quest.OJ(), quest.Qe(), quest.getName(), quest.Qh(), quest.Qi(), quest.getState() });
    }
    
    static boolean a(final Quest quest, final Object o) {
        if (o instanceof Quest) {
            if (quest == o) {
                return true;
            }
            final Quest quest2 = (Quest)o;
            if (E.b(quest2.OR(), quest.OR()) && E.b(quest2.Qb(), quest.Qb()) && E.b(quest2.Qf(), quest.Qf()) && E.b(quest2.Qc(), quest.Qc()) && E.b(quest2.getDescription(), quest.getDescription()) && E.b(quest2.Qg(), quest.Qg()) && E.b(quest2.NR(), quest.NR()) && E.b(quest2.OJ(), quest.OJ()) && E.b(quest2.Qe(), quest.Qe()) && E.b(quest2.getName(), quest.getName()) && E.b(quest2.Qh(), quest.Qh()) && E.b(quest2.Qi(), quest.Qi()) && E.b(quest2.getState(), quest.getState())) {
                return true;
            }
        }
        return false;
    }
    
    static String b(final Quest quest) {
        return E.ad(quest).e("Game", quest.OR()).e("QuestId", quest.Qb()).e("AcceptedTimestamp", quest.Qf()).e("BannerImageUri", quest.Qc()).e("BannerImageUrl", quest.Qd()).e("Description", quest.getDescription()).e("EndTimestamp", quest.Qg()).e("IconImageUri", quest.NR()).e("IconImageUrl", quest.NS()).e("LastUpdatedTimestamp", quest.OJ()).e("Milestones", quest.Qe()).e("Name", quest.getName()).e("NotifyTimestamp", quest.Qh()).e("StartTimestamp", quest.Qi()).e("State", quest.getState()).toString();
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    @Override
    public final Uri NR() {
        return this.bPU;
    }
    
    @Override
    public final String NS() {
        return this.bPV;
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
    public final String Qb() {
        return this.bPP;
    }
    
    @Override
    public final Uri Qc() {
        return this.bPR;
    }
    
    @Override
    public final String Qd() {
        return this.bPS;
    }
    
    @Override
    public final List<Milestone> Qe() {
        return new ArrayList<Milestone>(this.bPY);
    }
    
    @Override
    public final long Qf() {
        return this.bPQ;
    }
    
    @Override
    public final long Qg() {
        return this.bPT;
    }
    
    @Override
    public final long Qh() {
        return this.bPW;
    }
    
    @Override
    public final long Qi() {
        return this.bPX;
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
    public final String getName() {
        return this.mName;
    }
    
    @Override
    public final int getState() {
        return this.ao;
    }
    
    @Override
    public final int getType() {
        return this.bwX;
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
        b.a(this, parcel, n);
    }
}
