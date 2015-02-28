package com.google.android.gms.games.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class ConnectionInfo implements SafeParcelable
{
    public static final a CREATOR;
    private final String bOe;
    private final int bOf;
    private final int btV;
    
    static {
        CREATOR = new a();
    }
    
    public ConnectionInfo(final int btV, final String bOe, final int bOf) {
        this.btV = btV;
        this.bOe = bOe;
        this.bOf = bOf;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final String OP() {
        return this.bOe;
    }
    
    public final int OQ() {
        return this.bOf;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel);
    }
}
