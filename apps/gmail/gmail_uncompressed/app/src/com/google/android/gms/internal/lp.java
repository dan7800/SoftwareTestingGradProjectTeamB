package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.fitness.data.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class lp implements SafeParcelable
{
    public static final Parcelable$Creator<lp> CREATOR;
    private final List<DataType> bKq;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new aw();
    }
    
    lp(final int btV, final List<DataType> bKq) {
        this.btV = btV;
        this.bKq = bKq;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final List<DataType> Mr() {
        return Collections.unmodifiableList((List<? extends DataType>)this.bKq);
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("dataTypes", this.bKq).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        aw.a(this, parcel);
    }
}
