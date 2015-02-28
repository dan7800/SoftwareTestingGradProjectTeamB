package com.google.android.gms.internal;

import com.google.android.gms.plus.a.a.*;
import com.google.android.gms.common.server.response.*;
import java.util.*;
import android.os.*;

public final class re extends FastSafeParcelableJsonResponse implements a
{
    public static final cQ CREATOR;
    private static final HashMap<String, FastJsonResponse$Field<?, ?>> bXv;
    String bMj;
    double bUY;
    double bUZ;
    String bXA;
    String bXB;
    String bXC;
    List<re> bXD;
    int bXE;
    List<re> bXF;
    re bXG;
    List<re> bXH;
    String bXI;
    String bXJ;
    re bXK;
    String bXL;
    String bXM;
    String bXN;
    List<re> bXO;
    String bXP;
    String bXQ;
    String bXR;
    String bXS;
    String bXT;
    String bXU;
    String bXV;
    String bXW;
    re bXX;
    String bXY;
    String bXZ;
    final Set<Integer> bXw;
    re bXx;
    List<String> bXy;
    re bXz;
    String bYa;
    re bYb;
    re bYc;
    re bYd;
    List<re> bYe;
    String bYf;
    String bYg;
    String bYh;
    String bYi;
    re bYj;
    String bYk;
    String bYl;
    String bYm;
    re bYn;
    String bYo;
    String bYp;
    String bYq;
    String bYr;
    String bYs;
    final int btV;
    String bzB;
    String bzz;
    String mName;
    
    static {
        CREATOR = new cQ();
        (bXv = new HashMap<String, FastJsonResponse$Field<?, ?>>()).put("about", FastJsonResponse$Field.a("about", 2, (Class<?>)re.class));
        re.bXv.put("additionalName", FastJsonResponse$Field.fZ("additionalName"));
        re.bXv.put("address", FastJsonResponse$Field.a("address", 4, (Class<?>)re.class));
        re.bXv.put("addressCountry", FastJsonResponse$Field.n("addressCountry", 5));
        re.bXv.put("addressLocality", FastJsonResponse$Field.n("addressLocality", 6));
        re.bXv.put("addressRegion", FastJsonResponse$Field.n("addressRegion", 7));
        re.bXv.put("associated_media", FastJsonResponse$Field.b("associated_media", 8, re.class));
        re.bXv.put("attendeeCount", FastJsonResponse$Field.k("attendeeCount", 9));
        re.bXv.put("attendees", FastJsonResponse$Field.b("attendees", 10, re.class));
        re.bXv.put("audio", FastJsonResponse$Field.a("audio", 11, (Class<?>)re.class));
        re.bXv.put("author", FastJsonResponse$Field.b("author", 12, re.class));
        re.bXv.put("bestRating", FastJsonResponse$Field.n("bestRating", 13));
        re.bXv.put("birthDate", FastJsonResponse$Field.n("birthDate", 14));
        re.bXv.put("byArtist", FastJsonResponse$Field.a("byArtist", 15, (Class<?>)re.class));
        re.bXv.put("caption", FastJsonResponse$Field.n("caption", 16));
        re.bXv.put("contentSize", FastJsonResponse$Field.n("contentSize", 17));
        re.bXv.put("contentUrl", FastJsonResponse$Field.n("contentUrl", 18));
        re.bXv.put("contributor", FastJsonResponse$Field.b("contributor", 19, re.class));
        re.bXv.put("dateCreated", FastJsonResponse$Field.n("dateCreated", 20));
        re.bXv.put("dateModified", FastJsonResponse$Field.n("dateModified", 21));
        re.bXv.put("datePublished", FastJsonResponse$Field.n("datePublished", 22));
        re.bXv.put("description", FastJsonResponse$Field.n("description", 23));
        re.bXv.put("duration", FastJsonResponse$Field.n("duration", 24));
        re.bXv.put("embedUrl", FastJsonResponse$Field.n("embedUrl", 25));
        re.bXv.put("endDate", FastJsonResponse$Field.n("endDate", 26));
        re.bXv.put("familyName", FastJsonResponse$Field.n("familyName", 27));
        re.bXv.put("gender", FastJsonResponse$Field.n("gender", 28));
        re.bXv.put("geo", FastJsonResponse$Field.a("geo", 29, (Class<?>)re.class));
        re.bXv.put("givenName", FastJsonResponse$Field.n("givenName", 30));
        re.bXv.put("height", FastJsonResponse$Field.n("height", 31));
        re.bXv.put("id", FastJsonResponse$Field.n("id", 32));
        re.bXv.put("image", FastJsonResponse$Field.n("image", 33));
        re.bXv.put("inAlbum", FastJsonResponse$Field.a("inAlbum", 34, (Class<?>)re.class));
        re.bXv.put("latitude", FastJsonResponse$Field.l("latitude", 36));
        re.bXv.put("location", FastJsonResponse$Field.a("location", 37, (Class<?>)re.class));
        re.bXv.put("longitude", FastJsonResponse$Field.l("longitude", 38));
        re.bXv.put("name", FastJsonResponse$Field.n("name", 39));
        re.bXv.put("partOfTVSeries", FastJsonResponse$Field.a("partOfTVSeries", 40, (Class<?>)re.class));
        re.bXv.put("performers", FastJsonResponse$Field.b("performers", 41, re.class));
        re.bXv.put("playerType", FastJsonResponse$Field.n("playerType", 42));
        re.bXv.put("postOfficeBoxNumber", FastJsonResponse$Field.n("postOfficeBoxNumber", 43));
        re.bXv.put("postalCode", FastJsonResponse$Field.n("postalCode", 44));
        re.bXv.put("ratingValue", FastJsonResponse$Field.n("ratingValue", 45));
        re.bXv.put("reviewRating", FastJsonResponse$Field.a("reviewRating", 46, (Class<?>)re.class));
        re.bXv.put("startDate", FastJsonResponse$Field.n("startDate", 47));
        re.bXv.put("streetAddress", FastJsonResponse$Field.n("streetAddress", 48));
        re.bXv.put("text", FastJsonResponse$Field.n("text", 49));
        re.bXv.put("thumbnail", FastJsonResponse$Field.a("thumbnail", 50, (Class<?>)re.class));
        re.bXv.put("thumbnailUrl", FastJsonResponse$Field.n("thumbnailUrl", 51));
        re.bXv.put("tickerSymbol", FastJsonResponse$Field.n("tickerSymbol", 52));
        re.bXv.put("type", FastJsonResponse$Field.n("type", 53));
        re.bXv.put("url", FastJsonResponse$Field.n("url", 54));
        re.bXv.put("width", FastJsonResponse$Field.n("width", 55));
        re.bXv.put("worstRating", FastJsonResponse$Field.n("worstRating", 56));
    }
    
    public re() {
        this.btV = 1;
        this.bXw = new HashSet<Integer>();
    }
    
    re(final Set<Integer> bXw, final int btV, final re bXx, final List<String> bXy, final re bXz, final String bxa, final String bxb, final String bxc, final List<re> bxd, final int bxe, final List<re> bxf, final re bxg, final List<re> bxh, final String bxi, final String bxj, final re bxk, final String bxl, final String bxm, final String bxn, final List<re> bxo, final String bxp, final String bxq, final String bxr, final String bMj, final String bxs, final String bxt, final String bxu, final String bxv, final String bxw, final re bxx, final String bxy, final String bxz, final String bzz, final String bYa, final re bYb, final double buy, final re bYc, final double buz, final String mName, final re bYd, final List<re> bYe, final String bYf, final String bYg, final String bYh, final String bYi, final re bYj, final String bYk, final String bYl, final String bYm, final re bYn, final String bYo, final String bYp, final String bzB, final String bYq, final String bYr, final String bYs) {
        this.bXw = bXw;
        this.btV = btV;
        this.bXx = bXx;
        this.bXy = bXy;
        this.bXz = bXz;
        this.bXA = bxa;
        this.bXB = bxb;
        this.bXC = bxc;
        this.bXD = bxd;
        this.bXE = bxe;
        this.bXF = bxf;
        this.bXG = bxg;
        this.bXH = bxh;
        this.bXI = bxi;
        this.bXJ = bxj;
        this.bXK = bxk;
        this.bXL = bxl;
        this.bXM = bxm;
        this.bXN = bxn;
        this.bXO = bxo;
        this.bXP = bxp;
        this.bXQ = bxq;
        this.bXR = bxr;
        this.bMj = bMj;
        this.bXS = bxs;
        this.bXT = bxt;
        this.bXU = bxu;
        this.bXV = bxv;
        this.bXW = bxw;
        this.bXX = bxx;
        this.bXY = bxy;
        this.bXZ = bxz;
        this.bzz = bzz;
        this.bYa = bYa;
        this.bYb = bYb;
        this.bUY = buy;
        this.bYc = bYc;
        this.bUZ = buz;
        this.mName = mName;
        this.bYd = bYd;
        this.bYe = bYe;
        this.bYf = bYf;
        this.bYg = bYg;
        this.bYh = bYh;
        this.bYi = bYi;
        this.bYj = bYj;
        this.bYk = bYk;
        this.bYl = bYl;
        this.bYm = bYm;
        this.bYn = bYn;
        this.bYo = bYo;
        this.bYp = bYp;
        this.bzB = bzB;
        this.bYq = bYq;
        this.bYr = bYr;
        this.bYs = bYs;
    }
    
    @Override
    public final HashMap<String, FastJsonResponse$Field<?, ?>> Lu() {
        return re.bXv;
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
                return this.bXx;
            }
            case 3: {
                return this.bXy;
            }
            case 4: {
                return this.bXz;
            }
            case 5: {
                return this.bXA;
            }
            case 6: {
                return this.bXB;
            }
            case 7: {
                return this.bXC;
            }
            case 8: {
                return this.bXD;
            }
            case 9: {
                return this.bXE;
            }
            case 10: {
                return this.bXF;
            }
            case 11: {
                return this.bXG;
            }
            case 12: {
                return this.bXH;
            }
            case 13: {
                return this.bXI;
            }
            case 14: {
                return this.bXJ;
            }
            case 15: {
                return this.bXK;
            }
            case 16: {
                return this.bXL;
            }
            case 17: {
                return this.bXM;
            }
            case 18: {
                return this.bXN;
            }
            case 19: {
                return this.bXO;
            }
            case 20: {
                return this.bXP;
            }
            case 21: {
                return this.bXQ;
            }
            case 22: {
                return this.bXR;
            }
            case 23: {
                return this.bMj;
            }
            case 24: {
                return this.bXS;
            }
            case 25: {
                return this.bXT;
            }
            case 26: {
                return this.bXU;
            }
            case 27: {
                return this.bXV;
            }
            case 28: {
                return this.bXW;
            }
            case 29: {
                return this.bXX;
            }
            case 30: {
                return this.bXY;
            }
            case 31: {
                return this.bXZ;
            }
            case 32: {
                return this.bzz;
            }
            case 33: {
                return this.bYa;
            }
            case 34: {
                return this.bYb;
            }
            case 36: {
                return this.bUY;
            }
            case 37: {
                return this.bYc;
            }
            case 38: {
                return this.bUZ;
            }
            case 39: {
                return this.mName;
            }
            case 40: {
                return this.bYd;
            }
            case 41: {
                return this.bYe;
            }
            case 42: {
                return this.bYf;
            }
            case 43: {
                return this.bYg;
            }
            case 44: {
                return this.bYh;
            }
            case 45: {
                return this.bYi;
            }
            case 46: {
                return this.bYj;
            }
            case 47: {
                return this.bYk;
            }
            case 48: {
                return this.bYl;
            }
            case 49: {
                return this.bYm;
            }
            case 50: {
                return this.bYn;
            }
            case 51: {
                return this.bYo;
            }
            case 52: {
                return this.bYp;
            }
            case 53: {
                return this.bzB;
            }
            case 54: {
                return this.bYq;
            }
            case 55: {
                return this.bYr;
            }
            case 56: {
                return this.bYs;
            }
        }
    }
    
    public final int describeContents() {
        final cQ creator = re.CREATOR;
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (!(o instanceof re)) {
            return false;
        }
        if (this == o) {
            return true;
        }
        final re re = (re)o;
        for (final FastJsonResponse$Field<?, ?> fastJsonResponse$Field : com.google.android.gms.internal.re.bXv.values()) {
            if (this.a(fastJsonResponse$Field)) {
                if (!re.a(fastJsonResponse$Field)) {
                    return false;
                }
                if (!this.b(fastJsonResponse$Field).equals(re.b(fastJsonResponse$Field))) {
                    return false;
                }
                continue;
            }
            else {
                if (re.a(fastJsonResponse$Field)) {
                    return false;
                }
                continue;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        final Iterator<FastJsonResponse$Field<?, ?>> iterator = re.bXv.values().iterator();
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
        final cQ creator = re.CREATOR;
        cQ.a(this, parcel, n);
    }
}
