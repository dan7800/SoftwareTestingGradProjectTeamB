package com.google.android.gms.location.places.personalized;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.location.places.personalized.internal.*;
import java.util.*;
import android.os.*;

public class PlaceUserData implements SafeParcelable
{
    public static final c CREATOR;
    final int btV;
    private final String bxh;
    private final String cbv;
    private final List<TestDataImpl> ceq;
    private final List<PlaceAlias> cer;
    
    static {
        CREATOR = new c();
    }
    
    PlaceUserData(final int btV, final String bxh, final String cbv, final List<TestDataImpl> ceq, final List<PlaceAlias> cer) {
        this.btV = btV;
        this.bxh = bxh;
        this.cbv = cbv;
        this.ceq = ceq;
        this.cer = cer;
    }
    
    public final String TC() {
        return this.bxh;
    }
    
    public final List<PlaceAlias> TD() {
        return this.cer;
    }
    
    public final List<TestDataImpl> TE() {
        return this.ceq;
    }
    
    public final String Ty() {
        return this.cbv;
    }
    
    public int describeContents() {
        final c creator = PlaceUserData.CREATOR;
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            if (!(o instanceof PlaceUserData)) {
                return false;
            }
            final PlaceUserData placeUserData = (PlaceUserData)o;
            if (!this.bxh.equals(placeUserData.bxh) || !this.cbv.equals(placeUserData.cbv) || !this.ceq.equals(placeUserData.ceq) || !this.cer.equals(placeUserData.cer)) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.bxh, this.cbv, this.ceq, this.cer });
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final c creator = PlaceUserData.CREATOR;
        c.a(this, parcel);
    }
}
