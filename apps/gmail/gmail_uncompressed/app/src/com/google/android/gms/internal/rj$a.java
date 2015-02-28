package com.google.android.gms.internal;

import com.google.android.gms.plus.a.b.*;
import com.google.android.gms.common.server.response.*;
import java.util.*;
import android.os.*;

public final class rj$a extends FastSafeParcelableJsonResponse implements b
{
    public static final cT CREATOR;
    private static final HashMap<String, FastJsonResponse$Field<?, ?>> bXv;
    final Set<Integer> bXw;
    int bYP;
    int bYQ;
    final int btV;
    
    static {
        CREATOR = new cT();
        (bXv = new HashMap<String, FastJsonResponse$Field<?, ?>>()).put("max", FastJsonResponse$Field.k("max", 2));
        rj$a.bXv.put("min", FastJsonResponse$Field.k("min", 3));
    }
    
    public rj$a() {
        this.btV = 1;
        this.bXw = new HashSet<Integer>();
    }
    
    rj$a(final Set<Integer> bXw, final int btV, final int byp, final int byq) {
        this.bXw = bXw;
        this.btV = btV;
        this.bYP = byp;
        this.bYQ = byq;
    }
    
    @Override
    public final HashMap<String, FastJsonResponse$Field<?, ?>> Lu() {
        return rj$a.bXv;
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
                return this.bYP;
            }
            case 3: {
                return this.bYQ;
            }
        }
    }
    
    public final int describeContents() {
        final cT creator = rj$a.CREATOR;
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (!(o instanceof rj$a)) {
            return false;
        }
        if (this == o) {
            return true;
        }
        final rj$a rj$a = (rj$a)o;
        for (final FastJsonResponse$Field<?, ?> fastJsonResponse$Field : com.google.android.gms.internal.rj$a.bXv.values()) {
            if (this.a(fastJsonResponse$Field)) {
                if (!rj$a.a(fastJsonResponse$Field)) {
                    return false;
                }
                if (!this.b(fastJsonResponse$Field).equals(rj$a.b(fastJsonResponse$Field))) {
                    return false;
                }
                continue;
            }
            else {
                if (rj$a.a(fastJsonResponse$Field)) {
                    return false;
                }
                continue;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        final Iterator<FastJsonResponse$Field<?, ?>> iterator = rj$a.bXv.values().iterator();
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
        final cT creator = rj$a.CREATOR;
        cT.a(this, parcel);
    }
}
