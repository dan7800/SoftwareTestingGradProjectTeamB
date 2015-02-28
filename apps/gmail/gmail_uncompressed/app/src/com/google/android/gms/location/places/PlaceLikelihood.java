package com.google.android.gms.location.places;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.internal.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class PlaceLikelihood implements SafeParcelable
{
    public static final Parcelable$Creator<PlaceLikelihood> CREATOR;
    final int btV;
    final nq cbH;
    final float cbI;
    
    static {
        CREATOR = (Parcelable$Creator)new f();
    }
    
    PlaceLikelihood(final int btV, final nq cbH, final float cbI) {
        this.btV = btV;
        this.cbH = cbH;
        this.cbI = cbI;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            if (!(o instanceof PlaceLikelihood)) {
                return false;
            }
            final PlaceLikelihood placeLikelihood = (PlaceLikelihood)o;
            if (!this.cbH.equals(placeLikelihood.cbH) || this.cbI != placeLikelihood.cbI) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public int hashCode() {
        return this.cbH.hashCode();
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("place", this.cbH).e("likelihood", this.cbI).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        f.a(this, parcel, n);
    }
}
