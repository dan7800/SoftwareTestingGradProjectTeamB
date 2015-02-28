package com.google.android.gm.ads;

import com.android.mail.ui.*;
import com.google.android.gm.provider.*;
import android.content.*;
import com.android.mail.providers.*;
import android.os.*;

final class q implements Runnable
{
    final /* synthetic */ AdToastBarOperation aZS;
    
    q(final AdToastBarOperation azs) {
        this.aZS = azs;
    }
    
    @Override
    public final void run() {
        final MailEngine w = MailEngine.W(this.aZS.mContext, this.aZS.Nc.lw());
        this.aZS.mContext = null;
        this.aZS.aZp.bcs = 0;
        w.g(this.aZS.aZp);
    }
}
