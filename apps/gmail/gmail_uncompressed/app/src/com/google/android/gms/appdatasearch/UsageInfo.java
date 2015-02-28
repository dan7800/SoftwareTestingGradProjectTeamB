package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class UsageInfo implements SafeParcelable
{
    public static final x CREATOR;
    public final String Tt;
    final int btV;
    final DocumentId bwB;
    final long bwC;
    final int bwD;
    final DocumentContents bwE;
    
    static {
        CREATOR = new x();
    }
    
    UsageInfo(final int btV, final DocumentId bwB, final long bwC, final int bwD, final String tt, final DocumentContents bwE) {
        this.btV = btV;
        this.bwB = bwB;
        this.bwC = bwC;
        this.bwD = bwD;
        this.Tt = tt;
        this.bwE = bwE;
    }
    
    public int describeContents() {
        final x creator = UsageInfo.CREATOR;
        return 0;
    }
    
    @Override
    public String toString() {
        return String.format("UsageInfo[documentId=%s, timestamp=%d, usageType=%d]", this.bwB, this.bwC, this.bwD);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final x creator = UsageInfo.CREATOR;
        x.a(this, parcel, n);
    }
}
