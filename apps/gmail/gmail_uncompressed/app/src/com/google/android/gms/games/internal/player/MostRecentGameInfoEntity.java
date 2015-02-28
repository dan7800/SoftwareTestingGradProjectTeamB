package com.google.android.gms.games.internal.player;

import com.google.android.gms.common.internal.safeparcel.*;
import android.net.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public final class MostRecentGameInfoEntity implements SafeParcelable, MostRecentGameInfo
{
    public static final a CREATOR;
    private final Uri bOA;
    private final String bOv;
    private final String bOw;
    private final long bOx;
    private final Uri bOy;
    private final Uri bOz;
    private final int btV;
    
    static {
        CREATOR = new a();
    }
    
    MostRecentGameInfoEntity(final int btV, final String bOv, final String bOw, final long bOx, final Uri bOy, final Uri bOz, final Uri boa) {
        this.btV = btV;
        this.bOv = bOv;
        this.bOw = bOw;
        this.bOx = bOx;
        this.bOy = bOy;
        this.bOz = bOz;
        this.bOA = boa;
    }
    
    public MostRecentGameInfoEntity(final MostRecentGameInfo mostRecentGameInfo) {
        this.btV = 2;
        this.bOv = mostRecentGameInfo.Po();
        this.bOw = mostRecentGameInfo.Pp();
        this.bOx = mostRecentGameInfo.Pq();
        this.bOy = mostRecentGameInfo.Pr();
        this.bOz = mostRecentGameInfo.Ps();
        this.bOA = mostRecentGameInfo.Pt();
    }
    
    static int a(final MostRecentGameInfo mostRecentGameInfo) {
        return Arrays.hashCode(new Object[] { mostRecentGameInfo.Po(), mostRecentGameInfo.Pp(), mostRecentGameInfo.Pq(), mostRecentGameInfo.Pr(), mostRecentGameInfo.Ps(), mostRecentGameInfo.Pt() });
    }
    
    static boolean a(final MostRecentGameInfo mostRecentGameInfo, final Object o) {
        if (o instanceof MostRecentGameInfo) {
            if (mostRecentGameInfo == o) {
                return true;
            }
            final MostRecentGameInfo mostRecentGameInfo2 = (MostRecentGameInfo)o;
            if (E.b(mostRecentGameInfo2.Po(), mostRecentGameInfo.Po()) && E.b(mostRecentGameInfo2.Pp(), mostRecentGameInfo.Pp()) && E.b(mostRecentGameInfo2.Pq(), mostRecentGameInfo.Pq()) && E.b(mostRecentGameInfo2.Pr(), mostRecentGameInfo.Pr()) && E.b(mostRecentGameInfo2.Ps(), mostRecentGameInfo.Ps()) && E.b(mostRecentGameInfo2.Pt(), mostRecentGameInfo.Pt())) {
                return true;
            }
        }
        return false;
    }
    
    static String b(final MostRecentGameInfo mostRecentGameInfo) {
        return E.ad(mostRecentGameInfo).e("GameId", mostRecentGameInfo.Po()).e("GameName", mostRecentGameInfo.Pp()).e("ActivityTimestampMillis", mostRecentGameInfo.Pq()).e("GameIconUri", mostRecentGameInfo.Pr()).e("GameHiResUri", mostRecentGameInfo.Ps()).e("GameFeaturedUri", mostRecentGameInfo.Pt()).toString();
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    @Override
    public final String Po() {
        return this.bOv;
    }
    
    @Override
    public final String Pp() {
        return this.bOw;
    }
    
    @Override
    public final long Pq() {
        return this.bOx;
    }
    
    @Override
    public final Uri Pr() {
        return this.bOy;
    }
    
    @Override
    public final Uri Ps() {
        return this.bOz;
    }
    
    @Override
    public final Uri Pt() {
        return this.bOA;
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
        a.a(this, parcel, n);
    }
}
