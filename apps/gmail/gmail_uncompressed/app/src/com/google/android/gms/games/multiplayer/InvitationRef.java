package com.google.android.gms.games.multiplayer;

import com.google.android.gms.common.data.*;
import java.util.*;
import com.google.android.gms.games.*;
import android.os.*;

public final class InvitationRef extends h implements Invitation
{
    private final ArrayList<Participant> bPf;
    private final Game bPi;
    private final ParticipantRef bPj;
    
    private Invitation PA() {
        return new InvitationEntity(this);
    }
    
    @Override
    public final Game OR() {
        return this.bPi;
    }
    
    @Override
    public final String Ph() {
        return this.getString("external_invitation_id");
    }
    
    @Override
    public final Participant Pi() {
        return this.bPj;
    }
    
    @Override
    public final long Pj() {
        return Math.max(this.getLong("creation_timestamp"), this.getLong("last_modified_timestamp"));
    }
    
    @Override
    public final int Pk() {
        return this.getInteger("type");
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
        return this.bPf;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return InvitationEntity.a(this, o);
    }
    
    @Override
    public final int hashCode() {
        return InvitationEntity.a(this);
    }
    
    @Override
    public final String toString() {
        return InvitationEntity.b(this);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        ((InvitationEntity)this.PA()).writeToParcel(parcel, n);
    }
}
