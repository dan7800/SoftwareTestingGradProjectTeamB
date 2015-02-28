package com.google.android.gms.auth;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class AccountChangeEvent implements SafeParcelable
{
    public static final a CREATOR;
    final int bxf;
    final long bxg;
    final String bxh;
    final int bxi;
    final int bxj;
    final String bxk;
    
    static {
        CREATOR = new a();
    }
    
    AccountChangeEvent(final int bxf, final long bxg, final String s, final int bxi, final int bxj, final String bxk) {
        this.bxf = bxf;
        this.bxg = bxg;
        this.bxh = G.ae(s);
        this.bxi = bxi;
        this.bxj = bxj;
        this.bxk = bxk;
    }
    
    public final int JO() {
        return this.bxi;
    }
    
    public final String JP() {
        return this.bxk;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o != this) {
            if (!(o instanceof AccountChangeEvent)) {
                return false;
            }
            final AccountChangeEvent accountChangeEvent = (AccountChangeEvent)o;
            if (this.bxf != accountChangeEvent.bxf || this.bxg != accountChangeEvent.bxg || !E.b(this.bxh, accountChangeEvent.bxh) || this.bxi != accountChangeEvent.bxi || this.bxj != accountChangeEvent.bxj || !E.b(this.bxk, accountChangeEvent.bxk)) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.bxf, this.bxg, this.bxh, this.bxi, this.bxj, this.bxk });
    }
    
    @Override
    public String toString() {
        String s = "UNKNOWN";
        switch (this.bxi) {
            case 1: {
                s = "ADDED";
                break;
            }
            case 2: {
                s = "REMOVED";
                break;
            }
            case 4: {
                s = "RENAMED_TO";
                break;
            }
            case 3: {
                s = "RENAMED_FROM";
                break;
            }
        }
        return "AccountChangeEvent {accountName = " + this.bxh + ", changeType = " + s + ", changeData = " + this.bxk + ", eventIndex = " + this.bxj + "}";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel);
    }
}
