package com.google.android.gms.games.multiplayer;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public final class ParticipantResult implements SafeParcelable
{
    public static final e CREATOR;
    private final String bPk;
    private final int bPo;
    private final int bPp;
    private final int btV;
    
    static {
        CREATOR = new e();
    }
    
    public ParticipantResult(final int btV, final String s, final int bPo, final int bPp) {
        this.btV = btV;
        this.bPk = G.ae(s);
        boolean b = false;
        switch (bPo) {
            default: {
                b = false;
                break;
            }
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5: {
                b = true;
                break;
            }
        }
        G.cc(b);
        this.bPo = bPo;
        this.bPp = bPp;
    }
    
    public ParticipantResult(final String s, final int n, final int n2) {
        this(1, s, n, n2);
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final String PC() {
        return this.bPk;
    }
    
    public final int PF() {
        return this.bPo;
    }
    
    public final int PG() {
        return this.bPp;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        e.a(this, parcel);
    }
}
