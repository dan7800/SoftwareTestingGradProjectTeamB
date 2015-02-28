package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.safeparcel.*;
import android.app.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public final class Status implements t, SafeParcelable
{
    public static final w CREATOR;
    public static final Status bCB;
    public static final Status bCC;
    public static final Status bCD;
    public static final Status bCE;
    public static final Status bCF;
    private final PendingIntent bBR;
    private final int bBS;
    private final String bCG;
    private final int btV;
    
    static {
        bCB = new Status(0);
        bCC = new Status(14);
        bCD = new Status(8);
        bCE = new Status(15);
        bCF = new Status(16);
        CREATOR = new w();
    }
    
    public Status(final int n) {
        this(n, (byte)0);
    }
    
    private Status(final int n, final byte b) {
        this(1, n, null, null);
    }
    
    Status(final int btV, final int bbs, final String bcg, final PendingIntent bbr) {
        this.btV = btV;
        this.bBS = bbs;
        this.bCG = bcg;
        this.bBR = bbr;
    }
    
    public Status(final int n, final String s, final PendingIntent pendingIntent) {
        this(1, n, s, pendingIntent);
    }
    
    @Override
    public final Status Jk() {
        return this;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    final PendingIntent KA() {
        return this.bBR;
    }
    
    public final String KB() {
        return this.bCG;
    }
    
    public final boolean Kk() {
        return this.bBS <= 0;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o instanceof Status) {
            final Status status = (Status)o;
            if (this.btV == status.btV && this.bBS == status.bBS && E.b(this.bCG, status.bCG) && E.b(this.bBR, status.bBR)) {
                return true;
            }
        }
        return false;
    }
    
    public final int getStatusCode() {
        return this.bBS;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.btV, this.bBS, this.bCG, this.bBR });
    }
    
    @Override
    public final String toString() {
        final F ad = E.ad(this);
        String s = null;
        if (this.bCG != null) {
            s = this.bCG;
        }
        else {
            final int bbs = this.bBS;
            switch (bbs) {
                default: {
                    s = "unknown status code: " + bbs;
                    break;
                }
                case -1: {
                    s = "SUCCESS_CACHE";
                    break;
                }
                case 0: {
                    s = "SUCCESS";
                    break;
                }
                case 1: {
                    s = "SERVICE_MISSING";
                    break;
                }
                case 2: {
                    s = "SERVICE_VERSION_UPDATE_REQUIRED";
                    break;
                }
                case 3: {
                    s = "SERVICE_DISABLED";
                    break;
                }
                case 4: {
                    s = "SIGN_IN_REQUIRED";
                    break;
                }
                case 5: {
                    s = "INVALID_ACCOUNT";
                    break;
                }
                case 6: {
                    s = "RESOLUTION_REQUIRED";
                    break;
                }
                case 7: {
                    s = "NETWORK_ERROR";
                    break;
                }
                case 8: {
                    s = "INTERNAL_ERROR";
                    break;
                }
                case 9: {
                    s = "SERVICE_INVALID";
                    break;
                }
                case 10: {
                    s = "DEVELOPER_ERROR";
                    break;
                }
                case 11: {
                    s = "LICENSE_CHECK_FAILED";
                    break;
                }
                case 13: {
                    s = "ERROR";
                    break;
                }
                case 14: {
                    s = "INTERRUPTED";
                    break;
                }
                case 15: {
                    s = "TIMEOUT";
                    break;
                }
                case 16: {
                    s = "CANCELED";
                    break;
                }
                case 3000: {
                    s = "AUTH_API_INVALID_CREDENTIALS";
                    break;
                }
                case 3001: {
                    s = "AUTH_API_ACCESS_FORBIDDEN";
                    break;
                }
                case 3002: {
                    s = "AUTH_API_CLIENT_ERROR";
                    break;
                }
                case 3003: {
                    s = "AUTH_API_SERVER_ERROR";
                    break;
                }
                case 3004: {
                    s = "AUTH_TOKEN_ERROR";
                    break;
                }
                case 3005: {
                    s = "AUTH_URL_RESOLUTION";
                    break;
                }
            }
        }
        return ad.e("statusCode", s).e("resolution", this.bBR).toString();
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        w.a(this, parcel, n);
    }
}
