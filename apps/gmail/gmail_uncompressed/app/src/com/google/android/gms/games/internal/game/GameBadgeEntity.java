package com.google.android.gms.games.internal.game;

import com.google.android.gms.games.internal.*;
import android.net.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public final class GameBadgeEntity extends GamesDowngradeableSafeParcel implements GameBadge
{
    public static final com.google.android.gms.games.internal.game.d CREATOR;
    private String bGC;
    private String bMj;
    private Uri bNg;
    private final int btV;
    private int bwX;
    
    static {
        CREATOR = new c();
    }
    
    GameBadgeEntity(final int btV, final int bwX, final String bgc, final String bMj, final Uri bNg) {
        this.btV = btV;
        this.bwX = bwX;
        this.bGC = bgc;
        this.bMj = bMj;
        this.bNg = bNg;
    }
    
    public GameBadgeEntity(final GameBadge gameBadge) {
        this.btV = 1;
        this.bwX = gameBadge.getType();
        this.bGC = gameBadge.getTitle();
        this.bMj = gameBadge.getDescription();
        this.bNg = gameBadge.NR();
    }
    
    static int a(final GameBadge gameBadge) {
        return Arrays.hashCode(new Object[] { gameBadge.getType(), gameBadge.getTitle(), gameBadge.getDescription(), gameBadge.NR() });
    }
    
    static boolean a(final GameBadge gameBadge, final Object o) {
        if (o instanceof GameBadge) {
            if (gameBadge == o) {
                return true;
            }
            final GameBadge gameBadge2 = (GameBadge)o;
            if (E.b(gameBadge2.getType(), gameBadge.getTitle()) && E.b(gameBadge2.getDescription(), gameBadge.NR())) {
                return true;
            }
        }
        return false;
    }
    
    static String b(final GameBadge gameBadge) {
        return E.ad(gameBadge).e("Type", gameBadge.getType()).e("Title", gameBadge.getTitle()).e("Description", gameBadge.getDescription()).e("IconImageUri", gameBadge.NR()).toString();
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    @Override
    public final Uri NR() {
        return this.bNg;
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
    public final String getTitle() {
        return this.bGC;
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
        if (!this.KZ()) {
            com.google.android.gms.games.internal.game.d.a(this, parcel, n);
            return;
        }
        parcel.writeInt(this.bwX);
        parcel.writeString(this.bGC);
        parcel.writeString(this.bMj);
        String string;
        if (this.bNg == null) {
            string = null;
        }
        else {
            string = this.bNg.toString();
        }
        parcel.writeString(string);
    }
}
