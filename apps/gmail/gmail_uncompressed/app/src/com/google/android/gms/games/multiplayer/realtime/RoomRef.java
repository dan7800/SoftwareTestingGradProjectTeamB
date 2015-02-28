package com.google.android.gms.games.multiplayer.realtime;

import com.google.android.gms.common.data.*;
import java.util.*;
import com.google.android.gms.games.multiplayer.*;
import android.os.*;

public final class RoomRef extends h implements Room
{
    private final int bOt;
    
    private Room PL() {
        return new RoomEntity(this);
    }
    
    @Override
    public final String PH() {
        return this.getString("external_match_id");
    }
    
    @Override
    public final String PI() {
        return this.getString("creator_external");
    }
    
    @Override
    public final Bundle PJ() {
        if (!this.getBoolean("has_automatch_criteria")) {
            return null;
        }
        final int integer = this.getInteger("automatch_min_players");
        final int integer2 = this.getInteger("automatch_max_players");
        final long long1 = this.getLong("automatch_bit_mask");
        final Bundle bundle = new Bundle();
        bundle.putInt("min_automatch_players", integer);
        bundle.putInt("max_automatch_players", integer2);
        bundle.putLong("exclusive_bit_mask", long1);
        return bundle;
    }
    
    @Override
    public final int PK() {
        return this.getInteger("automatch_wait_estimate_sec");
    }
    
    @Override
    public final long Pj() {
        return this.getLong("creation_timestamp");
    }
    
    @Override
    public final int Pl() {
        return this.getInteger("variant");
    }
    
    public final ArrayList<Participant> Pn() {
        final ArrayList<ParticipantRef> list = (ArrayList<ParticipantRef>)new ArrayList<Participant>(this.bOt);
        for (int i = 0; i < this.bOt; ++i) {
            list.add(new ParticipantRef(this.bDT, i + this.bEo));
        }
        return (ArrayList<Participant>)list;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return RoomEntity.a(this, o);
    }
    
    @Override
    public final String getDescription() {
        return this.getString("description");
    }
    
    @Override
    public final int getStatus() {
        return this.getInteger("status");
    }
    
    @Override
    public final int hashCode() {
        return RoomEntity.a(this);
    }
    
    @Override
    public final String toString() {
        return RoomEntity.b(this);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        ((RoomEntity)this.PL()).writeToParcel(parcel, n);
    }
}
