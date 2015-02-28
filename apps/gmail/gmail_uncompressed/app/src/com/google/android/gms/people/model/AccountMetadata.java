package com.google.android.gms.people.model;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class AccountMetadata implements SafeParcelable
{
    public static final f CREATOR;
    final int btV;
    public boolean cjM;
    public boolean cjN;
    public boolean cjO;
    public boolean cjP;
    
    static {
        CREATOR = new f();
    }
    
    public AccountMetadata() {
        this.btV = 2;
    }
    
    AccountMetadata(final int btV, final boolean cjM, final boolean cjN, final boolean cjO, final boolean cjP) {
        this.btV = btV;
        this.cjM = cjM;
        this.cjN = cjN;
        this.cjO = cjO;
        this.cjP = cjP;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        f.a(this, parcel);
    }
}
