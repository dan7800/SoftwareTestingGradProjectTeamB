package com.google.android.gms.cast;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.images.*;
import android.net.*;
import com.google.android.gms.internal.*;
import java.util.*;
import android.os.*;

public final class ApplicationMetadata implements SafeParcelable
{
    public static final Parcelable$Creator<ApplicationMetadata> CREATOR;
    String bBj;
    List<WebImage> bBk;
    List<String> bBl;
    String bBm;
    Uri bBn;
    private final int btV;
    String mName;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    private ApplicationMetadata() {
        this.btV = 1;
        this.bBk = new ArrayList<WebImage>();
        this.bBl = new ArrayList<String>();
    }
    
    ApplicationMetadata(final int btV, final String bBj, final String mName, final List<WebImage> bBk, final List<String> bBl, final String bBm, final Uri bBn) {
        this.btV = btV;
        this.bBj = bBj;
        this.mName = mName;
        this.bBk = bBk;
        this.bBl = bBl;
        this.bBm = bBm;
        this.bBn = bBn;
    }
    
    public final String JX() {
        return this.bBj;
    }
    
    public final String JY() {
        return this.bBm;
    }
    
    public final Uri JZ() {
        return this.bBn;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final List<WebImage> Ka() {
        return this.bBk;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o != this) {
            if (!(o instanceof ApplicationMetadata)) {
                return false;
            }
            final ApplicationMetadata applicationMetadata = (ApplicationMetadata)o;
            if (!D.g(this.bBj, applicationMetadata.bBj) || !D.g(this.bBk, applicationMetadata.bBk) || !D.g(this.mName, applicationMetadata.mName) || !D.g(this.bBl, applicationMetadata.bBl) || !D.g(this.bBm, applicationMetadata.bBm) || !D.g(this.bBn, applicationMetadata.bBn)) {
                return false;
            }
        }
        return true;
    }
    
    public final String getName() {
        return this.mName;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.btV, this.bBj, this.mName, this.bBk, this.bBl, this.bBm, this.bBn });
    }
    
    @Override
    public final String toString() {
        return this.mName;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel, n);
    }
}
