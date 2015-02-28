package com.google.android.gm.ads;

import com.android.mail.utils.*;
import com.android.mail.ui.*;
import com.google.android.gm.provider.*;
import android.content.*;
import com.android.mail.providers.*;
import android.os.*;

final class r implements Runnable
{
    final /* synthetic */ AdToastBarOperation aZS;
    
    r(final AdToastBarOperation azs) {
        this.aZS = azs;
    }
    
    @Override
    public final void run() {
        E.d("AdToastBarOp", "Timeout; deleting ad", new Object[0]);
        final MailEngine w = MailEngine.W(this.aZS.mContext, this.aZS.Nc.lw());
        this.aZS.mContext = null;
        w.b(this.aZS.aZp, true);
    }
}
