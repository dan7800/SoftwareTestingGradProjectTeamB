package com.google.android.gms.drive;

import android.os.*;
import com.google.android.gms.common.internal.*;

public abstract class g implements Parcelable
{
    private transient volatile boolean bGZ;
    
    public g() {
        this.bGZ = false;
    }
    
    protected abstract void E(final Parcel p0, final int p1);
    
    public void writeToParcel(final Parcel parcel, final int n) {
        G.cc(!this.bGZ);
        this.bGZ = true;
        this.E(parcel, n);
    }
}
