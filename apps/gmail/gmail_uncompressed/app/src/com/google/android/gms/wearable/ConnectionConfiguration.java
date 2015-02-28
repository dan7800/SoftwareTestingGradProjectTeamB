package com.google.android.gms.wearable;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class ConnectionConfiguration implements SafeParcelable
{
    public static final Parcelable$Creator<ConnectionConfiguration> CREATOR;
    private final String bKo;
    final int btV;
    private final int bwX;
    private final int cmO;
    private final boolean cmP;
    private boolean cmQ;
    private String cmR;
    private final String mName;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
    }
    
    ConnectionConfiguration(final int btV, final String mName, final String bKo, final int bwX, final int cmO, final boolean cmP, final boolean cmQ, final String cmR) {
        this.btV = btV;
        this.mName = mName;
        this.bKo = bKo;
        this.bwX = bwX;
        this.cmO = cmO;
        this.cmP = cmP;
        this.cmQ = cmQ;
        this.cmR = cmR;
    }
    
    public final String VL() {
        return this.cmR;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o instanceof ConnectionConfiguration) {
            final ConnectionConfiguration connectionConfiguration = (ConnectionConfiguration)o;
            if (E.b(this.btV, connectionConfiguration.btV) && E.b(this.mName, connectionConfiguration.mName) && E.b(this.bKo, connectionConfiguration.bKo) && E.b(this.bwX, connectionConfiguration.bwX) && E.b(this.cmO, connectionConfiguration.cmO) && E.b(this.cmP, connectionConfiguration.cmP)) {
                return true;
            }
        }
        return false;
    }
    
    public final String getAddress() {
        return this.bKo;
    }
    
    public final String getName() {
        return this.mName;
    }
    
    public final int getRole() {
        return this.cmO;
    }
    
    public final int getType() {
        return this.bwX;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.btV, this.mName, this.bKo, this.bwX, this.cmO, this.cmP });
    }
    
    public final boolean isConnected() {
        return this.cmQ;
    }
    
    public final boolean isEnabled() {
        return this.cmP;
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("ConnectionConfiguration[ ");
        sb.append("mName=" + this.mName);
        sb.append(", mAddress=" + this.bKo);
        sb.append(", mType=" + this.bwX);
        sb.append(", mRole=" + this.cmO);
        sb.append(", mEnabled=" + this.cmP);
        sb.append(", mIsConnected=" + this.cmQ);
        sb.append(", mEnabled=" + this.cmR);
        sb.append("]");
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        d.a(this, parcel);
    }
}
