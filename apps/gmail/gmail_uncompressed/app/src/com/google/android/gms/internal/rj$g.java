package com.google.android.gms.internal;

import com.google.android.gms.plus.a.b.*;
import com.google.android.gms.common.server.response.*;
import java.util.*;
import android.os.*;

public final class rj$g extends FastSafeParcelableJsonResponse implements i
{
    public static final da CREATOR;
    private static final HashMap<String, FastJsonResponse$Field<?, ?>> bXv;
    final Set<Integer> bXw;
    boolean bZc;
    final int btV;
    String mValue;
    
    static {
        CREATOR = new da();
        (bXv = new HashMap<String, FastJsonResponse$Field<?, ?>>()).put("primary", FastJsonResponse$Field.m("primary", 2));
        rj$g.bXv.put("value", FastJsonResponse$Field.n("value", 3));
    }
    
    public rj$g() {
        this.btV = 1;
        this.bXw = new HashSet<Integer>();
    }
    
    rj$g(final Set<Integer> bXw, final int btV, final boolean bZc, final String mValue) {
        this.bXw = bXw;
        this.btV = btV;
        this.bZc = bZc;
        this.mValue = mValue;
    }
    
    @Override
    public final HashMap<String, FastJsonResponse$Field<?, ?>> Lu() {
        return rj$g.bXv;
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
                return this.bZc;
            }
            case 3: {
                return this.mValue;
            }
        }
    }
    
    public final int describeContents() {
        final da creator = rj$g.CREATOR;
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (!(o instanceof rj$g)) {
            return false;
        }
        if (this == o) {
            return true;
        }
        final rj$g rj$g = (rj$g)o;
        for (final FastJsonResponse$Field<?, ?> fastJsonResponse$Field : com.google.android.gms.internal.rj$g.bXv.values()) {
            if (this.a(fastJsonResponse$Field)) {
                if (!rj$g.a(fastJsonResponse$Field)) {
                    return false;
                }
                if (!this.b(fastJsonResponse$Field).equals(rj$g.b(fastJsonResponse$Field))) {
                    return false;
                }
                continue;
            }
            else {
                if (rj$g.a(fastJsonResponse$Field)) {
                    return false;
                }
                continue;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        final Iterator<FastJsonResponse$Field<?, ?>> iterator = rj$g.bXv.values().iterator();
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
        final da creator = rj$g.CREATOR;
        da.a(this, parcel);
    }
}
