package com.google.android.gms.internal;

import com.google.android.gms.plus.a.a.*;
import com.google.android.gms.common.server.response.*;
import java.util.*;
import android.os.*;

public final class rg extends FastSafeParcelableJsonResponse implements b
{
    public static final cR CREATOR;
    private static final HashMap<String, FastJsonResponse$Field<?, ?>> bXv;
    final Set<Integer> bXw;
    String bYk;
    re bYt;
    re bYu;
    final int btV;
    String bzB;
    String bzz;
    
    static {
        CREATOR = new cR();
        (bXv = new HashMap<String, FastJsonResponse$Field<?, ?>>()).put("id", FastJsonResponse$Field.n("id", 2));
        rg.bXv.put("result", FastJsonResponse$Field.a("result", 4, (Class<?>)re.class));
        rg.bXv.put("startDate", FastJsonResponse$Field.n("startDate", 5));
        rg.bXv.put("target", FastJsonResponse$Field.a("target", 6, (Class<?>)re.class));
        rg.bXv.put("type", FastJsonResponse$Field.n("type", 7));
    }
    
    public rg() {
        this.btV = 1;
        this.bXw = new HashSet<Integer>();
    }
    
    rg(final Set<Integer> bXw, final int btV, final String bzz, final re bYt, final String bYk, final re bYu, final String bzB) {
        this.bXw = bXw;
        this.btV = btV;
        this.bzz = bzz;
        this.bYt = bYt;
        this.bYk = bYk;
        this.bYu = bYu;
        this.bzB = bzB;
    }
    
    @Override
    public final HashMap<String, FastJsonResponse$Field<?, ?>> Lu() {
        return rg.bXv;
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
                return this.bzz;
            }
            case 4: {
                return this.bYt;
            }
            case 5: {
                return this.bYk;
            }
            case 6: {
                return this.bYu;
            }
            case 7: {
                return this.bzB;
            }
        }
    }
    
    public final int describeContents() {
        final cR creator = rg.CREATOR;
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (!(o instanceof rg)) {
            return false;
        }
        if (this == o) {
            return true;
        }
        final rg rg = (rg)o;
        for (final FastJsonResponse$Field<?, ?> fastJsonResponse$Field : com.google.android.gms.internal.rg.bXv.values()) {
            if (this.a(fastJsonResponse$Field)) {
                if (!rg.a(fastJsonResponse$Field)) {
                    return false;
                }
                if (!this.b(fastJsonResponse$Field).equals(rg.b(fastJsonResponse$Field))) {
                    return false;
                }
                continue;
            }
            else {
                if (rg.a(fastJsonResponse$Field)) {
                    return false;
                }
                continue;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        final Iterator<FastJsonResponse$Field<?, ?>> iterator = rg.bXv.values().iterator();
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
        final cR creator = rg.CREATOR;
        cR.a(this, parcel, n);
    }
}
