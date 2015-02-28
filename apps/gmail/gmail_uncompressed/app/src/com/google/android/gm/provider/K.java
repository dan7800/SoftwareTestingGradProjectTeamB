package com.google.android.gm.provider;

import java.util.*;
import com.google.android.gm.provider.uiprovider.*;
import android.database.*;
import com.android.mail.utils.*;
import com.google.common.collect.*;
import android.content.*;

public final class k
{
    private static final String[] bcX;
    private static final String mW;
    private final long aPP;
    private final MailEngine bbE;
    private final Map<Long, GmailAttachment> bcY;
    private final Loader<Cursor> bcZ;
    private final r bda;
    private final g bdb;
    private m bdc;
    private boolean cF;
    private final String mAccount;
    
    static {
        mW = D.AU();
        bcX = new String[] { "messages_messageId", "messages_partId", "downloadId", "mimeType", "saveToSd", "filename", "status", "desiredRendition", "originExtras" };
    }
    
    public k(final Context context, final String mAccount, final long app, final MailEngine bbE) {
        E.c(k.mW, "ASL constructor for conversation %d", app);
        this.mAccount = mAccount;
        this.aPP = app;
        this.bcY = (Map<Long, GmailAttachment>)Maps.aan();
        (this.bcZ = (Loader<Cursor>)new CursorLoader(context, Gmail.g(this.mAccount, this.aPP), k.bcX, (String)null, (String[])null, (String)null)).registerListener(this.bcZ.getId(), (Loader$OnLoadCompleteListener)new l(this, (byte)0));
        (this.bda = new r(this, context)).registerListener(this.bcZ.getId(), (Loader$OnLoadCompleteListener)new o(this, (byte)0));
        this.bbE = bbE;
        this.bdb = bbE.FX();
        this.bdc = null;
        this.cF = false;
    }
    
    public final void a(final m bdc) {
        this.bdc = bdc;
        if (this.cF) {
            return;
        }
        E.c(k.mW, "ASL start for conversation %d", this.aPP);
        this.bcZ.startLoading();
        this.cF = true;
    }
    
    public final void stop() {
        if (!this.cF) {
            return;
        }
        E.c(k.mW, "ASL stop for conversation %d", this.aPP);
        this.cF = false;
        this.bcZ.stopLoading();
        this.bcZ.reset();
        this.bda.stopLoading();
        this.bda.reset();
        this.bdc = null;
    }
}
