package com.google.android.gms.fitness.data;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class Field implements SafeParcelable
{
    public static final Parcelable$Creator<Field> CREATOR;
    public static final Field bLA;
    public static final Field bLB;
    public static final Field bLC;
    public static final Field bLD;
    public static final Field bLE;
    public static final Field bLF;
    public static final Field bLG;
    public static final Field bLH;
    public static final Field bLI;
    public static final Field bLJ;
    public static final Field bLK;
    public static final Field bLL;
    public static final Field bLM;
    public static final Field bLN;
    public static final Field bLO;
    public static final Field bLP;
    public static final Field bLQ;
    public static final Field bLR;
    public static final Field bLS;
    public static final Field bLT;
    public static final Field bLU;
    public static final Field bLV;
    public static final Field bLW;
    public static final Field bLX;
    public static final Field bLY;
    public static final Field bLZ;
    public static final Field bLz;
    public static final Field bMa;
    public static final Field bMb;
    private final int bMc;
    private final int btV;
    private final String mName;
    
    static {
        bLz = ge("activity");
        bLA = gf("confidence");
        bLB = ge("steps");
        bLC = ge("duration");
        bLD = gf("bpm");
        bLE = gf("latitude");
        bLF = gf("longitude");
        bLG = gf("accuracy");
        bLH = gf("altitude");
        bLI = gf("distance");
        bLJ = gf("height");
        bLK = gf("weight");
        bLL = gf("speed");
        bLM = gf("rpm");
        bLN = ge("revolutions");
        bLO = gf("calories");
        bLP = gf("watts");
        bLQ = ge("num_segments");
        bLR = gf("average");
        bLS = gf("max");
        bLT = gf("min");
        bLU = gf("low_latitude");
        bLV = gf("low_longitude");
        bLW = gf("high_latitude");
        bLX = gf("high_longitude");
        bLY = ge("edge_type");
        bLZ = gf("x");
        bMa = gf("y");
        bMb = gf("z");
        CREATOR = (Parcelable$Creator)new i();
    }
    
    Field(final int btV, final String mName, final int bMc) {
        this.btV = btV;
        this.mName = mName;
        this.bMc = bMc;
    }
    
    private Field(final String s, final int n) {
        this(1, s, n);
    }
    
    private static Field ge(final String s) {
        return new Field(s, 1);
    }
    
    private static Field gf(final String s) {
        return new Field(s, 2);
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this != o) {
            final boolean b = o instanceof Field;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final Field field = (Field)o;
            int n;
            if (this.mName.equals(field.mName) && this.bMc == field.bMc) {
                n = 1;
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
    
    public final String getName() {
        return this.mName;
    }
    
    @Override
    public final int hashCode() {
        return this.mName.hashCode();
    }
    
    @Override
    public final String toString() {
        final Object[] array = { this.mName, null };
        String s;
        if (this.bMc == 1) {
            s = "i";
        }
        else {
            s = "f";
        }
        array[1] = s;
        return String.format("%s(%s)", array);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        i.a(this, parcel);
    }
}
