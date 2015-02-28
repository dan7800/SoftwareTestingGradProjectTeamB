package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class PhraseAffinitySpecification implements SafeParcelable
{
    public static final R CREATOR;
    final int btV;
    final PhraseAffinityCorpusSpec[] bve;
    
    static {
        CREATOR = new R();
    }
    
    PhraseAffinitySpecification(final int btV, final PhraseAffinityCorpusSpec[] bve) {
        this.btV = btV;
        this.bve = bve;
    }
    
    public int describeContents() {
        final R creator = PhraseAffinitySpecification.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final R creator = PhraseAffinitySpecification.CREATOR;
        R.a(this, parcel, n);
    }
}
