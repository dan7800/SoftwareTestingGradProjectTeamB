package com.google.android.gms.drive.query.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class Operator implements SafeParcelable
{
    public static final Parcelable$Creator<Operator> CREATOR;
    public static final Operator bIG;
    public static final Operator bIH;
    public static final Operator bII;
    public static final Operator bIJ;
    public static final Operator bIK;
    public static final Operator bIL;
    public static final Operator bIM;
    public static final Operator bIN;
    public static final Operator bIO;
    final String aK;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new l();
        bIG = new Operator("=");
        bIH = new Operator("<");
        bII = new Operator("<=");
        bIJ = new Operator(">");
        bIK = new Operator(">=");
        bIL = new Operator("and");
        bIM = new Operator("or");
        bIN = new Operator("not");
        bIO = new Operator("contains");
    }
    
    Operator(final int btV, final String ak) {
        this.btV = btV;
        this.aK = ak;
    }
    
    private Operator(final String s) {
        this(1, s);
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            if (o == null) {
                return false;
            }
            if (this.getClass() != o.getClass()) {
                return false;
            }
            final Operator operator = (Operator)o;
            if (this.aK == null) {
                if (operator.aK != null) {
                    return false;
                }
            }
            else if (!this.aK.equals(operator.aK)) {
                return false;
            }
        }
        return true;
    }
    
    public final String getTag() {
        return this.aK;
    }
    
    @Override
    public int hashCode() {
        int hashCode;
        if (this.aK == null) {
            hashCode = 0;
        }
        else {
            hashCode = this.aK.hashCode();
        }
        return hashCode + 31;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        l.a(this, parcel);
    }
}
