package com.google.android.gms.internal;

import com.google.android.gms.plus.a.b.*;
import com.google.android.gms.common.server.response.*;
import java.util.*;
import android.os.*;

public final class rj$b$a extends FastSafeParcelableJsonResponse implements d
{
    public static final cV CREATOR;
    private static final HashMap<String, FastJsonResponse$Field<?, ?>> bXv;
    final Set<Integer> bXw;
    int bYU;
    int bYV;
    final int btV;
    
    static {
        CREATOR = new cV();
        (bXv = new HashMap<String, FastJsonResponse$Field<?, ?>>()).put("leftImageOffset", FastJsonResponse$Field.k("leftImageOffset", 2));
        rj$b$a.bXv.put("topImageOffset", FastJsonResponse$Field.k("topImageOffset", 3));
    }
    
    public rj$b$a() {
        this.btV = 1;
        this.bXw = new HashSet<Integer>();
    }
    
    rj$b$a(final Set<Integer> bXw, final int btV, final int byu, final int byv) {
        this.bXw = bXw;
        this.btV = btV;
        this.bYU = byu;
        this.bYV = byv;
    }
    
    @Override
    public final HashMap<String, FastJsonResponse$Field<?, ?>> Lu() {
        return rj$b$a.bXv;
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
                return this.bYU;
            }
            case 3: {
                return this.bYV;
            }
        }
    }
    
    public final int describeContents() {
        final cV creator = rj$b$a.CREATOR;
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (!(o instanceof rj$b$a)) {
            return false;
        }
        if (this == o) {
            return true;
        }
        final rj$b$a rj$b$a = (rj$b$a)o;
        for (final FastJsonResponse$Field<?, ?> fastJsonResponse$Field : com.google.android.gms.internal.rj$b$a.bXv.values()) {
            if (this.a(fastJsonResponse$Field)) {
                if (!rj$b$a.a(fastJsonResponse$Field)) {
                    return false;
                }
                if (!this.b(fastJsonResponse$Field).equals(rj$b$a.b(fastJsonResponse$Field))) {
                    return false;
                }
                continue;
            }
            else {
                if (rj$b$a.a(fastJsonResponse$Field)) {
                    return false;
                }
                continue;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        final Iterator<FastJsonResponse$Field<?, ?>> iterator = rj$b$a.bXv.values().iterator();
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
        final cV creator = rj$b$a.CREATOR;
        cV.a(this, parcel);
    }
}
