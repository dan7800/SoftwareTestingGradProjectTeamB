package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class SuggestionResults implements SafeParcelable, Iterable<m>
{
    public static final w CREATOR;
    final int btV;
    final String[] bwy;
    final String[] bwz;
    final String mErrorMessage;
    
    static {
        CREATOR = new w();
    }
    
    SuggestionResults(final int btV, final String mErrorMessage, final String[] bwy, final String[] bwz) {
        this.btV = btV;
        this.mErrorMessage = mErrorMessage;
        this.bwy = bwy;
        this.bwz = bwz;
    }
    
    public final String Jq() {
        return this.mErrorMessage;
    }
    
    public int describeContents() {
        final w creator = SuggestionResults.CREATOR;
        return 0;
    }
    
    public final String eo(final int n) {
        return this.bwy[n];
    }
    
    public final String ep(final int n) {
        if (this.bwz[n] == null) {
            return this.bwy[n];
        }
        return this.bwz[n];
    }
    
    public final boolean hasError() {
        return this.mErrorMessage != null;
    }
    
    @Override
    public Iterator<m> iterator() {
        if (this.hasError()) {
            return null;
        }
        return new n(this);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final w creator = SuggestionResults.CREATOR;
        w.a(this, parcel);
    }
}
