package com.google.android.gms.drive.realtime.internal.event;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.data.*;
import java.util.*;
import android.os.*;

public class ParcelableEventList implements SafeParcelable
{
    public static final Parcelable$Creator<ParcelableEventList> CREATOR;
    final DataHolder bJm;
    final boolean bJn;
    final List<String> bJo;
    final int btV;
    final List<ParcelableEvent> bxl;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    ParcelableEventList(final int btV, final List<ParcelableEvent> bxl, final DataHolder bJm, final boolean bJn, final List<String> bJo) {
        this.btV = btV;
        this.bxl = bxl;
        this.bJm = bJm;
        this.bJn = bJn;
        this.bJo = bJo;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.a(this, parcel, n);
    }
}
