package com.google.android.gms.games.multiplayer;

import com.google.android.gms.common.data.*;
import android.net.*;
import com.google.android.gms.games.*;
import android.os.*;

public final class ParticipantRef extends h implements Participant
{
    private final PlayerRef bPn;
    
    public ParticipantRef(final DataHolder dataHolder, final int n) {
        super(dataHolder, n);
        this.bPn = new PlayerRef(dataHolder, n);
    }
    
    private Participant PE() {
        return new ParticipantEntity(this);
    }
    
    @Override
    public final Uri NR() {
        if (this.fT("external_player_id")) {
            return this.fS("default_display_image_uri");
        }
        return this.bPn.NR();
    }
    
    @Override
    public final String NS() {
        if (this.fT("external_player_id")) {
            return this.getString("default_display_image_url");
        }
        return this.bPn.NS();
    }
    
    @Override
    public final Uri NT() {
        if (this.fT("external_player_id")) {
            return this.fS("default_display_hi_res_image_uri");
        }
        return this.bPn.NT();
    }
    
    @Override
    public final String NU() {
        if (this.fT("external_player_id")) {
            return this.getString("default_display_hi_res_image_url");
        }
        return this.bPn.NU();
    }
    
    @Override
    public final Player OG() {
        if (this.fT("external_player_id")) {
            return null;
        }
        return this.bPn;
    }
    
    @Override
    public final String OP() {
        return this.getString("client_address");
    }
    
    @Override
    public final boolean PB() {
        return this.getInteger("connected") > 0;
    }
    
    @Override
    public final String PC() {
        return this.getString("external_participant_id");
    }
    
    @Override
    public final ParticipantResult PD() {
        if (this.fT("result_type")) {
            return null;
        }
        return new ParticipantResult(this.getString("external_participant_id"), this.getInteger("result_type"), this.getInteger("placing"));
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return ParticipantEntity.a(this, o);
    }
    
    @Override
    public final int getCapabilities() {
        return this.getInteger("capabilities");
    }
    
    @Override
    public final String getDisplayName() {
        if (this.fT("external_player_id")) {
            return this.getString("default_display_name");
        }
        return this.bPn.getDisplayName();
    }
    
    @Override
    public final int getStatus() {
        return this.getInteger("player_status");
    }
    
    @Override
    public final int hashCode() {
        return ParticipantEntity.a(this);
    }
    
    @Override
    public final String toString() {
        return ParticipantEntity.b(this);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        ((ParticipantEntity)this.PE()).writeToParcel(parcel, n);
    }
}
