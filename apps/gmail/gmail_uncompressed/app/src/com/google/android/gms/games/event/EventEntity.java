package com.google.android.gms.games.event;

import com.google.android.gms.common.internal.safeparcel.*;
import android.net.*;
import com.google.android.gms.games.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.os.*;
import com.google.android.gms.common.data.*;

public final class EventEntity implements SafeParcelable, Event
{
    public static final a CREATOR;
    private final String bMj;
    private final PlayerEntity bNV;
    private final Uri bNg;
    private final String bNr;
    private final String bOa;
    private final long bOb;
    private final String bOc;
    private final boolean bOd;
    private final int btV;
    private final String mName;
    
    static {
        CREATOR = new a();
    }
    
    EventEntity(final int btV, final String bOa, final String mName, final String bMj, final Uri bNg, final String bNr, final Player player, final long bOb, final String bOc, final boolean bOd) {
        this.btV = btV;
        this.bOa = bOa;
        this.mName = mName;
        this.bMj = bMj;
        this.bNg = bNg;
        this.bNr = bNr;
        this.bNV = new PlayerEntity(player);
        this.bOb = bOb;
        this.bOc = bOc;
        this.bOd = bOd;
    }
    
    public EventEntity(final Event event) {
        this.btV = 1;
        this.bOa = event.OM();
        this.mName = event.getName();
        this.bMj = event.getDescription();
        this.bNg = event.NR();
        this.bNr = event.NS();
        this.bNV = ((e<PlayerEntity>)event.OG()).KN();
        this.bOb = event.getValue();
        this.bOc = event.ON();
        this.bOd = event.isVisible();
    }
    
    static int a(final Event event) {
        return Arrays.hashCode(new Object[] { event.OM(), event.getName(), event.getDescription(), event.NR(), event.NS(), event.OG(), event.getValue(), event.ON(), event.isVisible() });
    }
    
    static boolean a(final Event event, final Object o) {
        if (o instanceof Event) {
            if (event == o) {
                return true;
            }
            final Event event2 = (Event)o;
            if (E.b(event2.OM(), event.OM()) && E.b(event2.getName(), event.getName()) && E.b(event2.getDescription(), event.getDescription()) && E.b(event2.NR(), event.NR()) && E.b(event2.NS(), event.NS()) && E.b(event2.OG(), event.OG()) && E.b(event2.getValue(), event.getValue()) && E.b(event2.ON(), event.ON()) && E.b(event2.isVisible(), event.isVisible())) {
                return true;
            }
        }
        return false;
    }
    
    static String b(final Event event) {
        return E.ad(event).e("Id", event.OM()).e("Name", event.getName()).e("Description", event.getDescription()).e("IconImageUri", event.NR()).e("IconImageUrl", event.NS()).e("Player", event.OG()).e("Value", event.getValue()).e("FormattedValue", event.ON()).e("isVisible", event.isVisible()).toString();
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    @Override
    public final Uri NR() {
        return this.bNg;
    }
    
    @Override
    public final String NS() {
        return this.bNr;
    }
    
    @Override
    public final Player OG() {
        return this.bNV;
    }
    
    @Override
    public final String OM() {
        return this.bOa;
    }
    
    @Override
    public final String ON() {
        return this.bOc;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return a(this, o);
    }
    
    @Override
    public final String getDescription() {
        return this.bMj;
    }
    
    @Override
    public final String getName() {
        return this.mName;
    }
    
    @Override
    public final long getValue() {
        return this.bOb;
    }
    
    @Override
    public final int hashCode() {
        return a(this);
    }
    
    @Override
    public final boolean isVisible() {
        return this.bOd;
    }
    
    @Override
    public final String toString() {
        return b(this);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel, n);
    }
}
