package com.google.android.gms.drive.metadata;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.regex.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class CustomPropertyKey implements SafeParcelable
{
    public static final Parcelable$Creator<CustomPropertyKey> CREATOR;
    private static final Pattern bIa;
    final String bHZ;
    final int btV;
    final int dD;
    
    static {
        CREATOR = (Parcelable$Creator)new h();
        bIa = Pattern.compile("[\\w.!@$%^&*()/-]+");
    }
    
    CustomPropertyKey(final int btV, final String bhz, final int dd) {
        boolean b = true;
        G.f(bhz, (Object)"key");
        G.b(CustomPropertyKey.bIa.matcher(bhz).matches(), "key name characters must be alphanumeric or one of .!@$%^&*()-_/");
        if (dd != 0 && dd != (b ? 1 : 0)) {
            b = false;
        }
        G.b(b, "visibility must be either PUBLIC or PRIVATE");
        this.btV = btV;
        this.bHZ = bhz;
        this.dD = dd;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o != null) {
            if (o == this) {
                return true;
            }
            if (o instanceof CustomPropertyKey) {
                final CustomPropertyKey customPropertyKey = (CustomPropertyKey)o;
                if (customPropertyKey.bHZ.equals(this.bHZ) && customPropertyKey.dD == this.dD) {
                    return true;
                }
            }
        }
        return false;
    }
    
    @Override
    public int hashCode() {
        return (this.bHZ + this.dD).hashCode();
    }
    
    @Override
    public String toString() {
        return "CustomPropertyKey(" + this.bHZ + "," + this.dD + ")";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.a(this, parcel);
    }
}
