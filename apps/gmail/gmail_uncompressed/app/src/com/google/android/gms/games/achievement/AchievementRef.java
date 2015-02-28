package com.google.android.gms.games.achievement;

import com.google.android.gms.common.data.*;
import android.net.*;
import com.google.android.gms.common.internal.*;
import com.google.android.gms.games.*;
import android.os.*;

public final class AchievementRef extends h implements Achievement
{
    private Achievement OL() {
        return new AchievementEntity(this);
    }
    
    @Override
    public final Uri OA() {
        return this.fS("unlocked_icon_image_uri");
    }
    
    @Override
    public final String OB() {
        return this.getString("unlocked_icon_image_url");
    }
    
    @Override
    public final Uri OC() {
        return this.fS("revealed_icon_image_uri");
    }
    
    @Override
    public final String OD() {
        return this.getString("revealed_icon_image_url");
    }
    
    @Override
    public final int OE() {
        boolean b = true;
        if (this.getInteger("type") != (b ? 1 : 0)) {
            b = false;
        }
        com.google.android.gms.common.internal.b.cc(b);
        return this.getInteger("total_steps");
    }
    
    @Override
    public final String OF() {
        boolean b = true;
        if (this.getInteger("type") != (b ? 1 : 0)) {
            b = false;
        }
        com.google.android.gms.common.internal.b.cc(b);
        return this.getString("formatted_total_steps");
    }
    
    @Override
    public final Player OG() {
        return new PlayerRef(this.bDT, this.bEo);
    }
    
    @Override
    public final int OH() {
        boolean b = true;
        if (this.getInteger("type") != (b ? 1 : 0)) {
            b = false;
        }
        com.google.android.gms.common.internal.b.cc(b);
        return this.getInteger("current_steps");
    }
    
    @Override
    public final String OI() {
        boolean b = true;
        if (this.getInteger("type") != (b ? 1 : 0)) {
            b = false;
        }
        com.google.android.gms.common.internal.b.cc(b);
        return this.getString("formatted_current_steps");
    }
    
    @Override
    public final long OJ() {
        return this.getLong("last_updated_timestamp");
    }
    
    @Override
    public final long OK() {
        if (!this.fR("instance_xp_value") || this.fT("instance_xp_value")) {
            return this.getLong("definition_xp_value");
        }
        return this.getLong("instance_xp_value");
    }
    
    @Override
    public final String Oz() {
        return this.getString("external_achievement_id");
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final String getDescription() {
        return this.getString("description");
    }
    
    @Override
    public final String getName() {
        return this.getString("name");
    }
    
    @Override
    public final int getState() {
        return this.getInteger("state");
    }
    
    @Override
    public final int getType() {
        return this.getInteger("type");
    }
    
    @Override
    public final String toString() {
        return AchievementEntity.a(this);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        ((AchievementEntity)this.OL()).writeToParcel(parcel, n);
    }
}
