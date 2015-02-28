package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class RegisterCorpusIMEInfo implements SafeParcelable
{
    public static final T CREATOR;
    final int btV;
    public final int buS;
    public final String[] bvs;
    public final String bvt;
    public final String bvu;
    public final String[] bvv;
    public final String bvw;
    
    static {
        CREATOR = new T();
    }
    
    RegisterCorpusIMEInfo(final int btV, final int buS, final String[] bvs, final String bvt, final String bvu, final String[] bvv, final String bvw) {
        this.btV = btV;
        this.buS = buS;
        this.bvs = bvs;
        this.bvt = bvt;
        this.bvu = bvu;
        this.bvv = bvv;
        this.bvw = bvw;
    }
    
    public RegisterCorpusIMEInfo(final String[] array, final String s, final String s2) {
        this(1, 0, array, s, null, null, s2);
    }
    
    public int describeContents() {
        final T creator = RegisterCorpusIMEInfo.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final T creator = RegisterCorpusIMEInfo.CREATOR;
        T.a(this, parcel);
    }
}
