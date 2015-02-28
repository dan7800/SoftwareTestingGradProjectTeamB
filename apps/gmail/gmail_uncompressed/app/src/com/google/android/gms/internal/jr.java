package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.server.response.*;
import java.util.*;
import android.os.*;

public final class jr implements SafeParcelable, a<String, Integer>
{
    public static final T CREATOR;
    private final HashMap<String, Integer> bTr;
    private final HashMap<Integer, String> bTs;
    private final ArrayList<jr$a> bTt;
    private final int btV;
    
    static {
        CREATOR = new T();
    }
    
    public jr() {
        this.btV = 1;
        this.bTr = new HashMap<String, Integer>();
        this.bTs = new HashMap<Integer, String>();
        this.bTt = null;
    }
    
    jr(final int btV, final ArrayList<jr$a> list) {
        this.btV = btV;
        this.bTr = new HashMap<String, Integer>();
        this.bTs = new HashMap<Integer, String>();
        this.bTt = null;
        this.m(list);
    }
    
    private void m(final ArrayList<jr$a> list) {
        for (final jr$a jr$a : list) {
            this.o(jr$a.bTu, jr$a.bTv);
        }
    }
    
    final int Jt() {
        return this.btV;
    }
    
    final ArrayList<jr$a> Rd() {
        final ArrayList<jr$a> list = new ArrayList<jr$a>();
        for (final String s : this.bTr.keySet()) {
            list.add(new jr$a(s, this.bTr.get(s)));
        }
        return list;
    }
    
    public final int describeContents() {
        final T creator = jr.CREATOR;
        return 0;
    }
    
    public final jr o(final String s, final int n) {
        this.bTr.put(s, n);
        this.bTs.put(n, s);
        return this;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        final T creator = jr.CREATOR;
        T.a(this, parcel);
    }
}
