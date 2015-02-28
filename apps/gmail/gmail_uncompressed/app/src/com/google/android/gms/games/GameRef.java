package com.google.android.gms.games;

import com.google.android.gms.common.data.*;
import android.net.*;
import android.os.*;

public final class GameRef extends h implements Game
{
    public GameRef(final DataHolder dataHolder, final int n) {
        super(dataHolder, n);
    }
    
    private Game Oj() {
        return new GameEntity(this);
    }
    
    @Override
    public final String JX() {
        return this.getString("external_game_id");
    }
    
    @Override
    public final String NO() {
        return this.getString("primary_category");
    }
    
    @Override
    public final String NP() {
        return this.getString("secondary_category");
    }
    
    @Override
    public final String NQ() {
        return this.getString("developer_name");
    }
    
    @Override
    public final Uri NR() {
        return this.fS("game_icon_image_uri");
    }
    
    @Override
    public final String NS() {
        return this.getString("game_icon_image_url");
    }
    
    @Override
    public final Uri NT() {
        return this.fS("game_hi_res_image_uri");
    }
    
    @Override
    public final String NU() {
        return this.getString("game_hi_res_image_url");
    }
    
    @Override
    public final Uri NV() {
        return this.fS("featured_image_uri");
    }
    
    @Override
    public final String NW() {
        return this.getString("featured_image_url");
    }
    
    @Override
    public final boolean NX() {
        return this.getBoolean("play_enabled_game");
    }
    
    @Override
    public final boolean NY() {
        return this.getBoolean("identity_sharing_confirmed");
    }
    
    @Override
    public final boolean NZ() {
        return this.getInteger("installed") > 0;
    }
    
    @Override
    public final String Oa() {
        return this.getString("package_name");
    }
    
    @Override
    public final int Ob() {
        return this.getInteger("gameplay_acl_status");
    }
    
    @Override
    public final int Oc() {
        return this.getInteger("achievement_total_count");
    }
    
    @Override
    public final int Od() {
        return this.getInteger("leaderboard_count");
    }
    
    @Override
    public final boolean Oe() {
        return this.getInteger("real_time_support") > 0;
    }
    
    @Override
    public final boolean Of() {
        return this.getInteger("turn_based_support") > 0;
    }
    
    @Override
    public final boolean Og() {
        return this.getInteger("snapshots_enabled") > 0;
    }
    
    @Override
    public final String Oh() {
        return this.getString("theme_color");
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return GameEntity.a(this, o);
    }
    
    @Override
    public final String getDescription() {
        return this.getString("game_description");
    }
    
    @Override
    public final String getDisplayName() {
        return this.getString("display_name");
    }
    
    @Override
    public final int hashCode() {
        return GameEntity.a(this);
    }
    
    @Override
    public final boolean isMuted() {
        return this.getBoolean("muted");
    }
    
    @Override
    public final String toString() {
        return GameEntity.b(this);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        ((GameEntity)this.Oj()).writeToParcel(parcel, n);
    }
}
