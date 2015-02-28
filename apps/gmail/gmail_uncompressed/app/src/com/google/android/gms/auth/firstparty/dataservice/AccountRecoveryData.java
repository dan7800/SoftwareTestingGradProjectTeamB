package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.auth.*;
import java.util.*;
import android.os.*;

public class AccountRecoveryData implements SafeParcelable
{
    public static final o CREATOR;
    public final String acw;
    public final AccountRecoveryGuidance bxW;
    public final String bxX;
    public final String bxY;
    public final String bxZ;
    public final String bya;
    public final List<Country> byb;
    public final String byc;
    public final String byd;
    public final int version;
    
    static {
        CREATOR = new o();
    }
    
    AccountRecoveryData(final int version, final AccountRecoveryGuidance bxW, final String bxX, final String bxY, final String acw, final String bxZ, final String bya, final List<Country> list, final String byc, final String byd) {
        this.version = version;
        this.bxW = bxW;
        this.bxX = bxX;
        this.bxY = bxY;
        this.acw = acw;
        this.bxZ = bxZ;
        this.bya = bya;
        List<Country> byb;
        if (list == null) {
            byb = (List<Country>)Collections.EMPTY_LIST;
        }
        else {
            byb = Collections.unmodifiableList((List<? extends Country>)list);
        }
        this.byb = byb;
        this.byc = byc;
        this.byd = byd;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        o.a(this, parcel, n);
    }
}
