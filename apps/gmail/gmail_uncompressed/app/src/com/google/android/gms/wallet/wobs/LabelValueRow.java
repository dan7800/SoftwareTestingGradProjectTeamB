package com.google.android.gms.wallet.wobs;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public final class LabelValueRow implements SafeParcelable
{
    public static final Parcelable$Creator<LabelValueRow> CREATOR;
    private final int btV;
    String cmv;
    String cmw;
    ArrayList<LabelValue> cmx;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
    }
    
    LabelValueRow() {
        this.btV = 1;
        this.cmx = new ArrayList<LabelValue>();
    }
    
    LabelValueRow(final int btV, final String cmv, final String cmw, final ArrayList<LabelValue> cmx) {
        this.btV = btV;
        this.cmv = cmv;
        this.cmw = cmw;
        this.cmx = cmx;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        d.a(this, parcel);
    }
}
