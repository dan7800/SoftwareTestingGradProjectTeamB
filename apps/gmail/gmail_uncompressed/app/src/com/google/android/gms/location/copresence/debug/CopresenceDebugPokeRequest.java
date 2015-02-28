package com.google.android.gms.location.copresence.debug;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.internal.*;
import android.os.*;

public class CopresenceDebugPokeRequest implements SafeParcelable
{
    public static final a CREATOR;
    public static int cbl;
    public static int cbm;
    public final aJ bUN;
    private final int btV;
    private int cbn;
    private byte[] cbo;
    
    static {
        CREATOR = new a();
        CopresenceDebugPokeRequest.cbl = 2;
        CopresenceDebugPokeRequest.cbm = 32;
    }
    
    CopresenceDebugPokeRequest(final int n, final int n2, final byte[] array, final IBinder binder) {
        aJ c;
        if (binder == null) {
            c = null;
        }
        else {
            c = aK.C(binder);
        }
        this(n, n2, array, c);
    }
    
    private CopresenceDebugPokeRequest(final int btV, final int cbn, final byte[] cbo, final aJ bun) {
        this.btV = btV;
        this.cbn = cbn;
        this.cbo = cbo;
        this.bUN = bun;
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
    
    public final int Tn() {
        return this.cbn;
    }
    
    public final byte[] To() {
        return this.cbo;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel);
    }
}
