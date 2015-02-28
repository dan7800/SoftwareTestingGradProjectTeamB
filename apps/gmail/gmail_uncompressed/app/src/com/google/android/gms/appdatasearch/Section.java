package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class Section implements SafeParcelable
{
    public static final t CREATOR;
    final int btV;
    public final boolean bws;
    public final int bwt;
    public final String name;
    
    static {
        CREATOR = new t();
    }
    
    Section(final int btV, final String name, final boolean bws, final int bwt) {
        this.btV = btV;
        this.name = name;
        this.bws = bws;
        this.bwt = bwt;
    }
    
    public Section(final String s) {
        this(s, false, 0);
    }
    
    public Section(final String s, final boolean b, final int n) {
        this(2, s, b, n);
    }
    
    public static boolean fI(final String s) {
        return s.startsWith("semantic:");
    }
    
    public int describeContents() {
        final t creator = Section.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final t creator = Section.CREATOR;
        t.a(this, parcel);
    }
}
