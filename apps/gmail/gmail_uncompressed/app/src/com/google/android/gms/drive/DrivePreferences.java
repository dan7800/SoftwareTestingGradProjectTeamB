package com.google.android.gms.drive;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class DrivePreferences implements SafeParcelable
{
    public static final Parcelable$Creator<DrivePreferences> CREATOR;
    final boolean bGB;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new q();
    }
    
    DrivePreferences(final int btV, final boolean bgb) {
        this.btV = btV;
        this.bGB = bgb;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        q.a(this, parcel);
    }
}
