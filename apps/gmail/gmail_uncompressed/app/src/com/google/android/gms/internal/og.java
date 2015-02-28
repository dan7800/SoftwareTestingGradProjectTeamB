package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class og implements SafeParcelable
{
    public static final Parcelable$Creator<og> CREATOR;
    private final boolean bVG;
    private final boolean bVH;
    private final boolean bVI;
    private final boolean bVJ;
    private final boolean bVK;
    private final int btV;
    private final String bxh;
    
    static {
        CREATOR = (Parcelable$Creator)new bb();
    }
    
    og(final int btV, final String bxh, final boolean bvg, final boolean bvh, final boolean bvi, final boolean bvj, final boolean bvk) {
        this.btV = btV;
        this.bxh = bxh;
        this.bVG = bvg;
        this.bVH = bvh;
        this.bVI = bvi;
        this.bVJ = bvj;
        this.bVK = bvk;
    }
    
    public final String FP() {
        return this.bxh;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final boolean RL() {
        return this.bVG;
    }
    
    public final boolean RM() {
        return this.bVH;
    }
    
    public final boolean RN() {
        return this.bVI;
    }
    
    public final boolean RO() {
        return this.bVJ;
    }
    
    public final boolean RP() {
        return this.bVK;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        bb.a(this, parcel);
    }
}
