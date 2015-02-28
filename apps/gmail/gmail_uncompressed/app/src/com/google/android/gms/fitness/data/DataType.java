package com.google.android.gms.fitness.data;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import com.google.android.gms.common.a.*;
import android.os.*;

public final class DataType implements SafeParcelable
{
    public static final Parcelable$Creator<DataType> CREATOR;
    public static final DataType bKN;
    public static final DataType bKO;
    public static final DataType bKP;
    public static final DataType bKQ;
    public static final DataType bKR;
    public static final DataType bKS;
    public static final DataType bKT;
    public static final DataType bKU;
    public static final DataType bKV;
    public static final DataType bKW;
    public static final DataType bKX;
    public static final DataType bKY;
    public static final DataType bKZ;
    public static final DataType bLa;
    public static final DataType bLb;
    public static final DataType bLc;
    public static final DataType bLd;
    public static final DataType bLe;
    public static final DataType bLf;
    public static final DataType bLg;
    public static final DataType bLh;
    public static final Set<DataType> bLi;
    public static final DataType bLj;
    public static final DataType bLk;
    public static final DataType bLl;
    public static final DataType bLm;
    public static final DataType bLn;
    public static final DataType bLo;
    public static final DataType bLp;
    public static final DataType bLq;
    private static final Map<DataType, List<DataType>> bLr;
    public static final DataType[] bLs;
    public static final String[] bLt;
    private final List<Field> bLu;
    private final int btV;
    private final String mName;
    
    static {
        bKN = new DataType("com.google.step_count.delta", new Field[] { Field.bLB });
        bKO = new DataType("com.google.step_count.cumulative", new Field[] { Field.bLB });
        bKP = new DataType("com.google.step_count.cadence", new Field[] { Field.bLM });
        bKQ = new DataType("com.google.activity.segment", new Field[] { Field.bLz });
        bKR = new DataType("com.google.calories.consumed", new Field[] { Field.bLO });
        bKS = new DataType("com.google.calories.expended", new Field[] { Field.bLO });
        bKT = new DataType("com.google.power.sample", new Field[] { Field.bLP });
        bKU = new DataType("com.google.activity.sample", new Field[] { Field.bLz, Field.bLA });
        bKV = new DataType("com.google.activity.edge", new Field[] { Field.bLz, Field.bLY });
        bKW = new DataType("com.google.accelerometer", new Field[] { Field.bLZ, Field.bMa, Field.bMb });
        bKX = new DataType("com.google.heart_rate.bpm", new Field[] { Field.bLD });
        bKY = new DataType("com.google.location.sample", new Field[] { Field.bLE, Field.bLF, Field.bLG, Field.bLH });
        bKZ = new DataType("com.google.distance.delta", new Field[] { Field.bLI });
        bLa = new DataType("com.google.distance.cumulative", new Field[] { Field.bLI });
        bLb = new DataType("com.google.speed", new Field[] { Field.bLL });
        bLc = new DataType("com.google.cycling.wheel_revolution.cumulative", new Field[] { Field.bLN });
        bLd = new DataType("com.google.cycling.wheel_revolution.rpm", new Field[] { Field.bLM });
        bLe = new DataType("com.google.cycling.pedaling.cumulative", new Field[] { Field.bLN });
        bLf = new DataType("com.google.cycling.pedaling.cadence", new Field[] { Field.bLM });
        bLg = new DataType("com.google.height", new Field[] { Field.bLJ });
        bLh = new DataType("com.google.weight", new Field[] { Field.bLK });
        bLi = Collections.unmodifiableSet((Set<? extends DataType>)new HashSet<DataType>(Arrays.asList(DataType.bKN, DataType.bKZ, DataType.bKQ, DataType.bLb, DataType.bKX, DataType.bLh, DataType.bKY)));
        bLj = new DataType("com.google.activity.summary", new Field[] { Field.bLz, Field.bLC, Field.bLQ });
        bLk = DataType.bKN;
        bLl = DataType.bKZ;
        bLm = new DataType("com.google.heart_rate.summary", new Field[] { Field.bLR, Field.bLS, Field.bLT });
        bLn = new DataType("com.google.location.bounding_box", new Field[] { Field.bLU, Field.bLV, Field.bLW, Field.bLX });
        bLo = new DataType("com.google.power.summary", new Field[] { Field.bLR, Field.bLS, Field.bLT });
        bLp = new DataType("com.google.speed.summary", new Field[] { Field.bLR, Field.bLS, Field.bLT });
        bLq = new DataType("com.google.weight.summary", new Field[] { Field.bLR, Field.bLS, Field.bLT });
        bLr = new DataType$1();
        bLs = new DataType[] { DataType.bKW, DataType.bKV, DataType.bKU, DataType.bKQ, DataType.bLj, DataType.bKR, DataType.bKS, DataType.bLf, DataType.bLe, DataType.bLc, DataType.bLd, DataType.bLa, DataType.bKZ, DataType.bKX, DataType.bLm, DataType.bLg, DataType.bLn, DataType.bKY, DataType.bKT, DataType.bLo, DataType.bLb, DataType.bLp, DataType.bKP, DataType.bKO, DataType.bKN, DataType.bLh, DataType.bLq };
        bLt = new String[] { DataType.bKW.mName, DataType.bKV.mName, DataType.bKU.mName, DataType.bKQ.mName, DataType.bLj.mName, DataType.bKR.mName, DataType.bKS.mName, DataType.bLf.mName, DataType.bLe.mName, DataType.bLc.mName, DataType.bLd.mName, DataType.bLa.mName, DataType.bKZ.mName, DataType.bKX.mName, DataType.bLm.mName, DataType.bLg.mName, DataType.bLn.mName, DataType.bKY.mName, DataType.bKT.mName, DataType.bLo.mName, DataType.bLb.mName, DataType.bLp.mName, DataType.bKP.mName, DataType.bKO.mName, DataType.bKN.mName, DataType.bLh.mName, DataType.bLq.mName };
        CREATOR = (Parcelable$Creator)new g();
    }
    
    DataType(final int btV, final String mName, final List<Field> list) {
        this.btV = btV;
        this.mName = mName;
        this.bLu = Collections.unmodifiableList((List<? extends Field>)list);
    }
    
    private DataType(final String s, final Field... array) {
        this(1, s, b.d(array));
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final List<Field> MN() {
        return this.bLu;
    }
    
    public final String MO() {
        if (this.mName.startsWith("com.google.")) {
            return this.mName.substring(11);
        }
        return this.mName;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this != o) {
            final boolean b = o instanceof DataType;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final DataType dataType = (DataType)o;
            int n;
            if (this.mName.equals(dataType.mName) && this.bLu.equals(dataType.bLu)) {
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
    
    public final String getName() {
        return this.mName;
    }
    
    @Override
    public final int hashCode() {
        return this.mName.hashCode();
    }
    
    @Override
    public final String toString() {
        return String.format("DataType{%s%s}", this.mName, this.bLu);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        g.a(this, parcel);
    }
}
