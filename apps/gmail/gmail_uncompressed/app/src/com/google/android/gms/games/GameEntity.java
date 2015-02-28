package com.google.android.gms.games;

import com.google.android.gms.games.internal.*;
import android.net.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public final class GameEntity extends GamesDowngradeableSafeParcel implements Game
{
    public static final Parcelable$Creator<GameEntity> CREATOR;
    private final String bBj;
    private final String bFK;
    private final String bMj;
    private final String bNd;
    private final String bNe;
    private final String bNf;
    private final Uri bNg;
    private final Uri bNh;
    private final Uri bNi;
    private final boolean bNj;
    private final boolean bNk;
    private final String bNl;
    private final int bNm;
    private final int bNn;
    private final int bNo;
    private final boolean bNp;
    private final boolean bNq;
    private final String bNr;
    private final String bNs;
    private final String bNt;
    private final boolean bNu;
    private final boolean bNv;
    private final boolean bNw;
    private final String bNx;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    GameEntity(final int btV, final String bBj, final String bfk, final String bNd, final String bNe, final String bMj, final String bNf, final Uri bNg, final Uri bNh, final Uri bNi, final boolean bNj, final boolean bNk, final String bNl, final int bNm, final int bNn, final int bNo, final boolean bNp, final boolean bNq, final String bNr, final String bNs, final String bNt, final boolean bNu, final boolean bNv, final boolean bNw, final String bNx) {
        this.btV = btV;
        this.bBj = bBj;
        this.bFK = bfk;
        this.bNd = bNd;
        this.bNe = bNe;
        this.bMj = bMj;
        this.bNf = bNf;
        this.bNg = bNg;
        this.bNr = bNr;
        this.bNh = bNh;
        this.bNs = bNs;
        this.bNi = bNi;
        this.bNt = bNt;
        this.bNj = bNj;
        this.bNk = bNk;
        this.bNl = bNl;
        this.bNm = bNm;
        this.bNn = bNn;
        this.bNo = bNo;
        this.bNp = bNp;
        this.bNq = bNq;
        this.bNu = bNu;
        this.bNv = bNv;
        this.bNw = bNw;
        this.bNx = bNx;
    }
    
    public GameEntity(final Game game) {
        this.btV = 5;
        this.bBj = game.JX();
        this.bNd = game.NO();
        this.bNe = game.NP();
        this.bMj = game.getDescription();
        this.bNf = game.NQ();
        this.bFK = game.getDisplayName();
        this.bNg = game.NR();
        this.bNr = game.NS();
        this.bNh = game.NT();
        this.bNs = game.NU();
        this.bNi = game.NV();
        this.bNt = game.NW();
        this.bNj = game.NX();
        this.bNk = game.NZ();
        this.bNl = game.Oa();
        this.bNm = game.Ob();
        this.bNn = game.Oc();
        this.bNo = game.Od();
        this.bNp = game.Oe();
        this.bNq = game.Of();
        this.bNu = game.isMuted();
        this.bNv = game.NY();
        this.bNw = game.Og();
        this.bNx = game.Oh();
    }
    
    static int a(final Game game) {
        return Arrays.hashCode(new Object[] { game.JX(), game.getDisplayName(), game.NO(), game.NP(), game.getDescription(), game.NQ(), game.NR(), game.NT(), game.NV(), game.NX(), game.NZ(), game.Oa(), game.Ob(), game.Oc(), game.Od(), game.Oe(), game.Of(), game.isMuted(), game.NY(), game.Og(), game.Oh() });
    }
    
    static boolean a(final Game game, final Object o) {
        if (o instanceof Game) {
            if (game == o) {
                return true;
            }
            final Game game2 = (Game)o;
            if (E.b(game2.JX(), game.JX()) && E.b(game2.getDisplayName(), game.getDisplayName()) && E.b(game2.NO(), game.NO()) && E.b(game2.NP(), game.NP()) && E.b(game2.getDescription(), game.getDescription()) && E.b(game2.NQ(), game.NQ()) && E.b(game2.NR(), game.NR()) && E.b(game2.NT(), game.NT()) && E.b(game2.NV(), game.NV()) && E.b(game2.NX(), game.NX()) && E.b(game2.NZ(), game.NZ()) && E.b(game2.Oa(), game.Oa()) && E.b(game2.Ob(), game.Ob()) && E.b(game2.Oc(), game.Oc()) && E.b(game2.Od(), game.Od()) && E.b(game2.Oe(), game.Oe()) && E.b(game2.Of(), game.Of() && E.b(game2.isMuted(), game.isMuted()) && E.b(game2.NY(), game.NY())) && E.b(game2.Og(), game.Og()) && E.b(game2.Oh(), game.Oh())) {
                return true;
            }
        }
        return false;
    }
    
    static String b(final Game game) {
        return E.ad(game).e("ApplicationId", game.JX()).e("DisplayName", game.getDisplayName()).e("PrimaryCategory", game.NO()).e("SecondaryCategory", game.NP()).e("Description", game.getDescription()).e("DeveloperName", game.NQ()).e("IconImageUri", game.NR()).e("IconImageUrl", game.NS()).e("HiResImageUri", game.NT()).e("HiResImageUrl", game.NU()).e("FeaturedImageUri", game.NV()).e("FeaturedImageUrl", game.NW()).e("PlayEnabledGame", game.NX()).e("InstanceInstalled", game.NZ()).e("InstancePackageName", game.Oa()).e("AchievementTotalCount", game.Oc()).e("LeaderboardCount", game.Od()).e("RealTimeMultiplayerEnabled", game.Oe()).e("TurnBasedMultiplayerEnabled", game.Of()).e("AreSnapshotsEnabled", game.Og()).e("ThemeColor", game.Oh()).toString();
    }
    
    @Override
    public final String JX() {
        return this.bBj;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    @Override
    public final String NO() {
        return this.bNd;
    }
    
    @Override
    public final String NP() {
        return this.bNe;
    }
    
    @Override
    public final String NQ() {
        return this.bNf;
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
    public final Uri NT() {
        return this.bNh;
    }
    
    @Override
    public final String NU() {
        return this.bNs;
    }
    
    @Override
    public final Uri NV() {
        return this.bNi;
    }
    
    @Override
    public final String NW() {
        return this.bNt;
    }
    
    @Override
    public final boolean NX() {
        return this.bNj;
    }
    
    @Override
    public final boolean NY() {
        return this.bNv;
    }
    
    @Override
    public final boolean NZ() {
        return this.bNk;
    }
    
    @Override
    public final String Oa() {
        return this.bNl;
    }
    
    @Override
    public final int Ob() {
        return this.bNm;
    }
    
    @Override
    public final int Oc() {
        return this.bNn;
    }
    
    @Override
    public final int Od() {
        return this.bNo;
    }
    
    @Override
    public final boolean Oe() {
        return this.bNp;
    }
    
    @Override
    public final boolean Of() {
        return this.bNq;
    }
    
    @Override
    public final boolean Og() {
        return this.bNw;
    }
    
    @Override
    public final String Oh() {
        return this.bNx;
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
    public final String getDisplayName() {
        return this.bFK;
    }
    
    @Override
    public final int hashCode() {
        return a(this);
    }
    
    @Override
    public final boolean isMuted() {
        return this.bNu;
    }
    
    @Override
    public final String toString() {
        return b(this);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        int n2 = 1;
        if (!this.KZ()) {
            b.a(this, parcel, n);
            return;
        }
        parcel.writeString(this.bBj);
        parcel.writeString(this.bFK);
        parcel.writeString(this.bNd);
        parcel.writeString(this.bNe);
        parcel.writeString(this.bMj);
        parcel.writeString(this.bNf);
        String string;
        if (this.bNg == null) {
            string = null;
        }
        else {
            string = this.bNg.toString();
        }
        parcel.writeString(string);
        String string2;
        if (this.bNh == null) {
            string2 = null;
        }
        else {
            string2 = this.bNh.toString();
        }
        parcel.writeString(string2);
        final Uri bNi = this.bNi;
        String string3 = null;
        if (bNi != null) {
            string3 = this.bNi.toString();
        }
        parcel.writeString(string3);
        int n3;
        if (this.bNj) {
            n3 = n2;
        }
        else {
            n3 = 0;
        }
        parcel.writeInt(n3);
        if (!this.bNk) {
            n2 = 0;
        }
        parcel.writeInt(n2);
        parcel.writeString(this.bNl);
        parcel.writeInt(this.bNm);
        parcel.writeInt(this.bNn);
        parcel.writeInt(this.bNo);
    }
}
