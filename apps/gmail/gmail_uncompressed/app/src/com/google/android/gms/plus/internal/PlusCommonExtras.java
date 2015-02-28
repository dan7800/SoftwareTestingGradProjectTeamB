package com.google.android.gms.plus.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class PlusCommonExtras implements SafeParcelable
{
    public static final a CREATOR;
    public static String TAG;
    private final int btV;
    private String cjS;
    private String cjT;
    
    static {
        PlusCommonExtras.TAG = "PlusCommonExtras";
        CREATOR = new a();
    }
    
    public PlusCommonExtras() {
        this.btV = 1;
        this.cjS = "";
        this.cjT = "";
    }
    
    PlusCommonExtras(final int btV, final String cjS, final String cjT) {
        this.btV = btV;
        this.cjS = cjS;
        this.cjT = cjT;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final String Ve() {
        return this.cjS;
    }
    
    public final String Vf() {
        return this.cjT;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o instanceof PlusCommonExtras) {
            final PlusCommonExtras plusCommonExtras = (PlusCommonExtras)o;
            if (this.btV == plusCommonExtras.btV && E.b(this.cjS, plusCommonExtras.cjS) && E.b(this.cjT, plusCommonExtras.cjT)) {
                return true;
            }
        }
        return false;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.btV, this.cjS, this.cjT });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("versionCode", this.btV).e("Gpsrc", this.cjS).e("ClientCallingPackage", this.cjT).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel);
    }
}
