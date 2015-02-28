package com.google.android.gms.udc;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class SettingState implements SafeParcelable
{
    public static final b CREATOR;
    private final int btV;
    private int ckF;
    private int ckG;
    private int ckH;
    
    static {
        CREATOR = new b();
    }
    
    public SettingState() {
        this.btV = 1;
    }
    
    SettingState(final int btV, final int ckF, final int ckG, final int ckH) {
        this.btV = btV;
        this.ckF = ckF;
        this.ckG = ckG;
        this.ckH = ckH;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int VA() {
        return this.ckH;
    }
    
    public final int Vy() {
        return this.ckF;
    }
    
    public final int Vz() {
        return this.ckG;
    }
    
    public int describeContents() {
        final b creator = SettingState.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final b creator = SettingState.CREATOR;
        b.a(this, parcel);
    }
}
