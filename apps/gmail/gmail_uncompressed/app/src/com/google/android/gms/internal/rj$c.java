package com.google.android.gms.internal;

import com.google.android.gms.plus.a.b.*;
import com.google.android.gms.common.server.response.*;
import java.util.*;
import android.os.*;

public final class rj$c extends FastSafeParcelableJsonResponse implements f
{
    public static final cX CREATOR;
    private static final HashMap<String, FastJsonResponse$Field<?, ?>> bXv;
    final Set<Integer> bXw;
    String bYq;
    final int btV;
    
    static {
        CREATOR = new cX();
        (bXv = new HashMap<String, FastJsonResponse$Field<?, ?>>()).put("url", FastJsonResponse$Field.n("url", 2));
    }
    
    public rj$c() {
        this.btV = 1;
        this.bXw = new HashSet<Integer>();
    }
    
    rj$c(final Set<Integer> bXw, final int btV, final String bYq) {
        this.bXw = bXw;
        this.btV = btV;
        this.bYq = bYq;
    }
    
    @Override
    public final HashMap<String, FastJsonResponse$Field<?, ?>> Lu() {
        return rj$c.bXv;
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
                return this.bYq;
            }
        }
    }
    
    public final int describeContents() {
        final cX creator = rj$c.CREATOR;
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (!(o instanceof rj$c)) {
            return false;
        }
        if (this == o) {
            return true;
        }
        final rj$c rj$c = (rj$c)o;
        for (final FastJsonResponse$Field<?, ?> fastJsonResponse$Field : com.google.android.gms.internal.rj$c.bXv.values()) {
            if (this.a(fastJsonResponse$Field)) {
                if (!rj$c.a(fastJsonResponse$Field)) {
                    return false;
                }
                if (!this.b(fastJsonResponse$Field).equals(rj$c.b(fastJsonResponse$Field))) {
                    return false;
                }
                continue;
            }
            else {
                if (rj$c.a(fastJsonResponse$Field)) {
                    return false;
                }
                continue;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        final Iterator<FastJsonResponse$Field<?, ?>> iterator = rj$c.bXv.values().iterator();
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
        final cX creator = rj$c.CREATOR;
        cX.a(this, parcel);
    }
}
