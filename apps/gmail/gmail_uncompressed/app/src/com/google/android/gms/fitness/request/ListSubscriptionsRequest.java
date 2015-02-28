package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.fitness.data.*;
import android.os.*;

public class ListSubscriptionsRequest implements SafeParcelable
{
    public static final Parcelable$Creator<ListSubscriptionsRequest> CREATOR;
    private final DataType bKF;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new y();
    }
    
    ListSubscriptionsRequest(final int btV, final DataType bkf) {
        this.btV = btV;
        this.bKF = bkf;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final DataType MF() {
        return this.bKF;
    }
    
    public boolean apply(final Subscription subscription) {
        return this.bKF == null || this.bKF.equals(subscription.MW());
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        y.a(this, parcel, n);
    }
}
