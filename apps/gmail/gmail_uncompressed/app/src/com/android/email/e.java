package com.android.email;

import android.support.v4.app.*;
import android.app.*;
import android.provider.*;
import com.android.email.provider.*;
import android.text.*;
import com.android.mail.providers.*;
import com.android.mail.i.*;
import android.net.*;
import android.database.*;
import android.content.*;
import java.util.*;
import android.os.*;
import com.android.mail.utils.*;
import com.android.mail.g.*;
import com.android.email.service.*;
import com.android.email.activity.setup.*;
import com.android.emailcommon.provider.*;

final class e implements Runnable
{
    final /* synthetic */ d LM;
    
    e(final d lm) {
        this.LM = lm;
    }
    
    @Override
    public final void run() {
        final ContentResolver contentResolver = this.LM.mContext.getContentResolver();
        this.LM.e(1152921504606846976L);
        if (this.LM.LH == null) {
            E.d(d.mW, "Observing account changes for notifications", new Object[0]);
            this.LM.LH = new h(d.LD, this.LM.mContext);
            contentResolver.registerContentObserver(Account.Xx, true, this.LM.LH);
        }
    }
}
