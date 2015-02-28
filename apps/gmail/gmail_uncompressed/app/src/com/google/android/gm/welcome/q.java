package com.google.android.gm.welcome;

import android.content.*;
import com.google.android.gm.*;
import com.google.android.gm.provider.*;
import com.android.mail.utils.*;
import android.accounts.*;

public final class q implements Runnable
{
    private final Context mContext;
    
    public q(final Context mContext) {
        this.mContext = mContext;
    }
    
    @Override
    public final void run() {
        for (final Account account : new a(this.mContext).v("mail")) {
            MailEngine.W(this.mContext, account.name).FZ().FH();
            E.c("WelcomeTour", "Updating server version of welcome tour for %s", account.name);
        }
    }
}
