package com.google.android.gms.drive.realtime.internal.event;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class ParcelableEvent implements SafeParcelable
{
    public static final Parcelable$Creator<ParcelableEvent> CREATOR;
    final String bIT;
    final String bIU;
    final String bIX;
    final List<String> bJb;
    final boolean bJc;
    final String bJd;
    final TextInsertedDetails bJe;
    final TextDeletedDetails bJf;
    final ValuesAddedDetails bJg;
    final ValuesRemovedDetails bJh;
    final ValuesSetDetails bJi;
    final ValueChangedDetails bJj;
    final ReferenceShiftedDetails bJk;
    final ObjectChangedDetails bJl;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    ParcelableEvent(final int btV, final String bit, final String biu, final List<String> bJb, final boolean bJc, final String bix, final String bJd, final TextInsertedDetails bJe, final TextDeletedDetails bJf, final ValuesAddedDetails bJg, final ValuesRemovedDetails bJh, final ValuesSetDetails bJi, final ValueChangedDetails bJj, final ReferenceShiftedDetails bJk, final ObjectChangedDetails bJl) {
        this.btV = btV;
        this.bIT = bit;
        this.bIU = biu;
        this.bJb = bJb;
        this.bJc = bJc;
        this.bIX = bix;
        this.bJd = bJd;
        this.bJe = bJe;
        this.bJf = bJf;
        this.bJg = bJg;
        this.bJh = bJh;
        this.bJi = bJi;
        this.bJj = bJj;
        this.bJk = bJk;
        this.bJl = bJl;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel, n);
    }
}
