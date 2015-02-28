package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.content.*;
import com.google.android.gms.c.*;
import android.os.*;

public final class ea implements SafeParcelable
{
    public static final l CREATOR;
    public final o bSh;
    public final m bSi;
    public final n bSj;
    public final Context bSk;
    public final int versionCode;
    
    static {
        CREATOR = new l();
    }
    
    ea(final int versionCode, final IBinder binder, final IBinder binder2, final IBinder binder3, final IBinder binder4) {
        this.versionCode = versionCode;
        this.bSh = d.a(b.w(binder));
        this.bSi = d.a(b.w(binder2));
        this.bSj = d.a(b.w(binder3));
        this.bSk = d.a(b.w(binder4));
    }
    
    final IBinder QI() {
        return d.ag(this.bSh).asBinder();
    }
    
    final IBinder QJ() {
        return d.ag(this.bSi).asBinder();
    }
    
    final IBinder QK() {
        return d.ag(this.bSj).asBinder();
    }
    
    final IBinder QL() {
        return d.ag(this.bSk).asBinder();
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        l.a(this, parcel);
    }
}
