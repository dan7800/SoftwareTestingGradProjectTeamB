package com.google.android.gms.games.request;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import com.google.android.gms.games.*;
import java.util.*;
import android.os.*;

public final class GameRequestEntity implements SafeParcelable, GameRequest
{
    public static final a CREATOR;
    private final byte[] Rb;
    private final int bBx;
    private final GameEntity bOg;
    private final PlayerEntity bPZ;
    private final long bPc;
    private final String bQa;
    private final ArrayList<PlayerEntity> bQb;
    private final long bQc;
    private final Bundle bQd;
    private final int btV;
    private final int bwX;
    
    static {
        CREATOR = new a();
    }
    
    GameRequestEntity(final int btV, final GameEntity bOg, final PlayerEntity bpz, final byte[] rb, final String bQa, final ArrayList<PlayerEntity> bQb, final int bwX, final long bPc, final long bQc, final Bundle bQd, final int bBx) {
        this.btV = btV;
        this.bOg = bOg;
        this.bPZ = bpz;
        this.Rb = rb;
        this.bQa = bQa;
        this.bQb = bQb;
        this.bwX = bwX;
        this.bPc = bPc;
        this.bQc = bQc;
        this.bQd = bQd;
        this.bBx = bBx;
    }
    
    public GameRequestEntity(final GameRequest gameRequest) {
        this.btV = 2;
        this.bOg = new GameEntity(gameRequest.OR());
        this.bPZ = new PlayerEntity(gameRequest.Px());
        this.bQa = gameRequest.Pw();
        this.bwX = gameRequest.getType();
        this.bPc = gameRequest.Pj();
        this.bQc = gameRequest.Py();
        this.bBx = gameRequest.getStatus();
        final byte[] data = gameRequest.getData();
        if (data == null) {
            this.Rb = null;
        }
        else {
            System.arraycopy(data, 0, this.Rb = new byte[data.length], 0, data.length);
        }
        final List<Player> pz = gameRequest.Pz();
        final int size = pz.size();
        this.bQb = new ArrayList<PlayerEntity>(size);
        this.bQd = new Bundle();
        for (int i = 0; i < size; ++i) {
            final Player player = pz.get(i).KN();
            final String ok = player.Ok();
            this.bQb.add((PlayerEntity)player);
            this.bQd.putInt(ok, gameRequest.gh(ok));
        }
    }
    
    static int a(final GameRequest gameRequest) {
        return Arrays.hashCode(new Object[] { gameRequest.OR(), gameRequest.Pz(), gameRequest.Pw(), gameRequest.Px(), b(gameRequest), gameRequest.getType(), gameRequest.Pj(), gameRequest.Py() });
    }
    
    static boolean a(final GameRequest gameRequest, final Object o) {
        if (o instanceof GameRequest) {
            if (gameRequest == o) {
                return true;
            }
            final GameRequest gameRequest2 = (GameRequest)o;
            if (E.b(gameRequest2.OR(), gameRequest.OR()) && E.b(gameRequest2.Pz(), gameRequest.Pz()) && E.b(gameRequest2.Pw(), gameRequest.Pw()) && E.b(gameRequest2.Px(), gameRequest.Px()) && Arrays.equals(b(gameRequest2), b(gameRequest)) && E.b(gameRequest2.getType(), gameRequest.getType()) && E.b(gameRequest2.Pj(), gameRequest.Pj()) && E.b(gameRequest2.Py(), gameRequest.Py())) {
                return true;
            }
        }
        return false;
    }
    
    private static int[] b(final GameRequest gameRequest) {
        final List<Player> pz = gameRequest.Pz();
        final int size = pz.size();
        final int[] array = new int[size];
        for (int i = 0; i < size; ++i) {
            array[i] = gameRequest.gh(pz.get(i).Ok());
        }
        return array;
    }
    
    static String c(final GameRequest gameRequest) {
        return E.ad(gameRequest).e("Game", gameRequest.OR()).e("Sender", gameRequest.Px()).e("Recipients", gameRequest.Pz()).e("Data", gameRequest.getData()).e("RequestId", gameRequest.Pw()).e("Type", gameRequest.getType()).e("CreationTimestamp", gameRequest.Pj()).e("ExpirationTimestamp", gameRequest.Py()).toString();
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    @Override
    public final Game OR() {
        return this.bOg;
    }
    
    @Override
    public final long Pj() {
        return this.bPc;
    }
    
    @Override
    public final String Pw() {
        return this.bQa;
    }
    
    @Override
    public final Player Px() {
        return this.bPZ;
    }
    
    @Override
    public final long Py() {
        return this.bQc;
    }
    
    @Override
    public final List<Player> Pz() {
        return new ArrayList<Player>(this.bQb);
    }
    
    public final Bundle Qk() {
        return this.bQd;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return a(this, o);
    }
    
    @Override
    public final byte[] getData() {
        return this.Rb;
    }
    
    @Override
    public final int getStatus() {
        return this.bBx;
    }
    
    @Override
    public final int getType() {
        return this.bwX;
    }
    
    @Override
    public final int gh(final String s) {
        return this.bQd.getInt(s, 0);
    }
    
    @Override
    public final int hashCode() {
        return a(this);
    }
    
    @Override
    public final String toString() {
        return c(this);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel, n);
    }
}
