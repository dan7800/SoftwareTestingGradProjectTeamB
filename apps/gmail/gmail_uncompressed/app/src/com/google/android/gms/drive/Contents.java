package com.google.android.gms.drive;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

@Deprecated
public class Contents implements SafeParcelable
{
    public static final Parcelable$Creator<Contents> CREATOR;
    final ParcelFileDescriptor bEA;
    final int bGi;
    final int bGj;
    final DriveId bGk;
    final boolean bGl;
    private boolean bGm;
    private boolean bGn;
    final int btV;
    private boolean mClosed;
    
    static {
        CREATOR = (Parcelable$Creator)new o();
    }
    
    Contents(final int btV, final ParcelFileDescriptor bea, final int bGi, final int bGj, final DriveId bGk, final boolean bGl) {
        this.mClosed = false;
        this.bGm = false;
        this.bGn = false;
        this.btV = btV;
        this.bEA = bea;
        this.bGi = bGi;
        this.bGj = bGj;
        this.bGk = bGk;
        this.bGl = bGl;
    }
    
    public final int LS() {
        return this.bGi;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        o.a(this, parcel, n);
    }
}
