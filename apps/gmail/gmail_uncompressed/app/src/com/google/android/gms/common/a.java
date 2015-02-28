package com.google.android.gms.common;

import android.app.*;
import android.content.*;
import com.google.android.gms.common.internal.*;

public final class a
{
    public static final a bBQ;
    private final PendingIntent bBR;
    private final int bBS;
    
    static {
        bBQ = new a(0, null);
    }
    
    public a(final int bbs, final PendingIntent bbr) {
        this.bBS = bbs;
        this.bBR = bbr;
    }
    
    public final boolean Kj() {
        return this.bBS != 0 && this.bBR != null;
    }
    
    public final boolean Kk() {
        return this.bBS == 0;
    }
    
    public final PendingIntent Kl() {
        return this.bBR;
    }
    
    public final void b(final Activity activity, final int n) {
        if (!this.Kj()) {
            return;
        }
        activity.startIntentSenderForResult(this.bBR.getIntentSender(), n, (Intent)null, 0, 0, 0);
    }
    
    public final int getErrorCode() {
        return this.bBS;
    }
    
    @Override
    public final String toString() {
        final F ad = E.ad(this);
        String string = null;
        switch (this.bBS) {
            default: {
                string = "unknown status code " + this.bBS;
                break;
            }
            case 0: {
                string = "SUCCESS";
                break;
            }
            case 1: {
                string = "SERVICE_MISSING";
                break;
            }
            case 2: {
                string = "SERVICE_VERSION_UPDATE_REQUIRED";
                break;
            }
            case 3: {
                string = "SERVICE_DISABLED";
                break;
            }
            case 4: {
                string = "SIGN_IN_REQUIRED";
                break;
            }
            case 5: {
                string = "INVALID_ACCOUNT";
                break;
            }
            case 6: {
                string = "RESOLUTION_REQUIRED";
                break;
            }
            case 7: {
                string = "NETWORK_ERROR";
                break;
            }
            case 8: {
                string = "INTERNAL_ERROR";
                break;
            }
            case 9: {
                string = "SERVICE_INVALID";
                break;
            }
            case 10: {
                string = "DEVELOPER_ERROR";
                break;
            }
            case 11: {
                string = "LICENSE_CHECK_FAILED";
                break;
            }
            case 13: {
                string = "CANCELED";
                break;
            }
            case 14: {
                string = "TIMEOUT";
                break;
            }
            case 15: {
                string = "INTERRUPTED";
                break;
            }
            case 16: {
                string = "API_UNAVAILABLE";
                break;
            }
            case 42: {
                string = "UPDATE_ANDROID_WEAR";
                break;
            }
        }
        return ad.e("statusCode", string).e("resolution", this.bBR).toString();
    }
}
