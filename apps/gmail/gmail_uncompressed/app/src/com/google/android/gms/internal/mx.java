package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.text.*;
import java.util.*;
import android.os.*;

public class mx implements SafeParcelable
{
    public static final Parcelable$Creator<mx> CREATOR;
    public final String bUP;
    private final int btV;
    public final int type;
    
    static {
        CREATOR = (Parcelable$Creator)new aQ();
    }
    
    mx(final int btV, final int type, final String bup) {
        this.btV = btV;
        this.type = type;
        this.bUP = bup;
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
            if (o == null) {
                return false;
            }
            if (this.getClass() != o.getClass()) {
                return false;
            }
            final mx mx = (mx)o;
            if (this.type != mx.type || !TextUtils.equals((CharSequence)this.bUP, (CharSequence)mx.bUP)) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.type, this.bUP });
    }
    
    @Override
    public String toString() {
        switch (this.type) {
            default: {
                return null;
            }
            case 1: {
                return "Unpublish(id=" + this.bUP + ")";
            }
            case 2: {
                return "UnpublishAll";
            }
        }
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        aQ.a(this, parcel);
    }
}
