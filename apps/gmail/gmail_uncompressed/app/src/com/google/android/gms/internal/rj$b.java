package com.google.android.gms.internal;

import com.google.android.gms.plus.a.b.*;
import com.google.android.gms.common.server.response.*;
import java.util.*;
import android.os.*;

public final class rj$b extends FastSafeParcelableJsonResponse implements c
{
    public static final cU CREATOR;
    private static final HashMap<String, FastJsonResponse$Field<?, ?>> bXv;
    final Set<Integer> bXw;
    rj$b$a bYR;
    rj$b$b bYS;
    int bYT;
    final int btV;
    
    static {
        CREATOR = new cU();
        (bXv = new HashMap<String, FastJsonResponse$Field<?, ?>>()).put("coverInfo", FastJsonResponse$Field.a("coverInfo", 2, (Class<?>)rj$b$a.class));
        rj$b.bXv.put("coverPhoto", FastJsonResponse$Field.a("coverPhoto", 3, (Class<?>)rj$b$b.class));
        rj$b.bXv.put("layout", FastJsonResponse$Field.a("layout", 4, new jr().o("banner", 0)));
    }
    
    public rj$b() {
        this.btV = 1;
        this.bXw = new HashSet<Integer>();
    }
    
    rj$b(final Set<Integer> bXw, final int btV, final rj$b$a byr, final rj$b$b bys, final int byt) {
        this.bXw = bXw;
        this.btV = btV;
        this.bYR = byr;
        this.bYS = bys;
        this.bYT = byt;
    }
    
    @Override
    public final HashMap<String, FastJsonResponse$Field<?, ?>> Lu() {
        return rj$b.bXv;
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
                return this.bYR;
            }
            case 3: {
                return this.bYS;
            }
            case 4: {
                return this.bYT;
            }
        }
    }
    
    public final int describeContents() {
        final cU creator = rj$b.CREATOR;
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (!(o instanceof rj$b)) {
            return false;
        }
        if (this == o) {
            return true;
        }
        final rj$b rj$b = (rj$b)o;
        for (final FastJsonResponse$Field<?, ?> fastJsonResponse$Field : com.google.android.gms.internal.rj$b.bXv.values()) {
            if (this.a(fastJsonResponse$Field)) {
                if (!rj$b.a(fastJsonResponse$Field)) {
                    return false;
                }
                if (!this.b(fastJsonResponse$Field).equals(rj$b.b(fastJsonResponse$Field))) {
                    return false;
                }
                continue;
            }
            else {
                if (rj$b.a(fastJsonResponse$Field)) {
                    return false;
                }
                continue;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        final Iterator<FastJsonResponse$Field<?, ?>> iterator = rj$b.bXv.values().iterator();
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
        final cU creator = rj$b.CREATOR;
        cU.a(this, parcel, n);
    }
}
