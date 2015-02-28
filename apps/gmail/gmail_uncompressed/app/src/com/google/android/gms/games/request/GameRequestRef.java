package com.google.android.gms.games.request;

import com.google.android.gms.common.data.*;
import com.google.android.gms.games.*;
import java.util.*;
import android.os.*;

public final class GameRequestRef extends h implements GameRequest
{
    private final int bOt;
    
    private GameRequest Ql() {
        return new GameRequestEntity(this);
    }
    
    @Override
    public final Game OR() {
        return new GameRef(this.bDT, this.bEo);
    }
    
    @Override
    public final long Pj() {
        return this.getLong("creation_timestamp");
    }
    
    @Override
    public final String Pw() {
        return this.getString("external_request_id");
    }
    
    @Override
    public final Player Px() {
        return new PlayerRef(this.bDT, this.KP(), "sender_");
    }
    
    @Override
    public final long Py() {
        return this.getLong("expiration_timestamp");
    }
    
    @Override
    public final List<Player> Pz() {
        final ArrayList<PlayerRef> list = (ArrayList<PlayerRef>)new ArrayList<Player>(this.bOt);
        for (int i = 0; i < this.bOt; ++i) {
            list.add(new PlayerRef(this.bDT, i + this.bEo, "recipient_"));
        }
        return (List<Player>)list;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return GameRequestEntity.a(this, o);
    }
    
    @Override
    public final byte[] getData() {
        return this.getByteArray("data");
    }
    
    @Override
    public final int getStatus() {
        return this.getInteger("status");
    }
    
    @Override
    public final int getType() {
        return this.getInteger("type");
    }
    
    @Override
    public final int gh(final String s) {
        for (int i = this.bEo; i < this.bEo + this.bOt; ++i) {
            final int ex = this.bDT.ex(i);
            if (this.bDT.c("recipient_external_player_id", i, ex).equals(s)) {
                return this.bDT.b("recipient_status", i, ex);
            }
        }
        return -1;
    }
    
    @Override
    public final int hashCode() {
        return GameRequestEntity.a(this);
    }
    
    @Override
    public final String toString() {
        return GameRequestEntity.c(this);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        ((GameRequestEntity)this.Ql()).writeToParcel(parcel, n);
    }
}
