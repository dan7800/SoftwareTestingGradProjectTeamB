package com.android.email.provider;

import android.database.*;
import android.app.*;
import android.net.*;
import com.android.mail.providers.*;
import com.android.emailcommon.provider.*;
import android.os.*;
import com.android.mail.utils.*;
import android.content.*;

final class x extends ContentObserver
{
    final /* synthetic */ w TC;
    private final Context mContext;
    
    public x(final w tc, final Context mContext, final Handler handler) {
        this.TC = tc;
        super(handler);
        this.mContext = mContext;
    }
    
    public final void onChange(final boolean b) {
        if ((0x2000 & Account.k(this.mContext, this.TC.LN).dM) != 0x0 && this.TC.Ty != null) {
            this.mContext.getContentResolver().unregisterContentObserver((ContentObserver)this.TC.Ty);
            this.TC.Ty = null;
            if (this.TC.TB != null) {
                this.TC.TB.dismiss();
                this.TC.TB = null;
            }
            this.TC.kp();
        }
    }
}
