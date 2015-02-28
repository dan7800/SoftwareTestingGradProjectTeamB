package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.wearable.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class DataItemAssetParcelable implements SafeParcelable, b
{
    public static final Parcelable$Creator<DataItemAssetParcelable> CREATOR;
    private final String bHZ;
    final int btV;
    private final String bzz;
    
    static {
        CREATOR = (Parcelable$Creator)new q();
    }
    
    DataItemAssetParcelable(final int btV, final String bzz, final String bhz) {
        this.btV = btV;
        this.bzz = bzz;
        this.bHZ = bhz;
    }
    
    public DataItemAssetParcelable(final b b) {
        this.btV = 1;
        this.bzz = G.ae(b.getId());
        this.bHZ = G.ae(b.VM());
    }
    
    @Override
    public final String VM() {
        return this.bHZ;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public final String getId() {
        return this.bzz;
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("DataItemAssetParcelable[");
        sb.append("@");
        sb.append(Integer.toHexString(this.hashCode()));
        if (this.bzz == null) {
            sb.append(",noid");
        }
        else {
            sb.append(",");
            sb.append(this.bzz);
        }
        sb.append(", key=");
        sb.append(this.bHZ);
        sb.append("]");
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        q.a(this, parcel);
    }
}
