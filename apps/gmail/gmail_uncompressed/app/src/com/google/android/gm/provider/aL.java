package com.google.android.gm.provider;

import android.content.*;
import com.android.mail.utils.*;

final class al implements Runnable
{
    final /* synthetic */ Context PG;
    final /* synthetic */ MailEngine bjA;
    
    al(final MailEngine bjA, final Context pg) {
        this.bjA = bjA;
        this.PG = pg;
    }
    
    @Override
    public final void run() {
        for (final String s : this.PG.fileList()) {
            if (s.startsWith("gmail")) {
                E.c(MailEngine.TAG, "Cleaning up old temp file (do we have a leak?): %s", s);
                this.PG.deleteFile(s);
            }
        }
    }
}
