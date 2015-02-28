package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class PhraseAffinityCorpusSpec implements SafeParcelable
{
    public static final P CREATOR;
    final int btV;
    public final CorpusId btX;
    final Bundle bvb;
    
    static {
        CREATOR = new P();
    }
    
    PhraseAffinityCorpusSpec(final int btV, final CorpusId btX, final Bundle bvb) {
        this.btV = btV;
        this.btX = btX;
        this.bvb = bvb;
    }
    
    public int describeContents() {
        final P creator = PhraseAffinityCorpusSpec.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final P creator = PhraseAffinityCorpusSpec.CREATOR;
        P.a(this, parcel, n);
    }
}
