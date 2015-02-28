package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class SearchResults implements SafeParcelable, Iterable<i>
{
    public static final s CREATOR;
    final int btV;
    final int[] bwa;
    final byte[] bwb;
    final Bundle[] bwc;
    final Bundle[] bwd;
    final Bundle[] bwe;
    final int bwf;
    final int[] bwg;
    final String[] bwh;
    final byte[] bwi;
    final double[] bwj;
    final String mErrorMessage;
    
    static {
        CREATOR = new s();
    }
    
    SearchResults(final int btV, final String mErrorMessage, final int[] bwa, final byte[] bwb, final Bundle[] bwc, final Bundle[] bwd, final Bundle[] bwe, final int bwf, final int[] bwg, final String[] bwh, final byte[] bwi, final double[] bwj) {
        this.btV = btV;
        this.mErrorMessage = mErrorMessage;
        this.bwa = bwa;
        this.bwb = bwb;
        this.bwc = bwc;
        this.bwd = bwd;
        this.bwe = bwe;
        this.bwf = bwf;
        this.bwg = bwg;
        this.bwh = bwh;
        this.bwi = bwi;
        this.bwj = bwj;
    }
    
    public final String Jq() {
        return this.mErrorMessage;
    }
    
    public final int Jr() {
        return this.bwf;
    }
    
    public int describeContents() {
        final s creator = SearchResults.CREATOR;
        return 0;
    }
    
    public final boolean hasError() {
        return this.mErrorMessage != null;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final s creator = SearchResults.CREATOR;
        s.a(this, parcel, n);
    }
}
