package com.google.android.gms.audiomodem;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class Encoding implements SafeParcelable
{
    public static final Parcelable$Creator<Encoding> CREATOR;
    private final int btV;
    private final int bwX;
    private final DsssEncoding bwY;
    private final DtmfEncoding bwZ;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
    }
    
    Encoding(final int btV, final int bwX, final DsssEncoding bwY, final DtmfEncoding bwZ) {
        this.btV = btV;
        this.bwX = bwX;
        this.bwY = bwY;
        this.bwZ = bwZ;
    }
    
    public final DsssEncoding JI() {
        return this.bwY;
    }
    
    public final DtmfEncoding JJ() {
        return this.bwZ;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            if (!(o instanceof Encoding)) {
                return false;
            }
            final Encoding encoding = (Encoding)o;
            if (this.btV != encoding.btV || this.bwX != encoding.bwX || (this.bwX == 0 && !E.b(this.bwY, encoding.bwY)) || (this.bwX == 1 && !E.b(this.bwZ, encoding.bwZ))) {
                return false;
            }
        }
        return true;
    }
    
    public final int getType() {
        return this.bwX;
    }
    
    @Override
    public int hashCode() {
        final int hashCode = Arrays.hashCode(new Object[] { this.btV, this.bwX });
        int hashCode2;
        if (this.bwX == 0) {
            hashCode2 = this.bwY.hashCode();
        }
        else {
            hashCode2 = 0;
        }
        final int n = hashCode2 + hashCode;
        final int bwX = this.bwX;
        int hashCode3 = 0;
        if (bwX == 1) {
            hashCode3 = this.bwZ.hashCode();
        }
        return n + hashCode3;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        d.a(this, parcel, n);
    }
}
