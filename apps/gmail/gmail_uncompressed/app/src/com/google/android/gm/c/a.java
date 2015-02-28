package com.google.android.gm.c;

import android.os.*;
import com.google.android.gms.common.*;
import android.app.*;
import com.google.android.gms.g.*;
import android.content.*;
import com.android.mail.utils.*;

public final class a extends AsyncTask<Void, Void, Void>
{
    private static final String TAG;
    private GooglePlayServicesRepairableException bqM;
    private GooglePlayServicesNotAvailableException bqN;
    private final Activity pe;
    
    static {
        TAG = D.AU();
    }
    
    public a(final Activity pe) {
        this.pe = pe;
    }
    
    private Void ko() {
        try {
            com.google.android.gms.g.a.ai((Context)this.pe);
            return null;
        }
        catch (GooglePlayServicesRepairableException bqM) {
            E.e(a.TAG, bqM, "Repairable error in ConscryptMailActivityTask", new Object[0]);
            this.bqM = bqM;
            com.android.mail.a.a.oq().a("gms_core", "conscrypt_repairable", Integer.toString(bqM.JR()), 0L);
            return null;
        }
        catch (GooglePlayServicesNotAvailableException bqN) {
            E.e(a.TAG, bqN, "Unrecoverable error in ConscryptMailActivityTask", new Object[0]);
            this.bqN = bqN;
            com.android.mail.a.a.oq().a("gms_core", "conscrypt_gms_core_not_available", Integer.toString(bqN.errorCode), 0L);
            return null;
        }
    }
}
