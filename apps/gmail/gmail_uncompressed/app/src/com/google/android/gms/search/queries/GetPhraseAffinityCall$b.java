package com.google.android.gms.search.queries;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.appdatasearch.*;
import android.os.*;

public class GetPhraseAffinityCall$b implements SafeParcelable
{
    public static final c CREATOR;
    final int btV;
    public String[] ckw;
    public PhraseAffinityCorpusSpec[] ckx;
    
    static {
        CREATOR = new c();
    }
    
    public GetPhraseAffinityCall$b() {
        this.btV = 1;
    }
    
    GetPhraseAffinityCall$b(final int btV, final String[] ckw, final PhraseAffinityCorpusSpec[] ckx) {
        this.btV = btV;
        this.ckw = ckw;
        this.ckx = ckx;
    }
    
    public int describeContents() {
        final c creator = GetPhraseAffinityCall$b.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final c creator = GetPhraseAffinityCall$b.CREATOR;
        c.a(this, parcel, n);
    }
}
