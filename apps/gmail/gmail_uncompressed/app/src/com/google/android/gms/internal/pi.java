package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.people.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class pi implements SafeParcelable
{
    public static final bM CREATOR;
    private final int bVW;
    private final int bVX;
    private final boolean bVY;
    private final int btV;
    
    static {
        CREATOR = new bM();
    }
    
    pi(final int btV, final int bvw, final int bvx, final boolean bvy) {
        this.btV = btV;
        this.bVW = bvw;
        this.bVX = bvx;
        this.bVY = bvy;
    }
    
    public static pi a(k cgA) {
        if (cgA == null) {
            cgA = k.cgA;
        }
        return new pi(1, cgA.cgB, cgA.cgC, cgA.cgD);
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int RX() {
        return this.bVW;
    }
    
    public final int RY() {
        return this.bVX;
    }
    
    public final boolean RZ() {
        return this.bVY;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("imageSize", this.bVW).e("avatarOptions", this.bVX).e("useLargePictureForCp2Images", this.bVY).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        bM.a(this, parcel);
    }
}
