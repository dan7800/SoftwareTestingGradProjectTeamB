package com.google.android.gms.games.event;

import com.google.android.gms.common.data.*;
import android.net.*;
import com.google.android.gms.games.*;
import android.os.*;

public final class EventRef extends h implements Event
{
    private Event OO() {
        return new EventEntity(this);
    }
    
    @Override
    public final Uri NR() {
        return this.fS("icon_image_uri");
    }
    
    @Override
    public final String NS() {
        return this.getString("icon_image_url");
    }
    
    @Override
    public final Player OG() {
        return new PlayerRef(this.bDT, this.bEo);
    }
    
    @Override
    public final String OM() {
        return this.getString("external_event_id");
    }
    
    @Override
    public final String ON() {
        return this.getString("formatted_value");
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return EventEntity.a(this, o);
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
    public final long getValue() {
        return this.getLong("value");
    }
    
    @Override
    public final int hashCode() {
        return EventEntity.a(this);
    }
    
    @Override
    public final boolean isVisible() {
        return this.getBoolean("visibility");
    }
    
    @Override
    public final String toString() {
        return EventEntity.b(this);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        ((EventEntity)this.OO()).writeToParcel(parcel, n);
    }
}
