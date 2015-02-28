package com.google.android.gms.drive;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class UserMetadata implements SafeParcelable
{
    public static final Parcelable$Creator<UserMetadata> CREATOR;
    final String bFK;
    final String bGM;
    final String bGN;
    final boolean bGO;
    final String bGP;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new t();
    }
    
    UserMetadata(final int btV, final String bgm, final String bfk, final String bgn, final boolean bgo, final String bgp) {
        this.btV = btV;
        this.bGM = bgm;
        this.bFK = bfk;
        this.bGN = bgn;
        this.bGO = bgo;
        this.bGP = bgp;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public String toString() {
        return String.format("Permission ID: '%s', Display Name: '%s', Picture URL: '%s', Authenticated User: %b, Email: '%s'", this.bGM, this.bFK, this.bGN, this.bGO, this.bGP);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        t.a(this, parcel);
    }
}
