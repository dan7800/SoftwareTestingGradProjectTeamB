package com.google.android.gms.drive.query.internal;

import android.os.*;

public class MatchAllFilter extends AbstractFilter
{
    public static final j CREATOR;
    final int btV;
    
    static {
        CREATOR = new j();
    }
    
    public MatchAllFilter() {
        this(1);
    }
    
    MatchAllFilter(final int btV) {
        this.btV = btV;
    }
    
    @Override
    public final <F> F a(final f<F> f) {
        return f.Me();
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        j.a(this, parcel);
    }
}
