package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class e implements SafeParcelable
{
    public static final Parcelable$Creator<e> CREATOR;
    private final DataSet bMo;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new l();
    }
    
    e(final int btV, final DataSet bMo) {
        this.btV = btV;
        this.bMo = bMo;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final DataSet Nb() {
        return this.bMo;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        return o == this || (o instanceof e && E.b(this.bMo, ((e)o).bMo));
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.bMo });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("dataSet", this.bMo).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        l.a(this, parcel, n);
    }
}
