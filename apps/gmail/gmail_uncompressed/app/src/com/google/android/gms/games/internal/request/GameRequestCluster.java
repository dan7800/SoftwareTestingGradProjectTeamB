package com.google.android.gms.games.internal.request;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.games.request.*;
import com.google.android.gms.common.internal.*;
import com.google.android.gms.games.*;
import java.util.*;
import android.os.*;

public final class GameRequestCluster implements SafeParcelable, GameRequest
{
    public static final a CREATOR;
    private final ArrayList<GameRequestEntity> bPa;
    private final int btV;
    
    static {
        CREATOR = new a();
    }
    
    GameRequestCluster(final int btV, final ArrayList<GameRequestEntity> bPa) {
        this.btV = btV;
        this.bPa = bPa;
        this.Pf();
    }
    
    private void Pf() {
        b.cc(!this.bPa.isEmpty());
        final GameRequestEntity gameRequestEntity = this.bPa.get(0);
        for (int size = this.bPa.size(), i = 1; i < size; ++i) {
            final GameRequestEntity gameRequestEntity2 = this.bPa.get(i);
            b.a(gameRequestEntity.getType() == gameRequestEntity2.getType(), "All the requests must be of the same type");
            b.a(gameRequestEntity.Px().equals(gameRequestEntity2.Px()), "All the requests must be from the same sender");
        }
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    @Override
    public final Game OR() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }
    
    @Override
    public final long Pj() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }
    
    public final ArrayList<GameRequest> Pv() {
        return new ArrayList<GameRequest>(this.bPa);
    }
    
    @Override
    public final String Pw() {
        return this.bPa.get(0).Pw();
    }
    
    @Override
    public final Player Px() {
        return this.bPa.get(0).Px();
    }
    
    @Override
    public final long Py() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (!(o instanceof GameRequestCluster)) {
            return false;
        }
        if (this == o) {
            return true;
        }
        final GameRequestCluster gameRequestCluster = (GameRequestCluster)o;
        if (gameRequestCluster.bPa.size() != this.bPa.size()) {
            return false;
        }
        for (int size = this.bPa.size(), i = 0; i < size; ++i) {
            if (!this.bPa.get(i).equals(gameRequestCluster.bPa.get(i))) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public final byte[] getData() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }
    
    @Override
    public final int getStatus() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }
    
    @Override
    public final int getType() {
        return this.bPa.get(0).getType();
    }
    
    @Override
    public final int gh(final String s) {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(this.bPa.toArray());
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel);
    }
}
