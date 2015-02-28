package com.google.android.gms.location.places;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.maps.model.*;
import java.util.*;
import android.os.*;

public class UserAddedPlace implements SafeParcelable
{
    public static final Parcelable$Creator<UserAddedPlace> CREATOR;
    private final String bKo;
    private final LatLng bVf;
    private final List<PlaceType> bVo;
    final int btV;
    private final String bxx;
    private final String ceh;
    private final String mName;
    
    static {
        CREATOR = (Parcelable$Creator)new k();
    }
    
    UserAddedPlace(final int btV, final String mName, final LatLng bVf, final String bKo, final List<PlaceType> list, final String bxx, final String ceh) {
        this.btV = btV;
        this.mName = mName;
        this.bVf = bVf;
        this.bKo = bKo;
        this.bVo = new ArrayList<PlaceType>(list);
        this.bxx = bxx;
        this.ceh = ceh;
    }
    
    public final String RB() {
        return this.bxx;
    }
    
    public final List<PlaceType> Rw() {
        return this.bVo;
    }
    
    public final LatLng Rx() {
        return this.bVf;
    }
    
    public final String TA() {
        return this.ceh;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public final String getAddress() {
        return this.bKo;
    }
    
    public final String getName() {
        return this.mName;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        k.a(this, parcel, n);
    }
}
