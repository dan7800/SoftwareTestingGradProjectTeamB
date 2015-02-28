package com.google.android.gms.games.multiplayer.turnbased;

import com.google.android.gms.common.data.*;
import com.google.android.gms.games.*;
import java.util.*;
import com.google.android.gms.games.multiplayer.*;
import android.os.*;

public final class TurnBasedMatchRef extends h implements TurnBasedMatch
{
    private final int bOt;
    private final Game bPi;
    
    private TurnBasedMatch PV() {
        return new TurnBasedMatchEntity(this);
    }
    
    @Override
    public final long OJ() {
        return this.getLong("last_updated_timestamp");
    }
    
    @Override
    public final Game OR() {
        return this.bPi;
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
    public final String PM() {
        return this.getString("external_match_id");
    }
    
    @Override
    public final int PN() {
        return this.getInteger("user_match_status");
    }
    
    @Override
    public final String PO() {
        return this.getString("last_updater_external");
    }
    
    @Override
    public final String PP() {
        return this.getString("pending_participant_external");
    }
    
    @Override
    public final String PQ() {
        return this.getString("rematch_id");
    }
    
    @Override
    public final byte[] PR() {
        return this.getByteArray("previous_match_data");
    }
    
    @Override
    public final int PS() {
        return this.getInteger("match_number");
    }
    
    @Override
    public final boolean PT() {
        return this.getBoolean("upsync_required");
    }
    
    @Override
    public final String PU() {
        return this.getString("description_participant_id");
    }
    
    @Override
    public final long Pj() {
        return this.getLong("creation_timestamp");
    }
    
    @Override
    public final int Pl() {
        return this.getInteger("variant");
    }
    
    @Override
    public final int Pm() {
        if (!this.getBoolean("has_automatch_criteria")) {
            return 0;
        }
        return this.getInteger("automatch_max_players");
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
        return TurnBasedMatchEntity.a(this, o);
    }
    
    @Override
    public final byte[] getData() {
        return this.getByteArray("data");
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
    public final int getVersion() {
        return this.getInteger("version");
    }
    
    @Override
    public final int hashCode() {
        return TurnBasedMatchEntity.a(this);
    }
    
    @Override
    public final String toString() {
        return TurnBasedMatchEntity.b(this);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        ((TurnBasedMatchEntity)this.PV()).writeToParcel(parcel, n);
    }
}
