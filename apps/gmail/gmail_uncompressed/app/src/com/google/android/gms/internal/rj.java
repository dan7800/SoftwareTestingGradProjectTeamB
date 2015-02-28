package com.google.android.gms.internal;

import com.google.android.gms.plus.a.b.*;
import com.google.android.gms.common.server.response.*;
import java.util.*;
import android.os.*;

public final class rj extends FastSafeParcelableJsonResponse implements a
{
    public static final cS CREATOR;
    private static final HashMap<String, FastJsonResponse$Field<?, ?>> bXv;
    String bBz;
    String bFK;
    final Set<Integer> bXw;
    rj$b bYA;
    String bYB;
    int bYC;
    rj$c bYD;
    boolean bYE;
    rj$d bYF;
    String bYG;
    int bYH;
    List<rj$f> bYI;
    List<rj$g> bYJ;
    int bYK;
    int bYL;
    String bYM;
    List<rj$h> bYN;
    boolean bYO;
    String bYq;
    String bYv;
    rj$a bYw;
    String bYx;
    String bYy;
    int bYz;
    final int btV;
    String bzz;
    
    static {
        CREATOR = new cS();
        (bXv = new HashMap<String, FastJsonResponse$Field<?, ?>>()).put("aboutMe", FastJsonResponse$Field.n("aboutMe", 2));
        rj.bXv.put("ageRange", FastJsonResponse$Field.a("ageRange", 3, (Class<?>)rj$a.class));
        rj.bXv.put("birthday", FastJsonResponse$Field.n("birthday", 4));
        rj.bXv.put("braggingRights", FastJsonResponse$Field.n("braggingRights", 5));
        rj.bXv.put("circledByCount", FastJsonResponse$Field.k("circledByCount", 6));
        rj.bXv.put("cover", FastJsonResponse$Field.a("cover", 7, (Class<?>)rj$b.class));
        rj.bXv.put("currentLocation", FastJsonResponse$Field.n("currentLocation", 8));
        rj.bXv.put("displayName", FastJsonResponse$Field.n("displayName", 9));
        rj.bXv.put("gender", FastJsonResponse$Field.a("gender", 12, new jr().o("male", 0).o("female", 1).o("other", 2)));
        rj.bXv.put("id", FastJsonResponse$Field.n("id", 14));
        rj.bXv.put("image", FastJsonResponse$Field.a("image", 15, (Class<?>)rj$c.class));
        rj.bXv.put("isPlusUser", FastJsonResponse$Field.m("isPlusUser", 16));
        rj.bXv.put("language", FastJsonResponse$Field.n("language", 18));
        rj.bXv.put("name", FastJsonResponse$Field.a("name", 19, (Class<?>)rj$d.class));
        rj.bXv.put("nickname", FastJsonResponse$Field.n("nickname", 20));
        rj.bXv.put("objectType", FastJsonResponse$Field.a("objectType", 21, new jr().o("person", 0).o("page", 1)));
        rj.bXv.put("organizations", FastJsonResponse$Field.b("organizations", 22, rj$f.class));
        rj.bXv.put("placesLived", FastJsonResponse$Field.b("placesLived", 23, rj$g.class));
        rj.bXv.put("plusOneCount", FastJsonResponse$Field.k("plusOneCount", 24));
        rj.bXv.put("relationshipStatus", FastJsonResponse$Field.a("relationshipStatus", 25, new jr().o("single", 0).o("in_a_relationship", 1).o("engaged", 2).o("married", 3).o("its_complicated", 4).o("open_relationship", 5).o("widowed", 6).o("in_domestic_partnership", 7).o("in_civil_union", 8)));
        rj.bXv.put("tagline", FastJsonResponse$Field.n("tagline", 26));
        rj.bXv.put("url", FastJsonResponse$Field.n("url", 27));
        rj.bXv.put("urls", FastJsonResponse$Field.b("urls", 28, rj$h.class));
        rj.bXv.put("verified", FastJsonResponse$Field.m("verified", 29));
    }
    
    public rj() {
        this.btV = 1;
        this.bXw = new HashSet<Integer>();
    }
    
    rj(final Set<Integer> bXw, final int btV, final String bYv, final rj$a bYw, final String bYx, final String bYy, final int bYz, final rj$b bya, final String byb, final String bfk, final int byc, final String bzz, final rj$c byd, final boolean bye, final String bBz, final rj$d byf, final String byg, final int byh, final List<rj$f> byi, final List<rj$g> byj, final int byk, final int byl, final String bym, final String bYq, final List<rj$h> byn, final boolean byo) {
        this.bXw = bXw;
        this.btV = btV;
        this.bYv = bYv;
        this.bYw = bYw;
        this.bYx = bYx;
        this.bYy = bYy;
        this.bYz = bYz;
        this.bYA = bya;
        this.bYB = byb;
        this.bFK = bfk;
        this.bYC = byc;
        this.bzz = bzz;
        this.bYD = byd;
        this.bYE = bye;
        this.bBz = bBz;
        this.bYF = byf;
        this.bYG = byg;
        this.bYH = byh;
        this.bYI = byi;
        this.bYJ = byj;
        this.bYK = byk;
        this.bYL = byl;
        this.bYM = bym;
        this.bYq = bYq;
        this.bYN = byn;
        this.bYO = byo;
    }
    
    @Override
    public final HashMap<String, FastJsonResponse$Field<?, ?>> Lu() {
        return rj.bXv;
    }
    
    @Override
    protected final boolean a(final FastJsonResponse$Field fastJsonResponse$Field) {
        return this.bXw.contains(fastJsonResponse$Field.LC());
    }
    
    @Override
    protected final Object b(final FastJsonResponse$Field fastJsonResponse$Field) {
        switch (fastJsonResponse$Field.LC()) {
            default: {
                throw new IllegalStateException("Unknown safe parcelable id=" + fastJsonResponse$Field.LC());
            }
            case 2: {
                return this.bYv;
            }
            case 3: {
                return this.bYw;
            }
            case 4: {
                return this.bYx;
            }
            case 5: {
                return this.bYy;
            }
            case 6: {
                return this.bYz;
            }
            case 7: {
                return this.bYA;
            }
            case 8: {
                return this.bYB;
            }
            case 9: {
                return this.bFK;
            }
            case 12: {
                return this.bYC;
            }
            case 14: {
                return this.bzz;
            }
            case 15: {
                return this.bYD;
            }
            case 16: {
                return this.bYE;
            }
            case 18: {
                return this.bBz;
            }
            case 19: {
                return this.bYF;
            }
            case 20: {
                return this.bYG;
            }
            case 21: {
                return this.bYH;
            }
            case 22: {
                return this.bYI;
            }
            case 23: {
                return this.bYJ;
            }
            case 24: {
                return this.bYK;
            }
            case 25: {
                return this.bYL;
            }
            case 26: {
                return this.bYM;
            }
            case 27: {
                return this.bYq;
            }
            case 28: {
                return this.bYN;
            }
            case 29: {
                return this.bYO;
            }
        }
    }
    
    public final int describeContents() {
        final cS creator = rj.CREATOR;
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (!(o instanceof rj)) {
            return false;
        }
        if (this == o) {
            return true;
        }
        final rj rj = (rj)o;
        for (final FastJsonResponse$Field<?, ?> fastJsonResponse$Field : com.google.android.gms.internal.rj.bXv.values()) {
            if (this.a(fastJsonResponse$Field)) {
                if (!rj.a(fastJsonResponse$Field)) {
                    return false;
                }
                if (!this.b(fastJsonResponse$Field).equals(rj.b(fastJsonResponse$Field))) {
                    return false;
                }
                continue;
            }
            else {
                if (rj.a(fastJsonResponse$Field)) {
                    return false;
                }
                continue;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        final Iterator<FastJsonResponse$Field<?, ?>> iterator = rj.bXv.values().iterator();
        int n = 0;
        while (iterator.hasNext()) {
            final FastJsonResponse$Field<?, ?> fastJsonResponse$Field = iterator.next();
            int n2;
            if (this.a(fastJsonResponse$Field)) {
                n2 = n + fastJsonResponse$Field.LC() + this.b(fastJsonResponse$Field).hashCode();
            }
            else {
                n2 = n;
            }
            n = n2;
        }
        return n;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        final cS creator = rj.CREATOR;
        cS.a(this, parcel, n);
    }
}
