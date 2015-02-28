package com.google.android.gms.internal;

import com.google.android.gms.plus.a.b.*;
import com.google.android.gms.common.server.response.*;
import java.util.*;
import android.os.*;

public final class rj$d extends FastSafeParcelableJsonResponse implements g
{
    public static final cY CREATOR;
    private static final HashMap<String, FastJsonResponse$Field<?, ?>> bXv;
    String bXV;
    String bXY;
    final Set<Integer> bXw;
    String bYW;
    String bYX;
    String bYY;
    String bYZ;
    final int btV;
    
    static {
        CREATOR = new cY();
        (bXv = new HashMap<String, FastJsonResponse$Field<?, ?>>()).put("familyName", FastJsonResponse$Field.n("familyName", 2));
        rj$d.bXv.put("formatted", FastJsonResponse$Field.n("formatted", 3));
        rj$d.bXv.put("givenName", FastJsonResponse$Field.n("givenName", 4));
        rj$d.bXv.put("honorificPrefix", FastJsonResponse$Field.n("honorificPrefix", 5));
        rj$d.bXv.put("honorificSuffix", FastJsonResponse$Field.n("honorificSuffix", 6));
        rj$d.bXv.put("middleName", FastJsonResponse$Field.n("middleName", 7));
    }
    
    public rj$d() {
        this.btV = 1;
        this.bXw = new HashSet<Integer>();
    }
    
    rj$d(final Set<Integer> bXw, final int btV, final String bxv, final String byw, final String bxy, final String byx, final String byy, final String byz) {
        this.bXw = bXw;
        this.btV = btV;
        this.bXV = bxv;
        this.bYW = byw;
        this.bXY = bxy;
        this.bYX = byx;
        this.bYY = byy;
        this.bYZ = byz;
    }
    
    @Override
    public final HashMap<String, FastJsonResponse$Field<?, ?>> Lu() {
        return rj$d.bXv;
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
                return this.bXV;
            }
            case 3: {
                return this.bYW;
            }
            case 4: {
                return this.bXY;
            }
            case 5: {
                return this.bYX;
            }
            case 6: {
                return this.bYY;
            }
            case 7: {
                return this.bYZ;
            }
        }
    }
    
    public final int describeContents() {
        final cY creator = rj$d.CREATOR;
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (!(o instanceof rj$d)) {
            return false;
        }
        if (this == o) {
            return true;
        }
        final rj$d rj$d = (rj$d)o;
        for (final FastJsonResponse$Field<?, ?> fastJsonResponse$Field : com.google.android.gms.internal.rj$d.bXv.values()) {
            if (this.a(fastJsonResponse$Field)) {
                if (!rj$d.a(fastJsonResponse$Field)) {
                    return false;
                }
                if (!this.b(fastJsonResponse$Field).equals(rj$d.b(fastJsonResponse$Field))) {
                    return false;
                }
                continue;
            }
            else {
                if (rj$d.a(fastJsonResponse$Field)) {
                    return false;
                }
                continue;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        final Iterator<FastJsonResponse$Field<?, ?>> iterator = rj$d.bXv.values().iterator();
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
        final cY creator = rj$d.CREATOR;
        cY.a(this, parcel);
    }
}
