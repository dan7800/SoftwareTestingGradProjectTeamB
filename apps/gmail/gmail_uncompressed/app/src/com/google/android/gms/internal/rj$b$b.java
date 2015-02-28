package com.google.android.gms.internal;

import com.google.android.gms.plus.a.b.*;
import com.google.android.gms.common.server.response.*;
import java.util.*;
import android.os.*;

public final class rj$b$b extends FastSafeParcelableJsonResponse implements e
{
    public static final cW CREATOR;
    private static final HashMap<String, FastJsonResponse$Field<?, ?>> bXv;
    int bED;
    int bEE;
    final Set<Integer> bXw;
    String bYq;
    final int btV;
    
    static {
        CREATOR = new cW();
        (bXv = new HashMap<String, FastJsonResponse$Field<?, ?>>()).put("height", FastJsonResponse$Field.k("height", 2));
        rj$b$b.bXv.put("url", FastJsonResponse$Field.n("url", 3));
        rj$b$b.bXv.put("width", FastJsonResponse$Field.k("width", 4));
    }
    
    public rj$b$b() {
        this.btV = 1;
        this.bXw = new HashSet<Integer>();
    }
    
    rj$b$b(final Set<Integer> bXw, final int btV, final int bee, final String bYq, final int bed) {
        this.bXw = bXw;
        this.btV = btV;
        this.bEE = bee;
        this.bYq = bYq;
        this.bED = bed;
    }
    
    @Override
    public final HashMap<String, FastJsonResponse$Field<?, ?>> Lu() {
        return rj$b$b.bXv;
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
                return this.bEE;
            }
            case 3: {
                return this.bYq;
            }
            case 4: {
                return this.bED;
            }
        }
    }
    
    public final int describeContents() {
        final cW creator = rj$b$b.CREATOR;
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (!(o instanceof rj$b$b)) {
            return false;
        }
        if (this == o) {
            return true;
        }
        final rj$b$b rj$b$b = (rj$b$b)o;
        for (final FastJsonResponse$Field<?, ?> fastJsonResponse$Field : com.google.android.gms.internal.rj$b$b.bXv.values()) {
            if (this.a(fastJsonResponse$Field)) {
                if (!rj$b$b.a(fastJsonResponse$Field)) {
                    return false;
                }
                if (!this.b(fastJsonResponse$Field).equals(rj$b$b.b(fastJsonResponse$Field))) {
                    return false;
                }
                continue;
            }
            else {
                if (rj$b$b.a(fastJsonResponse$Field)) {
                    return false;
                }
                continue;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        final Iterator<FastJsonResponse$Field<?, ?>> iterator = rj$b$b.bXv.values().iterator();
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
        final cW creator = rj$b$b.CREATOR;
        cW.a(this, parcel);
    }
}
