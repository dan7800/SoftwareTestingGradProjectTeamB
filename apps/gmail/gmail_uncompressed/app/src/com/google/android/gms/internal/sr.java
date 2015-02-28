package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.reminders.model.*;
import android.os.*;

public class sr implements SafeParcelable, TaskList
{
    public static final Parcelable$Creator<sr> CREATOR;
    private final Integer bZG;
    public final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new dh();
    }
    
    sr(final int btV, final Integer bzg) {
        this.bZG = bzg;
        this.btV = btV;
    }
    
    public sr(final TaskList list) {
        this(1, list.SH());
    }
    
    public sr(final Integer n) {
        this(1, n);
    }
    
    @Override
    public final Integer SH() {
        return this.bZG;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        dh.a(this, parcel);
    }
}
