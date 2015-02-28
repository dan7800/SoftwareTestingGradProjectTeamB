package com.google.android.gms.games;

import com.google.android.gms.games.internal.*;
import android.net.*;
import com.google.android.gms.games.internal.player.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public final class PlayerEntity extends GamesDowngradeableSafeParcel implements Player
{
    public static final Parcelable$Creator<PlayerEntity> CREATOR;
    private final String bFK;
    private final String bGC;
    private final int bNA;
    private final long bNB;
    private final MostRecentGameInfoEntity bNC;
    private final PlayerLevelInfo bND;
    private final boolean bNE;
    private final Uri bNg;
    private final Uri bNh;
    private final String bNr;
    private final String bNs;
    private final String bNy;
    private final long bNz;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    PlayerEntity(final int btV, final String bNy, final String bfk, final Uri bNg, final Uri bNh, final long bNz, final int bna, final long bnb, final String bNr, final String bNs, final String bgc, final MostRecentGameInfoEntity bnc, final PlayerLevelInfo bnd, final boolean bne) {
        this.btV = btV;
        this.bNy = bNy;
        this.bFK = bfk;
        this.bNg = bNg;
        this.bNr = bNr;
        this.bNh = bNh;
        this.bNs = bNs;
        this.bNz = bNz;
        this.bNA = bna;
        this.bNB = bnb;
        this.bGC = bgc;
        this.bNE = bne;
        this.bNC = bnc;
        this.bND = bnd;
    }
    
    public PlayerEntity(final Player player) {
        this.btV = 11;
        this.bNy = player.Ok();
        this.bFK = player.getDisplayName();
        this.bNg = player.NR();
        this.bNr = player.NS();
        this.bNh = player.NT();
        this.bNs = player.NU();
        this.bNz = player.Ol();
        this.bNA = player.On();
        this.bNB = player.Om();
        this.bGC = player.getTitle();
        this.bNE = player.Oo();
        final MostRecentGameInfo oq = player.Oq();
        MostRecentGameInfoEntity bnc;
        if (oq == null) {
            bnc = null;
        }
        else {
            bnc = new MostRecentGameInfoEntity(oq);
        }
        this.bNC = bnc;
        this.bND = player.Op();
        b.ab(this.bNy);
        b.ab(this.bFK);
        b.cc(this.bNz > 0L);
    }
    
    static int a(final Player player) {
        return Arrays.hashCode(new Object[] { player.Ok(), player.getDisplayName(), player.NR(), player.NT(), player.Ol(), player.getTitle(), player.Op() });
    }
    
    static boolean a(final Player player, final Object o) {
        if (o instanceof Player) {
            if (player == o) {
                return true;
            }
            final Player player2 = (Player)o;
            if (E.b(player2.Ok(), player.Ok()) && E.b(player2.getDisplayName(), player.getDisplayName()) && E.b(player2.NR(), player.NR()) && E.b(player2.NT(), player.NT()) && E.b(player2.Ol(), player.Ol()) && E.b(player2.getTitle(), player.getTitle()) && E.b(player2.Op(), player.Op())) {
                return true;
            }
        }
        return false;
    }
    
    static String b(final Player player) {
        return E.ad(player).e("PlayerId", player.Ok()).e("DisplayName", player.getDisplayName()).e("IconImageUri", player.NR()).e("IconImageUrl", player.NS()).e("HiResImageUri", player.NT()).e("HiResImageUrl", player.NU()).e("RetrievedTimestamp", player.Ol()).e("Title", player.getTitle()).e("LevelInfo", player.Op()).toString();
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    @Override
    public final Uri NR() {
        return this.bNg;
    }
    
    @Override
    public final String NS() {
        return this.bNr;
    }
    
    @Override
    public final Uri NT() {
        return this.bNh;
    }
    
    @Override
    public final String NU() {
        return this.bNs;
    }
    
    @Override
    public final String Ok() {
        return this.bNy;
    }
    
    @Override
    public final long Ol() {
        return this.bNz;
    }
    
    @Override
    public final long Om() {
        return this.bNB;
    }
    
    @Override
    public final int On() {
        return this.bNA;
    }
    
    @Override
    public final boolean Oo() {
        return this.bNE;
    }
    
    @Override
    public final PlayerLevelInfo Op() {
        return this.bND;
    }
    
    @Override
    public final MostRecentGameInfo Oq() {
        return this.bNC;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return a(this, o);
    }
    
    @Override
    public final String getDisplayName() {
        return this.bFK;
    }
    
    @Override
    public final String getTitle() {
        return this.bGC;
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
            com.google.android.gms.games.d.a(this, parcel, n);
            return;
        }
        parcel.writeString(this.bNy);
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
        parcel.writeLong(this.bNz);
    }
}
