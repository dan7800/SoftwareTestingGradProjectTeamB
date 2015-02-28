package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.app.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class mz implements SafeParcelable
{
    public static final Parcelable$Creator<mz> CREATOR;
    public final aJ bUN;
    public final PendingIntent bUO;
    private final int btV;
    public final int type;
    
    static {
        CREATOR = (Parcelable$Creator)new aR();
    }
    
    mz(final int btV, final int type, final IBinder binder, final PendingIntent buo) {
        this.btV = btV;
        this.type = type;
        if (binder == null) {
            this.bUN = null;
        }
        else {
            this.bUN = aK.C(binder);
        }
        this.bUO = buo;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    final IBinder Rp() {
        if (this.bUN == null) {
            return null;
        }
        return this.bUN.asBinder();
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            if (o == null) {
                return false;
            }
            if (this.getClass() != o.getClass()) {
                return false;
            }
            final mz mz = (mz)o;
            if (this.type != mz.type || !E.b(this.bUN, mz.bUN)) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.type, this.bUN });
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        aR.a(this, parcel, n);
    }
}
