package com.google.android.gms.games.internal.game;

import com.google.android.gms.games.internal.*;
import com.google.android.gms.games.*;
import com.google.android.gms.games.snapshot.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public final class ExtendedGameEntity extends GamesDowngradeableSafeParcel implements ExtendedGame
{
    public static final b CREATOR;
    private final GameEntity bOg;
    private final int bOh;
    private final boolean bOi;
    private final int bOj;
    private final long bOk;
    private final long bOl;
    private final String bOm;
    private final long bOn;
    private final String bOo;
    private final ArrayList<GameBadgeEntity> bOp;
    private final SnapshotMetadataEntity bOq;
    private final int btV;
    
    static {
        CREATOR = new a();
    }
    
    ExtendedGameEntity(final int btV, final GameEntity bOg, final int bOh, final boolean bOi, final int bOj, final long bOk, final long bOl, final String bOm, final long bOn, final String bOo, final ArrayList<GameBadgeEntity> bOp, final SnapshotMetadataEntity bOq) {
        this.btV = btV;
        this.bOg = bOg;
        this.bOh = bOh;
        this.bOi = bOi;
        this.bOj = bOj;
        this.bOk = bOk;
        this.bOl = bOl;
        this.bOm = bOm;
        this.bOn = bOn;
        this.bOo = bOo;
        this.bOp = bOp;
        this.bOq = bOq;
    }
    
    public ExtendedGameEntity(final ExtendedGame extendedGame) {
        this.btV = 2;
        final Game or = extendedGame.OR();
        GameEntity bOg;
        if (or == null) {
            bOg = null;
        }
        else {
            bOg = new GameEntity(or);
        }
        this.bOg = bOg;
        this.bOh = extendedGame.OT();
        this.bOi = extendedGame.OU();
        this.bOj = extendedGame.OV();
        this.bOk = extendedGame.OW();
        this.bOl = extendedGame.OX();
        this.bOm = extendedGame.OY();
        this.bOn = extendedGame.OZ();
        this.bOo = extendedGame.Pa();
        final SnapshotMetadata pb = extendedGame.Pb();
        SnapshotMetadataEntity bOq = null;
        if (pb != null) {
            bOq = new SnapshotMetadataEntity(pb);
        }
        this.bOq = bOq;
        final ArrayList<GameBadge> os = extendedGame.OS();
        final int size = os.size();
        this.bOp = new ArrayList<GameBadgeEntity>(size);
        for (int i = 0; i < size; ++i) {
            this.bOp.add((GameBadgeEntity)os.get(i).KN());
        }
    }
    
    static int a(final ExtendedGame extendedGame) {
        return Arrays.hashCode(new Object[] { extendedGame.OR(), extendedGame.OT(), extendedGame.OU(), extendedGame.OV(), extendedGame.OW(), extendedGame.OX(), extendedGame.OY(), extendedGame.OZ(), extendedGame.Pa() });
    }
    
    static boolean a(final ExtendedGame extendedGame, final Object o) {
        if (o instanceof ExtendedGame) {
            if (extendedGame == o) {
                return true;
            }
            final ExtendedGame extendedGame2 = (ExtendedGame)o;
            if (E.b(extendedGame2.OR(), extendedGame.OR()) && E.b(extendedGame2.OT(), extendedGame.OT()) && E.b(extendedGame2.OU(), extendedGame.OU()) && E.b(extendedGame2.OV(), extendedGame.OV()) && E.b(extendedGame2.OW(), extendedGame.OW()) && E.b(extendedGame2.OX(), extendedGame.OX()) && E.b(extendedGame2.OY(), extendedGame.OY()) && E.b(extendedGame2.OZ(), extendedGame.OZ()) && E.b(extendedGame2.Pa(), extendedGame.Pa())) {
                return true;
            }
        }
        return false;
    }
    
    static String b(final ExtendedGame extendedGame) {
        return E.ad(extendedGame).e("Game", extendedGame.OR()).e("Availability", extendedGame.OT()).e("Owned", extendedGame.OU()).e("AchievementUnlockedCount", extendedGame.OV()).e("LastPlayedServerTimestamp", extendedGame.OW()).e("PriceMicros", extendedGame.OX()).e("FormattedPrice", extendedGame.OY()).e("FullPriceMicros", extendedGame.OZ()).e("FormattedFullPrice", extendedGame.Pa()).e("Snapshot", extendedGame.Pb()).toString();
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    @Override
    public final ArrayList<GameBadge> OS() {
        return new ArrayList<GameBadge>(this.bOp);
    }
    
    @Override
    public final int OT() {
        return this.bOh;
    }
    
    @Override
    public final boolean OU() {
        return this.bOi;
    }
    
    @Override
    public final int OV() {
        return this.bOj;
    }
    
    @Override
    public final long OW() {
        return this.bOk;
    }
    
    @Override
    public final long OX() {
        return this.bOl;
    }
    
    @Override
    public final String OY() {
        return this.bOm;
    }
    
    @Override
    public final long OZ() {
        return this.bOn;
    }
    
    @Override
    public final String Pa() {
        return this.bOo;
    }
    
    @Override
    public final SnapshotMetadata Pb() {
        return this.bOq;
    }
    
    public final GameEntity Pc() {
        return this.bOg;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return a(this, o);
    }
    
    @Override
    public final int hashCode() {
        return a(this);
    }
    
    @Override
    public final String toString() {
        return b(this);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        int i = 0;
        if (!this.KZ()) {
            b.a(this, parcel, n);
        }
        else {
            this.bOg.writeToParcel(parcel, n);
            parcel.writeInt(this.bOh);
            int n2;
            if (this.bOi) {
                n2 = 1;
            }
            else {
                n2 = 0;
            }
            parcel.writeInt(n2);
            parcel.writeInt(this.bOj);
            parcel.writeLong(this.bOk);
            parcel.writeLong(this.bOl);
            parcel.writeString(this.bOm);
            parcel.writeLong(this.bOn);
            parcel.writeString(this.bOo);
            final int size = this.bOp.size();
            parcel.writeInt(size);
            while (i < size) {
                this.bOp.get(i).writeToParcel(parcel, n);
                ++i;
            }
        }
    }
}
