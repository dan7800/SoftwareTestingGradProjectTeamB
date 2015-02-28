package com.google.android.gms.fitness.result;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class ListSubscriptionsResult implements t, SafeParcelable
{
    public static final Parcelable$Creator<ListSubscriptionsResult> CREATOR;
    private final Status bHX;
    private final List<Subscription> bMZ;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new e();
    }
    
    ListSubscriptionsResult(final int btV, final List<Subscription> bmz, final Status bhx) {
        this.btV = btV;
        this.bMZ = bmz;
        this.bHX = bhx;
    }
    
    @Override
    public final Status Jk() {
        return this.bHX;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final List<Subscription> NL() {
        return this.bMZ;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            final boolean b = o instanceof ListSubscriptionsResult;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final ListSubscriptionsResult listSubscriptionsResult = (ListSubscriptionsResult)o;
            int n;
            if (this.bHX.equals(listSubscriptionsResult.bHX) && E.b(this.bMZ, listSubscriptionsResult.bMZ)) {
                n = 1;
            }
            else {
                n = 0;
            }
            b2 = false;
            if (n == 0) {
                return b2;
            }
        }
        return true;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.bHX, this.bMZ });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("status", this.bHX).e("subscriptions", this.bMZ).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        e.a(this, parcel, n);
    }
}
