package com.google.android.gms.internal;

import com.google.android.gms.plus.a.b.*;
import com.google.android.gms.common.server.response.*;
import java.util.*;
import android.os.*;

public final class rj$f extends FastSafeParcelableJsonResponse implements h
{
    public static final cZ CREATOR;
    private static final HashMap<String, FastJsonResponse$Field<?, ?>> bXv;
    String bGC;
    String bMj;
    String bXU;
    final Set<Integer> bXw;
    String bYk;
    String bZa;
    String bZb;
    boolean bZc;
    final int btV;
    int bwX;
    String mName;
    
    static {
        CREATOR = new cZ();
        (bXv = new HashMap<String, FastJsonResponse$Field<?, ?>>()).put("department", FastJsonResponse$Field.n("department", 2));
        rj$f.bXv.put("description", FastJsonResponse$Field.n("description", 3));
        rj$f.bXv.put("endDate", FastJsonResponse$Field.n("endDate", 4));
        rj$f.bXv.put("location", FastJsonResponse$Field.n("location", 5));
        rj$f.bXv.put("name", FastJsonResponse$Field.n("name", 6));
        rj$f.bXv.put("primary", FastJsonResponse$Field.m("primary", 7));
        rj$f.bXv.put("startDate", FastJsonResponse$Field.n("startDate", 8));
        rj$f.bXv.put("title", FastJsonResponse$Field.n("title", 9));
        rj$f.bXv.put("type", FastJsonResponse$Field.a("type", 10, new jr().o("work", 0).o("school", 1)));
    }
    
    public rj$f() {
        this.btV = 1;
        this.bXw = new HashSet<Integer>();
    }
    
    rj$f(final Set<Integer> bXw, final int btV, final String bZa, final String bMj, final String bxu, final String bZb, final String mName, final boolean bZc, final String bYk, final String bgc, final int bwX) {
        this.bXw = bXw;
        this.btV = btV;
        this.bZa = bZa;
        this.bMj = bMj;
        this.bXU = bxu;
        this.bZb = bZb;
        this.mName = mName;
        this.bZc = bZc;
        this.bYk = bYk;
        this.bGC = bgc;
        this.bwX = bwX;
    }
    
    @Override
    public final HashMap<String, FastJsonResponse$Field<?, ?>> Lu() {
        return rj$f.bXv;
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
                return this.bZa;
            }
            case 3: {
                return this.bMj;
            }
            case 4: {
                return this.bXU;
            }
            case 5: {
                return this.bZb;
            }
            case 6: {
                return this.mName;
            }
            case 7: {
                return this.bZc;
            }
            case 8: {
                return this.bYk;
            }
            case 9: {
                return this.bGC;
            }
            case 10: {
                return this.bwX;
            }
        }
    }
    
    public final int describeContents() {
        final cZ creator = rj$f.CREATOR;
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (!(o instanceof rj$f)) {
            return false;
        }
        if (this == o) {
            return true;
        }
        final rj$f rj$f = (rj$f)o;
        for (final FastJsonResponse$Field<?, ?> fastJsonResponse$Field : com.google.android.gms.internal.rj$f.bXv.values()) {
            if (this.a(fastJsonResponse$Field)) {
                if (!rj$f.a(fastJsonResponse$Field)) {
                    return false;
                }
                if (!this.b(fastJsonResponse$Field).equals(rj$f.b(fastJsonResponse$Field))) {
                    return false;
                }
                continue;
            }
            else {
                if (rj$f.a(fastJsonResponse$Field)) {
                    return false;
                }
                continue;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        final Iterator<FastJsonResponse$Field<?, ?>> iterator = rj$f.bXv.values().iterator();
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
        final cZ creator = rj$f.CREATOR;
        cZ.a(this, parcel);
    }
}
