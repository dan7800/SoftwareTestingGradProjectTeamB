package com.android.email.service;

import android.app.*;
import java.util.concurrent.*;
import com.android.mail.utils.*;
import android.content.*;
import com.android.emailcommon.service.*;
import java.util.*;
import com.android.emailcommon.b.*;
import com.android.email.*;
import com.android.emailcommon.provider.*;
import android.database.*;
import java.io.*;
import android.os.*;

final class g
{
    final long LN;
    final long Uk;
    final long Ul;
    boolean Um;
    int Un;
    int Uo;
    long Up;
    long Uq;
    long Ur;
    final int do;
    long ky;
    final long mMessageId;
    
    private g(final Context context, final EmailContent$Attachment emailContent$Attachment) {
        this.Um = false;
        this.Ul = emailContent$Attachment.Ln;
        final com.android.emailcommon.provider.g t = com.android.emailcommon.provider.g.t(context, emailContent$Attachment.Yq);
        if (t != null) {
            this.LN = t.Lq;
            this.mMessageId = t.Ln;
        }
        else {
            this.mMessageId = -1L;
            this.LN = -1L;
        }
        this.do = b(emailContent$Attachment);
        this.Uk = SystemClock.elapsedRealtime();
    }
    
    private g(final g g, final long uk) {
        this.Um = false;
        this.do = g.do;
        this.Ul = g.Ul;
        this.mMessageId = g.mMessageId;
        this.LN = g.LN;
        this.Uk = uk;
        this.Um = g.Um;
        this.Un = g.Un;
        this.Uo = g.Uo;
        this.Up = g.Up;
        this.ky = g.ky;
        this.Uq = g.Uq;
        this.Ur = g.Ur;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return o instanceof g && ((g)o).Ul == this.Ul;
    }
    
    @Override
    public final int hashCode() {
        return (int)this.Ul;
    }
}
