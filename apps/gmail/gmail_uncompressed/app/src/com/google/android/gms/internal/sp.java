package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.reminders.model.*;
import android.os.*;

public class sp implements SafeParcelable, TaskId
{
    public static final Parcelable$Creator<sp> CREATOR;
    private final Long bZD;
    private final String bZE;
    private final String bZF;
    public final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new dg();
    }
    
    sp(final int btV, final Long bzd, final String bze, final String bzf) {
        this.bZD = bzd;
        this.bZE = bze;
        this.bZF = bzf;
        this.btV = btV;
    }
    
    public sp(final TaskId taskId) {
        this(1, taskId.SE(), taskId.SF(), taskId.SG());
    }
    
    public sp(final Long n, final String s, final String s2) {
        this(1, n, s, s2);
    }
    
    @Override
    public final Long SE() {
        return this.bZD;
    }
    
    @Override
    public final String SF() {
        return this.bZE;
    }
    
    @Override
    public final String SG() {
        return this.bZF;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        dg.a(this, parcel);
    }
}
