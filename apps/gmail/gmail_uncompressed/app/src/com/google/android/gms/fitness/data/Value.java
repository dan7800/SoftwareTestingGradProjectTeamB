package com.google.android.gms.fitness.data;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public final class Value implements SafeParcelable
{
    public static final Parcelable$Creator<Value> CREATOR;
    private final int bMc;
    private boolean bMm;
    private float bMn;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new u();
    }
    
    Value(final int btV, final int bMc, final boolean bMm, final float bMn) {
        this.btV = btV;
        this.bMc = bMc;
        this.bMm = bMm;
        this.bMn = bMn;
    }
    
    private int MY() {
        boolean b = true;
        if (this.bMc != (b ? 1 : 0)) {
            b = false;
        }
        G.a(b, "Value is not in int format");
        return Float.floatToRawIntBits(this.bMn);
    }
    
    private float MZ() {
        G.a(this.bMc == 2, "Value is not in float format");
        return this.bMn;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final boolean MX() {
        return this.bMm;
    }
    
    final float Na() {
        return this.bMn;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this != o) {
            final boolean b = o instanceof Value;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final Value value = (Value)o;
            int n = 0;
            if (this.bMc == value.bMc && this.bMm == value.bMm) {
                switch (this.bMc) {
                    default: {
                        if (this.bMn == value.bMn) {
                            n = 1;
                            break;
                        }
                        n = 0;
                        break;
                    }
                    case 1: {
                        if (this.MY() == value.MY()) {
                            n = 1;
                            break;
                        }
                        n = 0;
                        break;
                    }
                    case 2: {
                        if (this.MZ() == value.MZ()) {
                            n = 1;
                            break;
                        }
                        n = 0;
                        break;
                    }
                }
            }
            else {
                n = 0;
            }
            b2 = false;
            if (n == 0) {
                return b2;
            }
        }
        return true;
    }
    
    public final int getFormat() {
        return this.bMc;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.bMn, this.bMc, this.bMm });
    }
    
    @Override
    public final String toString() {
        if (!this.bMm) {
            return "unset";
        }
        switch (this.bMc) {
            default: {
                return "unknown";
            }
            case 1: {
                return Integer.toString(this.MY());
            }
            case 2: {
                return Float.toString(this.MZ());
            }
        }
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        u.a(this, parcel);
    }
}
