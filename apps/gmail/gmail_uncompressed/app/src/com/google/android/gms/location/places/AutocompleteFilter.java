package com.google.android.gms.location.places;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class AutocompleteFilter implements SafeParcelable
{
    public static final b CREATOR;
    final int btV;
    private final boolean cbt;
    private final List<PlaceType> cbu;
    
    static {
        CREATOR = new b();
    }
    
    AutocompleteFilter(final int btV, final boolean cbt, final List<PlaceType> cbu) {
        this.btV = btV;
        this.cbt = cbt;
        this.cbu = cbu;
    }
    
    public final boolean Ts() {
        return this.cbt;
    }
    
    public final List<PlaceType> Tt() {
        return this.cbu;
    }
    
    public int describeContents() {
        final b creator = AutocompleteFilter.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final b creator = AutocompleteFilter.CREATOR;
        b.a(this, parcel);
    }
}
