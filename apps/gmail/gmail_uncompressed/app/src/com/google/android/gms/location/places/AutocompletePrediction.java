package com.google.android.gms.location.places;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class AutocompletePrediction implements SafeParcelable
{
    public static final Parcelable$Creator<AutocompletePrediction> CREATOR;
    final String bMj;
    final int btV;
    final List<String> cbu;
    final String cbv;
    final List<AutocompletePrediction$a> cbw;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    AutocompletePrediction(final int btV, final String bMj, final String cbv, final List<String> cbu, final List<AutocompletePrediction$a> cbw) {
        this.btV = btV;
        this.bMj = bMj;
        this.cbv = cbv;
        this.cbu = cbu;
        this.cbw = cbw;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            if (!(o instanceof AutocompletePrediction)) {
                return false;
            }
            final AutocompletePrediction autocompletePrediction = (AutocompletePrediction)o;
            if (!E.b(this.bMj, autocompletePrediction.bMj) || !E.b(this.cbv, autocompletePrediction.cbv) || !E.b(this.cbu, autocompletePrediction.cbu) || !E.b(this.cbw, autocompletePrediction.cbw)) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.bMj, this.cbv, this.cbu, this.cbw });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("description", this.bMj).e("placeId", this.cbv).e("placeTypes", this.cbu).e("substrings", this.cbw).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.a(this, parcel);
    }
}
