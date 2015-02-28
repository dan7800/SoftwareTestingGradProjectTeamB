package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.reminders.model.*;
import android.os.*;

public class sl implements SafeParcelable, Location
{
    public static final Parcelable$Creator<sl> CREATOR;
    private final Double bZl;
    private final Double bZm;
    private final Integer bZn;
    private final Integer bZo;
    private final String bZp;
    public final int btV;
    private final String mName;
    
    static {
        CREATOR = (Parcelable$Creator)new de();
    }
    
    sl(final int btV, final Double bZl, final Double bZm, final String mName, final Integer bZn, final Integer bZo, final String bZp) {
        this.bZl = bZl;
        this.bZm = bZm;
        this.mName = mName;
        this.bZn = bZn;
        this.bZo = bZo;
        this.bZp = bZp;
        this.btV = btV;
    }
    
    public sl(final Location location) {
        this(1, location.Sz(), location.SA(), location.getName(), location.SB(), location.SC(), location.SD());
    }
    
    public sl(final Double n, final Double n2, final String s, final Integer n3, final Integer n4, final String s2) {
        this(1, n, n2, s, n3, n4, s2);
    }
    
    @Override
    public final Double SA() {
        return this.bZm;
    }
    
    @Override
    public final Integer SB() {
        return this.bZn;
    }
    
    @Override
    public final Integer SC() {
        return this.bZo;
    }
    
    @Override
    public final String SD() {
        return this.bZp;
    }
    
    @Override
    public final Double Sz() {
        return this.bZl;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public final String getName() {
        return this.mName;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        de.a(this, parcel);
    }
}
