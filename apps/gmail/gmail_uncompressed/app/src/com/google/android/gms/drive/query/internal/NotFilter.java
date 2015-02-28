package com.google.android.gms.drive.query.internal;

import android.os.*;

public class NotFilter extends AbstractFilter
{
    public static final Parcelable$Creator<NotFilter> CREATOR;
    final FilterHolder bIF;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new k();
    }
    
    NotFilter(final int btV, final FilterHolder bif) {
        this.btV = btV;
        this.bIF = bif;
    }
    
    @Override
    public final <T> T a(final f<T> f) {
        return f.af(this.bIF.Mf().a(f));
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        k.a(this, parcel, n);
    }
}
