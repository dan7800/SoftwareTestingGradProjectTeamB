package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.reminders.model.*;
import android.os.*;

public class st implements SafeParcelable, Time
{
    public static final Parcelable$Creator<st> CREATOR;
    private final Integer bZH;
    private final Integer bZI;
    private final Integer bZJ;
    public final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new di();
    }
    
    st(final int btV, final Integer bzh, final Integer bzi, final Integer bzj) {
        this.bZH = bzh;
        this.bZI = bzi;
        this.bZJ = bzj;
        this.btV = btV;
    }
    
    public st(final Time time) {
        this(1, time.SI(), time.SJ(), time.SK());
    }
    
    public st(final Integer n, final Integer n2, final Integer n3) {
        this(1, n, n2, n3);
    }
    
    @Override
    public final Integer SI() {
        return this.bZH;
    }
    
    @Override
    public final Integer SJ() {
        return this.bZI;
    }
    
    @Override
    public final Integer SK() {
        return this.bZJ;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        di.a(this, parcel);
    }
}
