package com.google.android.gms.games;

import com.google.android.gms.common.data.*;
import android.net.*;
import com.google.android.gms.games.internal.player.*;
import android.os.*;

public final class PlayerRef extends h implements Player
{
    private final PlayerLevelInfo bND;
    private final b bNM;
    private final MostRecentGameInfoRef bNN;
    
    public PlayerRef(final DataHolder dataHolder, final int n) {
        this(dataHolder, n, null);
    }
    
    public PlayerRef(final DataHolder dataHolder, final int n, final String s) {
        super(dataHolder, n);
        this.bNM = new b(s);
        this.bNN = new MostRecentGameInfoRef(dataHolder, n, this.bNM);
        int n2;
        if (!this.fT(this.bNM.bOK) && this.getLong(this.bNM.bOK) != -1L) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        if (n2 != 0) {
            final int integer = this.getInteger(this.bNM.bOL);
            final int integer2 = this.getInteger(this.bNM.bOO);
            final PlayerLevel playerLevel = new PlayerLevel(integer, this.getLong(this.bNM.bOM), this.getLong(this.bNM.bON));
            PlayerLevel playerLevel2;
            if (integer != integer2) {
                playerLevel2 = new PlayerLevel(integer2, this.getLong(this.bNM.bON), this.getLong(this.bNM.bOP));
            }
            else {
                playerLevel2 = playerLevel;
            }
            this.bND = new PlayerLevelInfo(this.getLong(this.bNM.bOK), this.getLong(this.bNM.bOQ), playerLevel, playerLevel2);
            return;
        }
        this.bND = null;
    }
    
    private Player Oy() {
        return new PlayerEntity(this);
    }
    
    @Override
    public final Uri NR() {
        return this.fS(this.bNM.bOD);
    }
    
    @Override
    public final String NS() {
        return this.getString(this.bNM.bOE);
    }
    
    @Override
    public final Uri NT() {
        return this.fS(this.bNM.bOF);
    }
    
    @Override
    public final String NU() {
        return this.getString(this.bNM.bOG);
    }
    
    @Override
    public final String Ok() {
        return this.getString(this.bNM.bOB);
    }
    
    @Override
    public final long Ol() {
        return this.getLong(this.bNM.bOH);
    }
    
    @Override
    public final long Om() {
        if (!this.fR(this.bNM.bOJ) || this.fT(this.bNM.bOJ)) {
            return -1L;
        }
        return this.getLong(this.bNM.bOJ);
    }
    
    @Override
    public final int On() {
        return this.getInteger(this.bNM.bOI);
    }
    
    @Override
    public final boolean Oo() {
        return this.getBoolean(this.bNM.bOT);
    }
    
    @Override
    public final PlayerLevelInfo Op() {
        return this.bND;
    }
    
    @Override
    public final MostRecentGameInfo Oq() {
        if (this.fT(this.bNM.bOU)) {
            return null;
        }
        return this.bNN;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return PlayerEntity.a(this, o);
    }
    
    @Override
    public final String getDisplayName() {
        return this.getString(this.bNM.bOC);
    }
    
    @Override
    public final String getTitle() {
        return this.getString(this.bNM.bOR);
    }
    
    @Override
    public final int hashCode() {
        return PlayerEntity.a(this);
    }
    
    @Override
    public final String toString() {
        return PlayerEntity.b(this);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        ((PlayerEntity)this.Oy()).writeToParcel(parcel, n);
    }
}
