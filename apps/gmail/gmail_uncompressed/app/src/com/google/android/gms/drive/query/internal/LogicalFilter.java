package com.google.android.gms.drive.query.internal;

import java.util.*;
import android.os.*;

public class LogicalFilter extends AbstractFilter
{
    public static final Parcelable$Creator<LogicalFilter> CREATOR;
    final List<FilterHolder> bIE;
    final Operator bIr;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new i();
    }
    
    LogicalFilter(final int btV, final Operator bIr, final List<FilterHolder> bie) {
        this.btV = btV;
        this.bIr = bIr;
        this.bIE = bie;
    }
    
    @Override
    public final <T> T a(final f<T> f) {
        final ArrayList<T> list = new ArrayList<T>();
        final Iterator<FilterHolder> iterator = this.bIE.iterator();
        while (iterator.hasNext()) {
            list.add(iterator.next().Mf().a(f));
        }
        return f.a(this.bIr, list);
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        i.a(this, parcel, n);
    }
}
