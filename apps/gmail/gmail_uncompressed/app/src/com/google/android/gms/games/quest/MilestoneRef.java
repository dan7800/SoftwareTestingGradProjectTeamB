package com.google.android.gms.games.quest;

import com.google.android.gms.common.data.*;
import android.os.*;

public final class MilestoneRef extends h implements Milestone
{
    MilestoneRef(final DataHolder dataHolder, final int n) {
        super(dataHolder, n);
    }
    
    private Milestone Qa() {
        return new MilestoneEntity(this);
    }
    
    @Override
    public final String OM() {
        return this.getString("external_event_id");
    }
    
    @Override
    public final String PW() {
        return this.getString("external_milestone_id");
    }
    
    @Override
    public final long PX() {
        switch (this.getInteger("milestone_state")) {
            default: {
                return 0L;
            }
            case 3:
            case 4: {
                return this.getLong("target_value");
            }
            case 2: {
                return this.getLong("current_value") - this.getLong("initial_value");
            }
        }
    }
    
    @Override
    public final long PY() {
        return this.getLong("target_value");
    }
    
    @Override
    public final byte[] PZ() {
        return this.getByteArray("completion_reward_data");
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return MilestoneEntity.a(this, o);
    }
    
    @Override
    public final int getState() {
        return this.getInteger("milestone_state");
    }
    
    @Override
    public final int hashCode() {
        return MilestoneEntity.a(this);
    }
    
    @Override
    public final String toString() {
        return MilestoneEntity.b(this);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        ((MilestoneEntity)this.Qa()).writeToParcel(parcel, n);
    }
}
