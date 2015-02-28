package com.google.android.gms.location;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class LocationStatus implements SafeParcelable
{
    public static final e CREATOR;
    private final int btV;
    long caA;
    int cay;
    int caz;
    
    static {
        CREATOR = new e();
    }
    
    LocationStatus(final int btV, final int cay, final int caz, final long caA) {
        this.btV = btV;
        this.cay = cay;
        this.caz = caz;
        this.caA = caA;
    }
    
    private static String eO(final int n) {
        switch (n) {
            default: {
                return "STATUS_UNKNOWN";
            }
            case 0: {
                return "STATUS_SUCCESSFUL";
            }
            case 2: {
                return "STATUS_TIMED_OUT_ON_SCAN";
            }
            case 3: {
                return "STATUS_NO_INFO_IN_DATABASE";
            }
            case 4: {
                return "STATUS_INVALID_SCAN";
            }
            case 5: {
                return "STATUS_UNABLE_TO_QUERY_DATABASE";
            }
            case 6: {
                return "STATUS_SCANS_DISABLED_IN_SETTINGS";
            }
            case 7: {
                return "STATUS_LOCATION_DISABLED_IN_SETTINGS";
            }
            case 8: {
                return "STATUS_IN_PROGRESS";
            }
        }
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o instanceof LocationStatus) {
            final LocationStatus locationStatus = (LocationStatus)o;
            if (this.cay == locationStatus.cay && this.caz == locationStatus.caz && this.caA == locationStatus.caA) {
                return true;
            }
        }
        return false;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.cay, this.caz, this.caA });
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("LocationStatus[cell status: ").append(eO(this.cay));
        sb.append(", wifi status: ").append(eO(this.caz));
        sb.append(", elapsed realtime ns: ").append(this.caA);
        sb.append(']');
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        e.a(this, parcel);
    }
}
