package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class GoogleAccountData implements SafeParcelable
{
    public static final C CREATOR;
    String acw;
    public String byo;
    public String byp;
    boolean byr;
    public List<String> bys;
    final int version;
    
    static {
        CREATOR = new C();
    }
    
    GoogleAccountData(final int version, final String acw, final boolean byr, final List<String> bys, final String byo, final String byp) {
        this.version = version;
        this.acw = acw;
        this.byr = byr;
        this.bys = bys;
        this.byo = byo;
        this.byp = byp;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        C.a(this, parcel);
    }
}
