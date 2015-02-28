package com.google.android.gms.games.quest;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public final class MilestoneEntity implements SafeParcelable, Milestone
{
    public static final a CREATOR;
    private final int ao;
    private final String bOa;
    private final String bPJ;
    private final long bPK;
    private final long bPL;
    private final byte[] bPM;
    private final int btV;
    
    static {
        CREATOR = new a();
    }
    
    MilestoneEntity(final int btV, final String bpj, final long bpk, final long bpl, final byte[] bpm, final int ao, final String bOa) {
        this.btV = btV;
        this.bPJ = bpj;
        this.bPK = bpk;
        this.bPL = bpl;
        this.bPM = bpm;
        this.ao = ao;
        this.bOa = bOa;
    }
    
    public MilestoneEntity(final Milestone milestone) {
        this.btV = 4;
        this.bPJ = milestone.PW();
        this.bPK = milestone.PX();
        this.bPL = milestone.PY();
        this.ao = milestone.getState();
        this.bOa = milestone.OM();
        final byte[] pz = milestone.PZ();
        if (pz == null) {
            this.bPM = null;
            return;
        }
        System.arraycopy(pz, 0, this.bPM = new byte[pz.length], 0, pz.length);
    }
    
    static int a(final Milestone milestone) {
        return Arrays.hashCode(new Object[] { milestone.PW(), milestone.PX(), milestone.PY(), milestone.getState(), milestone.OM() });
    }
    
    static boolean a(final Milestone milestone, final Object o) {
        if (o instanceof Milestone) {
            if (milestone == o) {
                return true;
            }
            final Milestone milestone2 = (Milestone)o;
            if (E.b(milestone2.PW(), milestone.PW()) && E.b(milestone2.PX(), milestone.PX()) && E.b(milestone2.PY(), milestone.PY()) && E.b(milestone2.getState(), milestone.getState()) && E.b(milestone2.OM(), milestone.OM())) {
                return true;
            }
        }
        return false;
    }
    
    static String b(final Milestone milestone) {
        return E.ad(milestone).e("MilestoneId", milestone.PW()).e("CurrentProgress", milestone.PX()).e("TargetProgress", milestone.PY()).e("State", milestone.getState()).e("CompletionRewardData", milestone.PZ()).e("EventId", milestone.OM()).toString();
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    @Override
    public final String OM() {
        return this.bOa;
    }
    
    @Override
    public final String PW() {
        return this.bPJ;
    }
    
    @Override
    public final long PX() {
        return this.bPK;
    }
    
    @Override
    public final long PY() {
        return this.bPL;
    }
    
    @Override
    public final byte[] PZ() {
        return this.bPM;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return a(this, o);
    }
    
    @Override
    public final int getState() {
        return this.ao;
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
        a.a(this, parcel);
    }
}
