package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class UnsubscribeRequest implements SafeParcelable
{
    public static final Parcelable$Creator<UnsubscribeRequest> CREATOR;
    private final DataType bKF;
    private final DataSource bKy;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new h();
    }
    
    UnsubscribeRequest(final int btV, final DataType bkf, final DataSource bKy) {
        this.btV = btV;
        this.bKF = bkf;
        this.bKy = bKy;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final DataSource MA() {
        return this.bKy;
    }
    
    public final DataType MF() {
        return this.bKF;
    }
    
    public boolean apply(final Subscription subscription) {
        if (this.bKy != null) {
            return this.bKy.equals(subscription.MA());
        }
        return this.bKF == null || this.bKF.equals(subscription.MW());
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            final boolean b = o instanceof UnsubscribeRequest;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final UnsubscribeRequest unsubscribeRequest = (UnsubscribeRequest)o;
            int n;
            if (E.b(this.bKy, unsubscribeRequest.bKy) && E.b(this.bKF, unsubscribeRequest.bKF)) {
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
        return Arrays.hashCode(new Object[] { this.bKy, this.bKF });
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.a(this, parcel, n);
    }
}
