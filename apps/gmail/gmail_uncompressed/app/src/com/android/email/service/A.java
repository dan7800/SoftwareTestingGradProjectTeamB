package com.android.email.service;

import com.android.emailcommon.service.*;
import com.android.emailcommon.b.*;
import java.io.*;
import com.android.email.*;
import com.android.emailcommon.*;
import android.app.*;
import android.content.*;
import android.os.*;

final class a extends q
{
    final /* synthetic */ AccountService TP;
    
    a(final AccountService tp) {
        this.TP = tp;
    }
    
    public final String getDeviceId() {
        try {
            g.b(new b(this));
            return com.android.emailcommon.a.T(this.TP.mContext);
        }
        catch (IOException ex) {
            return null;
        }
    }
    
    public final int j(final long n) {
        return u.v(this.TP.mContext).j(n);
    }
    
    public final Bundle ku() {
        final Bundle bundle = new Bundle();
        bundle.putBoolean("com.android.email.EXCHANGE_CONFIGURATION_USE_ALTERNATE_STRINGS", VendorPolicyLoader.W(this.TP.mContext).kN());
        return bundle;
    }
}
