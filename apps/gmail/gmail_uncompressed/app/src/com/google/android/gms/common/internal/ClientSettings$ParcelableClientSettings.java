package com.google.android.gms.common.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public final class ClientSettings$ParcelableClientSettings implements SafeParcelable
{
    public static final a CREATOR;
    private final List<String> bCX;
    private final int bCp;
    private final String bCr;
    private final int btV;
    private final String bxh;
    
    static {
        CREATOR = new a();
    }
    
    ClientSettings$ParcelableClientSettings(final int btV, final String bxh, final List<String> list, final int bCp, final String bCr) {
        this.bCX = new ArrayList<String>();
        this.btV = btV;
        this.bxh = bxh;
        this.bCX.addAll(list);
        this.bCp = bCp;
        this.bCr = bCr;
    }
    
    public ClientSettings$ParcelableClientSettings(final String s, final Collection<String> collection, final int n, final String s2) {
        this(3, s, new ArrayList<String>(collection), n, s2);
    }
    
    public final String FP() {
        return this.bxh;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final String KT() {
        if (this.bxh != null) {
            return this.bxh;
        }
        return "<<default account>>";
    }
    
    public final List<String> KU() {
        return new ArrayList<String>(this.bCX);
    }
    
    public final String KV() {
        return this.bCr;
    }
    
    public final int KW() {
        return this.bCp;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel);
    }
}
