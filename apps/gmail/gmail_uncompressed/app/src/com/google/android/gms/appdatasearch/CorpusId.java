package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class CorpusId implements SafeParcelable
{
    public static final o CREATOR;
    final int btV;
    public final String btW;
    public final String packageName;
    
    static {
        CREATOR = new o();
    }
    
    CorpusId(final int btV, final String packageName, final String btW) {
        this.btV = btV;
        this.packageName = packageName;
        this.btW = btW;
    }
    
    public int describeContents() {
        final o creator = CorpusId.CREATOR;
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        final boolean b = o instanceof CorpusId;
        boolean b2 = false;
        if (b) {
            final CorpusId corpusId = (CorpusId)o;
            final boolean b3 = E.b(this.packageName, corpusId.packageName);
            b2 = false;
            if (b3) {
                final boolean b4 = E.b(this.btW, corpusId.btW);
                b2 = false;
                if (b4) {
                    b2 = true;
                }
            }
        }
        return b2;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.packageName, this.btW });
    }
    
    @Override
    public String toString() {
        return "CorpusId[package=" + this.packageName + ", corpus=" + this.btW + "]";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final o creator = CorpusId.CREATOR;
        o.a(this, parcel);
    }
}
