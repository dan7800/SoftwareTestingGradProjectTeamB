package com.google.android.gms.plus.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class i implements SafeParcelable
{
    public static final b CREATOR;
    private final int btV;
    private final String bxh;
    private final String[] cjU;
    private final String[] cjV;
    private final String[] cjW;
    private final String cjX;
    private final String cjY;
    private final String cjZ;
    private final String cka;
    private final PlusCommonExtras ckb;
    
    static {
        CREATOR = new b();
    }
    
    i(final int btV, final String bxh, final String[] cjU, final String[] cjV, final String[] cjW, final String cjX, final String cjY, final String cjZ, final String cka, final PlusCommonExtras ckb) {
        this.btV = btV;
        this.bxh = bxh;
        this.cjU = cjU;
        this.cjV = cjV;
        this.cjW = cjW;
        this.cjX = cjX;
        this.cjY = cjY;
        this.cjZ = cjZ;
        this.cka = cka;
        this.ckb = ckb;
    }
    
    public final String FP() {
        return this.bxh;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final String[] Vg() {
        return this.cjU;
    }
    
    public final String[] Vh() {
        return this.cjV;
    }
    
    public final String[] Vi() {
        return this.cjW;
    }
    
    public final String Vj() {
        return this.cjX;
    }
    
    public final String Vk() {
        return this.cjY;
    }
    
    public final String Vl() {
        return this.cjZ;
    }
    
    public final String Vm() {
        return this.cka;
    }
    
    public final PlusCommonExtras Vn() {
        return this.ckb;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o instanceof i) {
            final i i = (i)o;
            if (this.btV == i.btV && E.b(this.bxh, i.bxh) && Arrays.equals(this.cjU, i.cjU) && Arrays.equals(this.cjV, i.cjV) && Arrays.equals(this.cjW, i.cjW) && E.b(this.cjX, i.cjX) && E.b(this.cjY, i.cjY) && E.b(this.cjZ, i.cjZ) && E.b(this.cka, i.cka) && E.b(this.ckb, i.ckb)) {
                return true;
            }
        }
        return false;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.btV, this.bxh, this.cjU, this.cjV, this.cjW, this.cjX, this.cjY, this.cjZ, this.cka, this.ckb });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("versionCode", this.btV).e("accountName", this.bxh).e("requestedScopes", this.cjU).e("visibleActivities", this.cjV).e("requiredFeatures", this.cjW).e("packageNameForAuth", this.cjX).e("callingPackageName", this.cjY).e("applicationName", this.cjZ).e("extra", this.ckb.toString()).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel, n);
    }
}
