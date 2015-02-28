package com.google.android.gms.games;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public final class PlayerLevelInfo implements SafeParcelable
{
    public static final f CREATOR;
    private final long bNI;
    private final long bNJ;
    private final PlayerLevel bNK;
    private final PlayerLevel bNL;
    private final int btV;
    
    static {
        CREATOR = new f();
    }
    
    PlayerLevelInfo(final int btV, final long bni, final long bnj, final PlayerLevel bnk, final PlayerLevel bnl) {
        G.cc(bni != -1L);
        G.ae(bnk);
        G.ae(bnl);
        this.btV = btV;
        this.bNI = bni;
        this.bNJ = bnj;
        this.bNK = bnk;
        this.bNL = bnl;
    }
    
    public PlayerLevelInfo(final long n, final long n2, final PlayerLevel playerLevel, final PlayerLevel playerLevel2) {
        this(1, n, n2, playerLevel, playerLevel2);
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final long Ou() {
        return this.bNI;
    }
    
    public final long Ov() {
        return this.bNJ;
    }
    
    public final PlayerLevel Ow() {
        return this.bNK;
    }
    
    public final PlayerLevel Ox() {
        return this.bNL;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o instanceof PlayerLevelInfo) {
            if (o == this) {
                return true;
            }
            final PlayerLevelInfo playerLevelInfo = (PlayerLevelInfo)o;
            if (E.b(this.bNI, playerLevelInfo.bNI) && E.b(this.bNJ, playerLevelInfo.bNJ) && E.b(this.bNK, playerLevelInfo.bNK) && E.b(this.bNL, playerLevelInfo.bNL)) {
                return true;
            }
        }
        return false;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.bNI, this.bNJ, this.bNK, this.bNL });
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        f.a(this, parcel, n);
    }
}
