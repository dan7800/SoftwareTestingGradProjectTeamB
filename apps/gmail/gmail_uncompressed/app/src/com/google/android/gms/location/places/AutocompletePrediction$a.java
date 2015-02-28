package com.google.android.gms.location.places;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class AutocompletePrediction$a implements SafeParcelable
{
    public static final Parcelable$Creator<AutocompletePrediction$a> CREATOR;
    final int btV;
    final int gY;
    final int mLength;
    
    static {
        CREATOR = (Parcelable$Creator)new j();
    }
    
    public AutocompletePrediction$a(final int btV, final int gy, final int mLength) {
        this.btV = btV;
        this.gY = gy;
        this.mLength = mLength;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            if (!(o instanceof AutocompletePrediction$a)) {
                return false;
            }
            final AutocompletePrediction$a autocompletePrediction$a = (AutocompletePrediction$a)o;
            if (!E.b(this.gY, autocompletePrediction$a.gY) || !E.b(this.mLength, autocompletePrediction$a.mLength)) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.gY, this.mLength });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("offset", this.gY).e("length", this.mLength).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        j.a(this, parcel);
    }
}
