package com.google.android.gms.location.copresence;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class OptInParams implements SafeParcelable
{
    public static final Parcelable$Creator<OptInParams> CREATOR;
    private final int btV;
    private final String buh;
    private final int caT;
    private final int caU;
    private final int caV;
    private final int caW;
    private final String caX;
    private final String caY;
    
    static {
        CREATOR = (Parcelable$Creator)new l();
    }
    
    OptInParams(final int btV, final String buh, final int caT, final int caU, final int caV, final int caW, final String caX, final String caY) {
        this.btV = btV;
        this.buh = buh;
        this.caT = caT;
        this.caU = caU;
        this.caV = caV;
        this.caW = caW;
        this.caX = caX;
        this.caY = caY;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final int Tc() {
        return this.caT;
    }
    
    public final int Td() {
        return this.caU;
    }
    
    public final int Te() {
        return this.caV;
    }
    
    public final int Tf() {
        return this.caW;
    }
    
    public final String Tg() {
        return this.caX;
    }
    
    public final String Th() {
        return this.caY;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public final String getPackageName() {
        return this.buh;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        l.a(this, parcel);
    }
}
