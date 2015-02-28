package com.google.android.gms.games.internal.game;

import com.google.android.gms.common.data.*;
import android.net.*;
import android.os.*;

public final class GameBadgeRef extends h implements GameBadge
{
    GameBadgeRef(final DataHolder dataHolder, final int n) {
        super(dataHolder, n);
    }
    
    private GameBadge Pe() {
        return new GameBadgeEntity(this);
    }
    
    @Override
    public final Uri NR() {
        return this.fS("badge_icon_image_uri");
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return GameBadgeEntity.a(this, o);
    }
    
    @Override
    public final String getDescription() {
        return this.getString("badge_description");
    }
    
    @Override
    public final String getTitle() {
        return this.getString("badge_title");
    }
    
    @Override
    public final int getType() {
        return this.getInteger("badge_type");
    }
    
    @Override
    public final int hashCode() {
        return GameBadgeEntity.a(this);
    }
    
    @Override
    public final String toString() {
        return GameBadgeEntity.b(this);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        ((GameBadgeEntity)this.Pe()).writeToParcel(parcel, n);
    }
}
