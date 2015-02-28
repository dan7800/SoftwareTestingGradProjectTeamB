package com.google.android.gms.games;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public final class PlayerLevel implements SafeParcelable
{
    public static final e CREATOR;
    private final int bNF;
    private final long bNG;
    private final long bNH;
    private final int btV;
    
    static {
        CREATOR = new e();
    }
    
    PlayerLevel(final int btV, final int bnf, final long bng, final long bnh) {
        boolean b = true;
        G.a(bng >= 0L && b, "Min XP must be positive!");
        if (bnh <= bng) {
            b = false;
        }
        G.a(b, "Max XP must be more than min XP!");
        this.btV = btV;
        this.bNF = bnf;
        this.bNG = bng;
        this.bNH = bnh;
    }
    
    public PlayerLevel(final int n, final long n2, final long n3) {
        this(1, n, n2, n3);
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int Or() {
        return this.bNF;
    }
    
    public final long Os() {
        return this.bNG;
    }
    
    public final long Ot() {
        return this.bNH;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o instanceof PlayerLevel) {
            if (this == o) {
                return true;
            }
            final PlayerLevel playerLevel = (PlayerLevel)o;
            if (E.b(playerLevel.bNF, this.bNF) && E.b(playerLevel.bNG, this.bNG) && E.b(playerLevel.bNH, this.bNH)) {
                return true;
            }
        }
        return false;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.bNF, this.bNG, this.bNH });
    }
    
    @Override
    public final String toString() {
        return E.ad(this).e("LevelNumber", this.bNF).e("MinXp", this.bNG).e("MaxXp", this.bNH).toString();
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        e.a(this, parcel);
    }
}
