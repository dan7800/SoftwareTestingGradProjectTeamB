package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class PhraseAffinityResponse implements SafeParcelable
{
    public static final Q CREATOR;
    final int btV;
    final CorpusId[] bvc;
    final int[] bvd;
    final String mErrorMessage;
    
    static {
        CREATOR = new Q();
    }
    
    PhraseAffinityResponse(final int btV, final String mErrorMessage, final CorpusId[] bvc, final int[] bvd) {
        this.btV = btV;
        this.mErrorMessage = mErrorMessage;
        this.bvc = bvc;
        this.bvd = bvd;
    }
    
    public int describeContents() {
        final Q creator = PhraseAffinityResponse.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final Q creator = PhraseAffinityResponse.CREATOR;
        Q.a(this, parcel, n);
    }
}
