package com.android.email.activity.setup;

import android.content.*;
import com.android.emailcommon.provider.*;
import com.android.mail.utils.*;

final class u implements Runnable
{
    final /* synthetic */ Loader MP;
    final /* synthetic */ t MQ;
    final /* synthetic */ Account Ms;
    
    u(final t mq, final Account ms, final Loader mp) {
        this.MQ = mq;
        this.Ms = ms;
        this.MP = mp;
    }
    
    @Override
    public final void run() {
        final AccountSecurity mo = this.MQ.MO;
        if (mo.hx()) {
            if (this.Ms == null || (this.Ms.XJ != 0L && this.Ms.PW == null)) {
                mo.finish();
                E.c("Email/AccountSecurity", "could not load account or policy in AccountSecurity", new Object[0]);
                return;
            }
            if (!mo.MG) {
                mo.MG = true;
                final s s = (s)this.MP;
                mo.a(this.Ms, s.ML, s.MM, s.MN);
            }
        }
    }
}
