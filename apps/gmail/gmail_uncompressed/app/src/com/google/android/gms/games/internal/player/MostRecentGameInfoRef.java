package com.google.android.gms.games.internal.player;

import com.google.android.gms.common.data.*;
import android.net.*;
import android.os.*;

public final class MostRecentGameInfoRef extends h implements MostRecentGameInfo
{
    private final b bNM;
    
    public MostRecentGameInfoRef(final DataHolder dataHolder, final int n, final b bnm) {
        super(dataHolder, n);
        this.bNM = bnm;
    }
    
    private MostRecentGameInfo Pu() {
        return new MostRecentGameInfoEntity(this);
    }
    
    @Override
    public final String Po() {
        return this.getString(this.bNM.bOU);
    }
    
    @Override
    public final String Pp() {
        return this.getString(this.bNM.bOV);
    }
    
    @Override
    public final long Pq() {
        return this.getLong(this.bNM.bOW);
    }
    
    @Override
    public final Uri Pr() {
        return this.fS(this.bNM.bOX);
    }
    
    @Override
    public final Uri Ps() {
        return this.fS(this.bNM.bOY);
    }
    
    @Override
    public final Uri Pt() {
        return this.fS(this.bNM.bOZ);
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return MostRecentGameInfoEntity.a(this, o);
    }
    
    @Override
    public final int hashCode() {
        return MostRecentGameInfoEntity.a(this);
    }
    
    @Override
    public final String toString() {
        return MostRecentGameInfoEntity.b(this);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        ((MostRecentGameInfoEntity)this.Pu()).writeToParcel(parcel, n);
    }
}
