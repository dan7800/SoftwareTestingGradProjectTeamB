package com.google.android.gms.pseudonymous;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class PseudonymousIdToken implements SafeParcelable
{
    public static final Parcelable$Creator<PseudonymousIdToken> CREATOR;
    public final int btV;
    private String mValue;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    PseudonymousIdToken(final int btV, final String mValue) {
        this.btV = btV;
        this.mValue = mValue;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        final boolean b = o instanceof PseudonymousIdToken;
        boolean b2 = false;
        if (b) {
            final PseudonymousIdToken pseudonymousIdToken = (PseudonymousIdToken)o;
            final boolean b3 = E.b(this.mValue, pseudonymousIdToken.mValue);
            b2 = false;
            if (b3) {
                final int btV = this.btV;
                final int btV2 = pseudonymousIdToken.btV;
                b2 = false;
                if (btV == btV2) {
                    b2 = true;
                }
            }
        }
        return b2;
    }
    
    public final String getValue() {
        return this.mValue;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.mValue, this.btV });
    }
    
    @Override
    public String toString() {
        return "PseudonymousIdToken(" + this.btV + ")[" + this.mValue + "]";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel);
    }
}
