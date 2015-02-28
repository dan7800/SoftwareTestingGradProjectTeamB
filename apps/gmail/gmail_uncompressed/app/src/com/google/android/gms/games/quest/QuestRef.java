package com.google.android.gms.games.quest;

import com.google.android.gms.common.data.*;
import com.google.android.gms.games.*;
import android.net.*;
import java.util.*;
import android.os.*;

public final class QuestRef extends h implements Quest
{
    private final int bOt;
    private final Game bPi;
    
    private Quest Qj() {
        return new QuestEntity(this);
    }
    
    @Override
    public final Uri NR() {
        return this.fS("quest_icon_image_uri");
    }
    
    @Override
    public final String NS() {
        return this.getString("quest_icon_image_url");
    }
    
    @Override
    public final long OJ() {
        return this.getLong("quest_last_updated_ts");
    }
    
    @Override
    public final Game OR() {
        return this.bPi;
    }
    
    @Override
    public final String Qb() {
        return this.getString("external_quest_id");
    }
    
    @Override
    public final Uri Qc() {
        return this.fS("quest_banner_image_uri");
    }
    
    @Override
    public final String Qd() {
        return this.getString("quest_banner_image_url");
    }
    
    @Override
    public final List<Milestone> Qe() {
        final ArrayList<MilestoneRef> list = (ArrayList<MilestoneRef>)new ArrayList<Milestone>(this.bOt);
        for (int i = 0; i < this.bOt; ++i) {
            list.add(new MilestoneRef(this.bDT, i + this.bEo));
        }
        return (List<Milestone>)list;
    }
    
    @Override
    public final long Qf() {
        return this.getLong("accepted_ts");
    }
    
    @Override
    public final long Qg() {
        return this.getLong("quest_end_ts");
    }
    
    @Override
    public final long Qh() {
        return this.getLong("notification_ts");
    }
    
    @Override
    public final long Qi() {
        return this.getLong("quest_start_ts");
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return QuestEntity.a(this, o);
    }
    
    @Override
    public final String getDescription() {
        return this.getString("quest_description");
    }
    
    @Override
    public final String getName() {
        return this.getString("quest_name");
    }
    
    @Override
    public final int getState() {
        return this.getInteger("quest_state");
    }
    
    @Override
    public final int getType() {
        return this.getInteger("quest_type");
    }
    
    @Override
    public final int hashCode() {
        return QuestEntity.a(this);
    }
    
    @Override
    public final String toString() {
        return QuestEntity.b(this);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        ((QuestEntity)this.Qj()).writeToParcel(parcel, n);
    }
}
