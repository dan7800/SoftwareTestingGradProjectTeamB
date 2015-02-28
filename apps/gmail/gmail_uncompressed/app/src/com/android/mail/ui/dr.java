package com.android.mail.ui;

import android.accounts.*;
import android.text.*;
import android.os.*;
import com.android.mail.utils.*;
import android.app.*;
import android.content.*;
import android.content.res.*;

final class dr implements DialogInterface$OnClickListener
{
    final /* synthetic */ dp aNN;
    final /* synthetic */ String aNO;
    final /* synthetic */ Account aNP;
    
    dr(final dp ann, final String ano, final Account anp) {
        this.aNN = ann;
        this.aNO = ano;
        this.aNP = anp;
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        ContentResolver.setMasterSyncAutomatically(true);
        String s;
        if (TextUtils.isEmpty((CharSequence)this.aNO)) {
            s = dp.aNL;
        }
        else {
            s = this.aNO;
        }
        if (!TextUtils.isEmpty((CharSequence)s)) {
            ContentResolver.setSyncAutomatically(this.aNP, s, true);
            if (this.aNN.aNM != null) {
                this.aNN.aNM.An();
            }
        }
    }
}
