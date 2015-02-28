package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class CheckResourceIdsExistRequest implements SafeParcelable
{
    public static final Parcelable$Creator<CheckResourceIdsExistRequest> CREATOR;
    private final List<String> bHc;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new K();
    }
    
    CheckResourceIdsExistRequest(final int btV, final List<String> bHc) {
        this.btV = btV;
        this.bHc = bHc;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final List<String> LY() {
        return this.bHc;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        K.a(this, parcel);
    }
}
