package com.google.android.gms.drive.query;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.query.internal.*;
import java.util.*;
import android.text.*;
import android.os.*;

public class SortOrder implements SafeParcelable
{
    public static final Parcelable$Creator<SortOrder> CREATOR;
    final List<FieldWithSortOrder> bIp;
    final boolean bIq;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    SortOrder(final int btV, final List<FieldWithSortOrder> bIp, final boolean bIq) {
        this.btV = btV;
        this.bIp = bIp;
        this.bIq = bIq;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public String toString() {
        return String.format(Locale.US, "SortOrder[%s, %s]", TextUtils.join((CharSequence)",", (Iterable)this.bIp), this.bIq);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel);
    }
}
