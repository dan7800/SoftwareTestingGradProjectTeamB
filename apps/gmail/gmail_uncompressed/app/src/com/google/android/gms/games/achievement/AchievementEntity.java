package com.google.android.gms.games.achievement;

import com.google.android.gms.common.internal.safeparcel.*;
import android.net.*;
import com.google.android.gms.common.internal.*;
import com.google.android.gms.games.*;
import java.util.*;
import android.os.*;
import com.google.android.gms.common.data.*;

public final class AchievementEntity implements SafeParcelable, Achievement
{
    public static final a CREATOR;
    private final int ao;
    private final String bMj;
    private final String bNO;
    private final Uri bNP;
    private final String bNQ;
    private final Uri bNR;
    private final String bNS;
    private final int bNT;
    private final String bNU;
    private final PlayerEntity bNV;
    private final int bNW;
    private final String bNX;
    private final long bNY;
    private final long bNZ;
    private final int btV;
    private final int bwX;
    private final String mName;
    
    static {
        CREATOR = new a();
    }
    
    AchievementEntity(final int btV, final String bno, final int bwX, final String mName, final String bMj, final Uri bnp, final String bnq, final Uri bnr, final String bns, final int bnt, final String bnu, final PlayerEntity bnv, final int ao, final int bnw, final String bnx, final long bny, final long bnz) {
        this.btV = btV;
        this.bNO = bno;
        this.bwX = bwX;
        this.mName = mName;
        this.bMj = bMj;
        this.bNP = bnp;
        this.bNQ = bnq;
        this.bNR = bnr;
        this.bNS = bns;
        this.bNT = bnt;
        this.bNU = bnu;
        this.bNV = bnv;
        this.ao = ao;
        this.bNW = bnw;
        this.bNX = bnx;
        this.bNY = bny;
        this.bNZ = bnz;
    }
    
    public AchievementEntity(final Achievement achievement) {
        this.btV = 1;
        this.bNO = achievement.Oz();
        this.bwX = achievement.getType();
        this.mName = achievement.getName();
        this.bMj = achievement.getDescription();
        this.bNP = achievement.OA();
        this.bNQ = achievement.OB();
        this.bNR = achievement.OC();
        this.bNS = achievement.OD();
        this.bNV = ((e<PlayerEntity>)achievement.OG()).KN();
        this.ao = achievement.getState();
        this.bNY = achievement.OJ();
        this.bNZ = achievement.OK();
        if (achievement.getType() == 1) {
            this.bNT = achievement.OE();
            this.bNU = achievement.OF();
            this.bNW = achievement.OH();
            this.bNX = achievement.OI();
        }
        else {
            this.bNT = 0;
            this.bNU = null;
            this.bNW = 0;
            this.bNX = null;
        }
        b.ab(this.bNO);
        b.ab(this.bMj);
    }
    
    static String a(final Achievement achievement) {
        final F e = E.ad(achievement).e("Id", achievement.Oz()).e("Type", achievement.getType()).e("Name", achievement.getName()).e("Description", achievement.getDescription()).e("Player", achievement.OG()).e("State", achievement.getState());
        if (achievement.getType() == 1) {
            e.e("CurrentSteps", achievement.OH());
            e.e("TotalSteps", achievement.OE());
        }
        return e.toString();
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    @Override
    public final Uri OA() {
        return this.bNP;
    }
    
    @Override
    public final String OB() {
        return this.bNQ;
    }
    
    @Override
    public final Uri OC() {
        return this.bNR;
    }
    
    @Override
    public final String OD() {
        return this.bNS;
    }
    
    @Override
    public final int OE() {
        return this.bNT;
    }
    
    @Override
    public final String OF() {
        return this.bNU;
    }
    
    @Override
    public final Player OG() {
        return this.bNV;
    }
    
    @Override
    public final int OH() {
        return this.bNW;
    }
    
    @Override
    public final String OI() {
        return this.bNX;
    }
    
    @Override
    public final long OJ() {
        return this.bNY;
    }
    
    @Override
    public final long OK() {
        return this.bNZ;
    }
    
    @Override
    public final String Oz() {
        return this.bNO;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o instanceof Achievement) {
            if (this != o) {
                final Achievement achievement = (Achievement)o;
                boolean b;
                boolean b2;
                if (super.getType() == 1) {
                    b = E.b(achievement.OH(), super.OH());
                    b2 = E.b(achievement.OE(), super.OE());
                }
                else {
                    b2 = true;
                    b = true;
                }
                if (!E.b(achievement.Oz(), super.Oz()) || !E.b(achievement.getName(), super.getName()) || !E.b(achievement.getType(), super.getType()) || !E.b(achievement.getDescription(), super.getDescription()) || !E.b(achievement.OK(), super.OK()) || !E.b(achievement.getState(), super.getState()) || !E.b(achievement.OJ(), super.OJ()) || !E.b(achievement.OG(), super.OG()) || !b || !b2) {
                    return false;
                }
            }
            return true;
        }
        return false;
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
        int oh;
        int oe;
        if (super.getType() == 1) {
            oh = super.OH();
            oe = super.OE();
        }
        else {
            oe = 0;
            oh = 0;
        }
        return Arrays.hashCode(new Object[] { super.Oz(), super.getName(), super.getType(), super.getDescription(), super.OK(), super.getState(), super.OJ(), super.OG(), oh, oe });
    }
    
    @Override
    public final String toString() {
        return a(this);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel, n);
    }
}
