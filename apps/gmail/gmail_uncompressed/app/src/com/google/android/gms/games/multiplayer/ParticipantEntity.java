package com.google.android.gms.games.multiplayer;

import com.google.android.gms.games.internal.*;
import android.net.*;
import com.google.android.gms.games.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public final class ParticipantEntity extends GamesDowngradeableSafeParcel implements Participant
{
    public static final Parcelable$Creator<ParticipantEntity> CREATOR;
    private final int bBw;
    private final int bBx;
    private final String bFK;
    private final PlayerEntity bNV;
    private final Uri bNg;
    private final Uri bNh;
    private final String bNr;
    private final String bNs;
    private final String bOe;
    private final String bPk;
    private final boolean bPl;
    private final ParticipantResult bPm;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    ParticipantEntity(final int btV, final String bPk, final String bfk, final Uri bNg, final Uri bNh, final int bBx, final String bOe, final boolean bPl, final PlayerEntity bnv, final int bBw, final ParticipantResult bPm, final String bNr, final String bNs) {
        this.btV = btV;
        this.bPk = bPk;
        this.bFK = bfk;
        this.bNg = bNg;
        this.bNh = bNh;
        this.bBx = bBx;
        this.bOe = bOe;
        this.bPl = bPl;
        this.bNV = bnv;
        this.bBw = bBw;
        this.bPm = bPm;
        this.bNr = bNr;
        this.bNs = bNs;
    }
    
    public ParticipantEntity(final Participant participant) {
        this.btV = 3;
        this.bPk = participant.PC();
        this.bFK = participant.getDisplayName();
        this.bNg = participant.NR();
        this.bNh = participant.NT();
        this.bBx = participant.getStatus();
        this.bOe = participant.OP();
        this.bPl = participant.PB();
        final Player og = participant.OG();
        PlayerEntity bnv;
        if (og == null) {
            bnv = null;
        }
        else {
            bnv = new PlayerEntity(og);
        }
        this.bNV = bnv;
        this.bBw = participant.getCapabilities();
        this.bPm = participant.PD();
        this.bNr = participant.NS();
        this.bNs = participant.NU();
    }
    
    static int a(final Participant participant) {
        return Arrays.hashCode(new Object[] { participant.OG(), participant.getStatus(), participant.OP(), participant.PB(), participant.getDisplayName(), participant.NR(), participant.NT(), participant.getCapabilities(), participant.PD(), participant.PC() });
    }
    
    static boolean a(final Participant participant, final Object o) {
        if (o instanceof Participant) {
            if (participant == o) {
                return true;
            }
            final Participant participant2 = (Participant)o;
            if (E.b(participant2.OG(), participant.OG()) && E.b(participant2.getStatus(), participant.getStatus()) && E.b(participant2.OP(), participant.OP()) && E.b(participant2.PB(), participant.PB()) && E.b(participant2.getDisplayName(), participant.getDisplayName()) && E.b(participant2.NR(), participant.NR()) && E.b(participant2.NT(), participant.NT()) && E.b(participant2.getCapabilities(), participant.getCapabilities()) && E.b(participant2.PD(), participant.PD()) && E.b(participant2.PC(), participant.PC())) {
                return true;
            }
        }
        return false;
    }
    
    static String b(final Participant participant) {
        return E.ad(participant).e("ParticipantId", participant.PC()).e("Player", participant.OG()).e("Status", participant.getStatus()).e("ClientAddress", participant.OP()).e("ConnectedToRoom", participant.PB()).e("DisplayName", participant.getDisplayName()).e("IconImage", participant.NR()).e("IconImageUrl", participant.NS()).e("HiResImage", participant.NT()).e("HiResImageUrl", participant.NU()).e("Capabilities", participant.getCapabilities()).e("Result", participant.PD()).toString();
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    @Override
    public final Uri NR() {
        if (this.bNV == null) {
            return this.bNg;
        }
        return this.bNV.NR();
    }
    
    @Override
    public final String NS() {
        if (this.bNV == null) {
            return this.bNr;
        }
        return this.bNV.NS();
    }
    
    @Override
    public final Uri NT() {
        if (this.bNV == null) {
            return this.bNh;
        }
        return this.bNV.NT();
    }
    
    @Override
    public final String NU() {
        if (this.bNV == null) {
            return this.bNs;
        }
        return this.bNV.NU();
    }
    
    @Override
    public final Player OG() {
        return this.bNV;
    }
    
    @Override
    public final String OP() {
        return this.bOe;
    }
    
    @Override
    public final boolean PB() {
        return this.bPl;
    }
    
    @Override
    public final String PC() {
        return this.bPk;
    }
    
    @Override
    public final ParticipantResult PD() {
        return this.bPm;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return a(this, o);
    }
    
    @Override
    public final int getCapabilities() {
        return this.bBw;
    }
    
    @Override
    public final String getDisplayName() {
        if (this.bNV == null) {
            return this.bFK;
        }
        return this.bNV.getDisplayName();
    }
    
    @Override
    public final int getStatus() {
        return this.bBx;
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
            com.google.android.gms.games.multiplayer.d.a(this, parcel, n);
        }
        else {
            parcel.writeString(this.bPk);
            parcel.writeString(this.bFK);
            String string;
            if (this.bNg == null) {
                string = null;
            }
            else {
                string = this.bNg.toString();
            }
            parcel.writeString(string);
            final Uri bNh = this.bNh;
            String string2 = null;
            if (bNh != null) {
                string2 = this.bNh.toString();
            }
            parcel.writeString(string2);
            parcel.writeInt(this.bBx);
            parcel.writeString(this.bOe);
            int n2;
            if (this.bPl) {
                n2 = 1;
            }
            else {
                n2 = 0;
            }
            parcel.writeInt(n2);
            final PlayerEntity bnv = this.bNV;
            int n3 = 0;
            if (bnv != null) {
                n3 = 1;
            }
            parcel.writeInt(n3);
            if (this.bNV != null) {
                this.bNV.writeToParcel(parcel, n);
            }
        }
    }
}
