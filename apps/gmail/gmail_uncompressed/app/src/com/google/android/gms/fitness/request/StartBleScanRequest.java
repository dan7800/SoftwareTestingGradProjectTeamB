package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.fitness.data.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class StartBleScanRequest implements SafeParcelable
{
    public static final Parcelable$Creator<StartBleScanRequest> CREATOR;
    private final List<DataType> bKq;
    private final s bMH;
    private final int bMI;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    StartBleScanRequest(final int btV, final List<DataType> bKq, final IBinder binder, final int bmi) {
        this.btV = btV;
        this.bKq = bKq;
        this.bMH = u.y(binder);
        this.bMI = bmi;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final List<DataType> Mr() {
        return Collections.unmodifiableList((List<? extends DataType>)this.bKq);
    }
    
    public final int Nu() {
        return this.bMI;
    }
    
    public final IBinder Nv() {
        return this.bMH.asBinder();
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("dataTypes", this.bKq).e("timeoutSecs", this.bMI).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.a(this, parcel);
    }
}
