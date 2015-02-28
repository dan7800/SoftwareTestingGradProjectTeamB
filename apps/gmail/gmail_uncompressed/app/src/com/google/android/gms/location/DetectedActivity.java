package com.google.android.gms.location;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class DetectedActivity implements SafeParcelable
{
    public static final c CREATOR;
    public static final Comparator<DetectedActivity> cao;
    private final int btV;
    int cap;
    int caq;
    
    static {
        cao = new b();
        CREATOR = new c();
    }
    
    public DetectedActivity(final int btV, final int cap, final int caq) {
        this.btV = btV;
        this.cap = cap;
        this.caq = caq;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int SQ() {
        return this.caq;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public final int getType() {
        int cap = this.cap;
        if (cap > 9) {
            cap = 4;
        }
        return cap;
    }
    
    @Override
    public String toString() {
        return "DetectedActivity [type=" + this.getType() + ", confidence=" + this.caq + "]";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.a(this, parcel);
    }
}
