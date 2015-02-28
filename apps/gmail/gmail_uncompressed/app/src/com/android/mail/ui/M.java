package com.android.mail.ui;

import com.android.mail.*;
import android.content.*;
import com.android.mail.utils.*;

final class m implements Runnable
{
    final /* synthetic */ a aEa;
    private boolean aEi;
    
    m(final a aEa) {
        this.aEa = aEa;
        this.aEi = false;
    }
    
    @Override
    public final void run() {
        final Intent intent = new Intent(this.aEa.mContext, (Class)MailLogService.class);
        final boolean op = MailLogService.op();
        if (this.aEi != op) {
            if (op) {
                E.f(a.mW, "Starting MailLogService", new Object[0]);
                this.aEa.mContext.startService(intent);
            }
            else {
                E.f(a.mW, "Stopping MailLogService", new Object[0]);
                this.aEa.mContext.stopService(intent);
            }
            this.aEi = op;
        }
        this.aEa.mHandler.postDelayed((Runnable)this, 300000L);
    }
}
