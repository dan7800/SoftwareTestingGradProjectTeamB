package com.google.android.gms.fitness.data;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.internal.*;
import android.os.*;

public class DataSource implements SafeParcelable
{
    public static final Parcelable$Creator<DataSource> CREATOR;
    private final DataType bKF;
    private final Device bKI;
    private final Application bKJ;
    private final String bKK;
    private final boolean bKL;
    private final String bKM;
    private final int btV;
    private final int bwX;
    private final String mName;
    
    static {
        CREATOR = (Parcelable$Creator)new f();
    }
    
    DataSource(final int btV, final DataType bkf, final String mName, final int bwX, final Device bki, final Application bkj, final String bkk, final boolean bkl) {
        this.btV = btV;
        this.bKF = bkf;
        this.bwX = bwX;
        this.mName = mName;
        this.bKI = bki;
        this.bKJ = bkj;
        this.bKK = bkk;
        this.bKL = bkl;
        final StringBuilder sb = new StringBuilder();
        sb.append(this.getTypeString());
        sb.append(":").append(this.bKF.getName());
        if (this.bKJ != null) {
            sb.append(":").append(this.bKJ.getPackageName());
        }
        if (this.bKI != null) {
            sb.append(":").append(this.bKI.MQ());
        }
        if (this.bKK != null) {
            sb.append(":").append(this.bKK);
        }
        this.bKM = sb.toString();
    }
    
    private String getTypeString() {
        switch (this.bwX) {
            default: {
                throw new IllegalArgumentException("invalid type value");
            }
            case 0: {
                return "raw";
            }
            case 1: {
                return "derived";
            }
        }
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final DataType MF() {
        return this.bKF;
    }
    
    public final Application MI() {
        return this.bKJ;
    }
    
    public final Device MJ() {
        return this.bKI;
    }
    
    public final String MK() {
        return this.bKK;
    }
    
    public final boolean ML() {
        return this.bKL;
    }
    
    public final DataSource MM() {
        Device mr;
        if (this.bKI == null) {
            mr = null;
        }
        else {
            mr = this.bKI.MR();
        }
        Application mp;
        if (this.bKJ == null) {
            mp = null;
        }
        else {
            mp = this.bKJ.Mp();
        }
        return new DataSource(3, this.bKF, this.mName, this.bwX, mr, mp, av.gr(this.bKK), this.bKL);
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        return this == o || (o instanceof DataSource && this.bKM.equals(((DataSource)o).bKM));
    }
    
    public final String getAppPackageName() {
        if (this.bKJ == null) {
            return null;
        }
        return this.bKJ.getPackageName();
    }
    
    public final String getName() {
        return this.mName;
    }
    
    public final int getType() {
        return this.bwX;
    }
    
    @Override
    public int hashCode() {
        return this.bKM.hashCode();
    }
    
    public final String toDebugString() {
        final StringBuilder sb = new StringBuilder();
        String s;
        if (this.bwX == 0) {
            s = "r";
        }
        else {
            s = "d";
        }
        final StringBuilder append = sb.append(s).append(":").append(this.bKF.MO());
        String string;
        if (this.bKJ == null) {
            string = "";
        }
        else if (this.bKJ.equals(Application.bKm)) {
            string = ":gms";
        }
        else {
            string = ":" + this.bKJ.getPackageName();
        }
        final StringBuilder append2 = append.append(string);
        String string2;
        if (this.bKI != null) {
            string2 = ":" + this.bKI.getModel() + ":" + this.bKI.ln();
        }
        else {
            string2 = "";
        }
        final StringBuilder append3 = append2.append(string2);
        String string3;
        if (this.bKK != null) {
            string3 = ":" + this.bKK;
        }
        else {
            string3 = "";
        }
        return append3.append(string3).toString();
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("DataSource{");
        sb.append(this.getTypeString());
        if (this.mName != null) {
            sb.append(":").append(this.mName);
        }
        if (this.bKJ != null) {
            sb.append(":").append(this.bKJ);
        }
        if (this.bKI != null) {
            sb.append(":").append(this.bKI);
        }
        if (this.bKK != null) {
            sb.append(":").append(this.bKK);
        }
        sb.append(":").append(this.bKF);
        return sb.append("}").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        f.a(av.a(this), parcel, n);
    }
}
