package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class CorpusScoringInfo implements SafeParcelable
{
    public static final y CREATOR;
    final int btV;
    public final CorpusId btX;
    public final int weight;
    
    static {
        CREATOR = new y();
    }
    
    CorpusScoringInfo(final int btV, final CorpusId btX, final int weight) {
        this.btV = btV;
        this.btX = btX;
        this.weight = weight;
    }
    
    public int describeContents() {
        final y creator = CorpusScoringInfo.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final y creator = CorpusScoringInfo.CREATOR;
        y.a(this, parcel, n);
    }
}
