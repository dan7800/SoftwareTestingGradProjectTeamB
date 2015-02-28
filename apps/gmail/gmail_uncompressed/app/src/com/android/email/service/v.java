package com.android.email.service;

import android.content.*;
import com.android.email.*;
import com.android.email.provider.*;
import com.android.emailcommon.provider.*;
import com.android.emailcommon.*;
import com.android.mail.utils.*;
import com.android.emailcommon.mail.*;

final class v implements f
{
    final /* synthetic */ Account Ms;
    final /* synthetic */ Context PG;
    final /* synthetic */ Mailbox Tn;
    final /* synthetic */ long Vr;
    
    v(final Account ms, final Mailbox tn, final long vr, final Context pg) {
        this.Ms = ms;
        this.Tn = tn;
        this.Vr = vr;
        this.PG = pg;
    }
    
    @Override
    public final void b(final Message message) {
        try {
            final g g = new g();
            l.a(g, message, this.Ms.Ln, this.Tn.Ln);
            g.YS = g.YR;
            g.YR = this.Vr;
            g.Za = this.Tn.Vv;
            H.a(g, this.PG);
        }
        catch (MessagingException ex) {
            E.e(b.mW, ex, "Error while copying downloaded message.", new Object[0]);
        }
        catch (Exception ex2) {
            E.e(b.mW, ex2, "Error while storing downloaded message.", new Object[0]);
        }
    }
    
    @Override
    public final void be(final int n) {
    }
}
