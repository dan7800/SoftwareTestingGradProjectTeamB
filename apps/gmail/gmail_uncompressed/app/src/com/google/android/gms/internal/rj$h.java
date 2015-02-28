package com.google.android.gms.internal;

import com.google.android.gms.plus.a.b.*;
import com.google.android.gms.common.server.response.*;
import java.util.*;
import android.os.*;

public final class rj$h extends FastSafeParcelableJsonResponse implements j
{
    public static final db CREATOR;
    private static final HashMap<String, FastJsonResponse$Field<?, ?>> bXv;
    final Set<Integer> bXw;
    String bZd;
    private final int bZe;
    final int btV;
    int bwX;
    String mValue;
    
    static {
        CREATOR = new db();
        (bXv = new HashMap<String, FastJsonResponse$Field<?, ?>>()).put("label", FastJsonResponse$Field.n("label", 5));
        rj$h.bXv.put("type", FastJsonResponse$Field.a("type", 6, new jr().o("home", 0).o("work", 1).o("blog", 2).o("profile", 3).o("other", 4).o("otherProfile", 5).o("contributor", 6).o("website", 7)));
        rj$h.bXv.put("value", FastJsonResponse$Field.n("value", 4));
    }
    
    public rj$h() {
        this.bZe = 4;
        this.btV = 1;
        this.bXw = new HashSet<Integer>();
    }
    
    rj$h(final Set<Integer> bXw, final int btV, final String bZd, final int bwX, final String mValue) {
        this.bZe = 4;
        this.bXw = bXw;
        this.btV = btV;
        this.bZd = bZd;
        this.bwX = bwX;
        this.mValue = mValue;
    }
    
    @Deprecated
    public static int Sf() {
        return 4;
    }
    
    @Override
    public final HashMap<String, FastJsonResponse$Field<?, ?>> Lu() {
        return rj$h.bXv;
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
            case 5: {
                return this.bZd;
            }
            case 6: {
                return this.bwX;
            }
            case 4: {
                return this.mValue;
            }
        }
    }
    
    public final int describeContents() {
        final db creator = rj$h.CREATOR;
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (!(o instanceof rj$h)) {
            return false;
        }
        if (this == o) {
            return true;
        }
        final rj$h rj$h = (rj$h)o;
        for (final FastJsonResponse$Field<?, ?> fastJsonResponse$Field : com.google.android.gms.internal.rj$h.bXv.values()) {
            if (this.a(fastJsonResponse$Field)) {
                if (!rj$h.a(fastJsonResponse$Field)) {
                    return false;
                }
                if (!this.b(fastJsonResponse$Field).equals(rj$h.b(fastJsonResponse$Field))) {
                    return false;
                }
                continue;
            }
            else {
                if (rj$h.a(fastJsonResponse$Field)) {
                    return false;
                }
                continue;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        final Iterator<FastJsonResponse$Field<?, ?>> iterator = rj$h.bXv.values().iterator();
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
        final db creator = rj$h.CREATOR;
        db.a(this, parcel);
    }
}
