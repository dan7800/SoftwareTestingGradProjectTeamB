package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.fitness.data.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class DataSourcesRequest implements SafeParcelable
{
    public static final Parcelable$Creator<DataSourcesRequest> CREATOR;
    private final List<DataType> bKq;
    private final List<Integer> bMB;
    private final boolean bMC;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new o();
    }
    
    DataSourcesRequest(final int btV, final List<DataType> bKq, final List<Integer> bmb, final boolean bmc) {
        this.btV = btV;
        this.bKq = bKq;
        this.bMB = bmb;
        this.bMC = bmc;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final List<DataType> Mr() {
        return Collections.unmodifiableList((List<? extends DataType>)this.bKq);
    }
    
    public final boolean Nn() {
        return this.bMC;
    }
    
    final List<Integer> No() {
        return this.bMB;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public String toString() {
        final F e = E.ad(this).e("dataTypes", this.bKq).e("sourceTypes", this.bMB);
        if (this.bMC) {
            e.e("includeDbOnlySources", "true");
        }
        return e.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        o.a(this, parcel);
    }
}
