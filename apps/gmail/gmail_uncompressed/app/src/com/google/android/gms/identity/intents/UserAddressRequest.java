package com.google.android.gms.identity.intents;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import com.google.android.gms.identity.intents.model.*;
import android.os.*;

public final class UserAddressRequest implements SafeParcelable
{
    public static final Parcelable$Creator<UserAddressRequest> CREATOR;
    List<CountrySpecification> bQZ;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    UserAddressRequest() {
        this.btV = 1;
    }
    
    UserAddressRequest(final int btV, final List<CountrySpecification> bqz) {
        this.btV = btV;
        this.bQZ = bqz;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel);
    }
}
