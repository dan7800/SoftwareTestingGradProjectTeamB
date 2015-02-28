package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class RegisterSectionInfo implements SafeParcelable
{
    public static final V CREATOR;
    final int btV;
    public final Feature[] buD;
    public final String bvJ;
    public final boolean bvK;
    public final boolean bvL;
    public final String bvM;
    final int[] bvN;
    public final String bvO;
    public final String name;
    public final int weight;
    
    static {
        CREATOR = new V();
    }
    
    RegisterSectionInfo(final int btV, final String name, final String bvJ, final boolean bvK, final int weight, final boolean bvL, final String bvM, final Feature[] buD, final int[] bvN, final String bvO) {
        this.btV = btV;
        this.name = name;
        this.bvJ = bvJ;
        this.bvK = bvK;
        this.weight = weight;
        this.bvL = bvL;
        this.bvM = bvM;
        this.buD = buD;
        this.bvN = bvN;
        this.bvO = bvO;
    }
    
    RegisterSectionInfo(final String s, final String s2, final boolean b, final int n, final boolean b2, final String s3, final Feature[] array, final int[] array2, final String s4) {
        this(2, s, s2, b, n, b2, s3, array, array2, s4);
    }
    
    public int describeContents() {
        final V creator = RegisterSectionInfo.CREATOR;
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        final boolean b = o instanceof RegisterSectionInfo;
        boolean b2 = false;
        if (b) {
            final RegisterSectionInfo registerSectionInfo = (RegisterSectionInfo)o;
            final boolean equals = this.name.equals(registerSectionInfo.name);
            b2 = false;
            if (equals) {
                final boolean equals2 = this.bvJ.equals(registerSectionInfo.bvJ);
                b2 = false;
                if (equals2) {
                    final boolean bvK = this.bvK;
                    final boolean bvK2 = registerSectionInfo.bvK;
                    b2 = false;
                    if (bvK == bvK2) {
                        b2 = true;
                    }
                }
            }
        }
        return b2;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final V creator = RegisterSectionInfo.CREATOR;
        V.a(this, parcel, n);
    }
}
