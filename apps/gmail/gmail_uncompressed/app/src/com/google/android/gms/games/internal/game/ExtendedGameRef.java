package com.google.android.gms.games.internal.game;

import com.google.android.gms.common.data.*;
import com.google.android.gms.games.*;
import java.util.*;
import com.google.android.gms.games.snapshot.*;
import android.os.*;

public class ExtendedGameRef extends h implements ExtendedGame
{
    private final GameRef bOr;
    private final SnapshotMetadataRef bOs;
    private final int bOt;
    
    private ExtendedGame Pd() {
        return new ExtendedGameEntity(this);
    }
    
    @Override
    public final Game OR() {
        return this.bOr;
    }
    
    @Override
    public final ArrayList<GameBadge> OS() {
        int i = 0;
        if (this.bDT.c("badge_title", this.bEo, this.bDT.ex(this.bEo)) == null) {
            return new ArrayList<GameBadge>(0);
        }
        final ArrayList<GameBadgeRef> list = (ArrayList<GameBadgeRef>)new ArrayList<GameBadge>(this.bOt);
        while (i < this.bOt) {
            list.add(new GameBadgeRef(this.bDT, i + this.bEo));
            ++i;
        }
        return (ArrayList<GameBadge>)list;
    }
    
    @Override
    public final int OT() {
        return this.getInteger("availability");
    }
    
    @Override
    public final boolean OU() {
        return this.getBoolean("owned");
    }
    
    @Override
    public final int OV() {
        return this.getInteger("achievement_unlocked_count");
    }
    
    @Override
    public final long OW() {
        return this.getLong("last_played_server_time");
    }
    
    @Override
    public final long OX() {
        return this.getLong("price_micros");
    }
    
    @Override
    public final String OY() {
        return this.getString("formatted_price");
    }
    
    @Override
    public final long OZ() {
        return this.getLong("full_price_micros");
    }
    
    @Override
    public final String Pa() {
        return this.getString("formatted_full_price");
    }
    
    @Override
    public final SnapshotMetadata Pb() {
        return this.bOs;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        return ExtendedGameEntity.a(this, o);
    }
    
    @Override
    public int hashCode() {
        return ExtendedGameEntity.a(this);
    }
    
    @Override
    public String toString() {
        return ExtendedGameEntity.b(this);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        ((ExtendedGameEntity)this.Pd()).writeToParcel(parcel, n);
    }
}
