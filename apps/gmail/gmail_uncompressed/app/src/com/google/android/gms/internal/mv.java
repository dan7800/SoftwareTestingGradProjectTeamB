package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.location.copresence.*;
import android.app.*;
import android.os.*;

public class mv implements SafeParcelable
{
    public static final Parcelable$Creator<mv> CREATOR;
    public final mt bUL;
    public final MessageFilter bUM;
    public final aJ bUN;
    public final PendingIntent bUO;
    private final int btV;
    public final int type;
    
    static {
        CREATOR = (Parcelable$Creator)new aP();
    }
    
    mv(final int btV, final int type, final mt bul, final MessageFilter bum, final IBinder binder, final PendingIntent buo) {
        this.btV = btV;
        this.type = type;
        this.bUL = bul;
        this.bUM = bum;
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
    public String toString() {
        switch (this.type) {
            default: {
                return "SubscribeOperation[unknown type=" + this.type + ", filter=" + this.bUM + "]";
            }
            case 1: {
                return "SubscribeOperation[listener=" + this.Rp() + ", filter=" + this.bUM + "]";
            }
            case 2: {
                return "SubscribeOperation[pendingIntent=" + this.bUO + ", filter=" + this.bUM + "]";
            }
        }
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        aP.a(this, parcel, n);
    }
}
