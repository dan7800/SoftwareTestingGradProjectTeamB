package com.google.android.gms.location.places.personalized;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class PlaceAlias implements SafeParcelable
{
    public static final b CREATOR;
    public static final PlaceAlias cen;
    public static final PlaceAlias ceo;
    final int btV;
    private final String cep;
    
    static {
        CREATOR = new b();
        cen = new PlaceAlias(0, "Home");
        ceo = new PlaceAlias(0, "Work");
    }
    
    PlaceAlias(final int btV, final String cep) {
        this.btV = btV;
        this.cep = cep;
    }
    
    public final String TB() {
        return this.cep;
    }
    
    public int describeContents() {
        final b creator = PlaceAlias.CREATOR;
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        return this == o || (o instanceof PlaceAlias && E.b(this.cep, ((PlaceAlias)o).cep));
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.cep });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("alias", this.cep).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final b creator = PlaceAlias.CREATOR;
        b.a(this, parcel);
    }
}
