package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.reminders.model.*;
import android.os.*;

public class sj implements SafeParcelable, DateTime
{
    public static final Parcelable$Creator<sj> CREATOR;
    private final Integer bZf;
    private final Integer bZg;
    private final Integer bZh;
    private final st bZi;
    private final Integer bZj;
    private final Long bZk;
    public final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new dd();
    }
    
    sj(final int btV, final Integer bZf, final Integer bZg, final Integer bZh, final st bZi, final Integer bZj, final Long bZk) {
        this.bZf = bZf;
        this.bZg = bZg;
        this.bZh = bZh;
        this.bZi = bZi;
        this.bZj = bZj;
        this.bZk = bZk;
        this.btV = btV;
    }
    
    public sj(final DateTime dateTime) {
        this(dateTime.St(), dateTime.Su(), dateTime.Sv(), dateTime.Sw(), dateTime.Sx(), dateTime.Sy(), (byte)0);
    }
    
    public sj(final Integer n, final Integer n2, final Integer n3, final Time time, final Integer n4, final Long n5) {
        this(n, n2, n3, time, n4, n5, (byte)0);
    }
    
    private sj(final Integer bZf, final Integer bZg, final Integer bZh, final Time time, final Integer bZj, final Long bZk, final byte b) {
        this.bZf = bZf;
        this.bZg = bZg;
        this.bZh = bZh;
        st bZi;
        if (time == null) {
            bZi = null;
        }
        else {
            bZi = new st(time);
        }
        this.bZi = bZi;
        this.bZj = bZj;
        this.bZk = bZk;
        this.btV = 1;
    }
    
    @Override
    public final Integer St() {
        return this.bZf;
    }
    
    @Override
    public final Integer Su() {
        return this.bZg;
    }
    
    @Override
    public final Integer Sv() {
        return this.bZh;
    }
    
    @Override
    public final Time Sw() {
        return this.bZi;
    }
    
    @Override
    public final Integer Sx() {
        return this.bZj;
    }
    
    @Override
    public final Long Sy() {
        return this.bZk;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        dd.a(this, parcel, n);
    }
}
