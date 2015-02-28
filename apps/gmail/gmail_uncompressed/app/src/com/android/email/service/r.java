package com.android.email.service;

import android.content.*;
import java.util.*;
import com.android.email.*;
import com.android.email.provider.*;
import com.android.emailcommon.provider.*;
import com.android.emailcommon.*;
import com.android.mail.utils.*;
import com.android.emailcommon.mail.*;

final class r implements f
{
    final /* synthetic */ Account Ms;
    final /* synthetic */ Context PG;
    final /* synthetic */ Mailbox Tn;
    final /* synthetic */ HashMap Vo;
    final /* synthetic */ ArrayList Vp;
    
    r(final HashMap vo, final Context pg, final Account ms, final Mailbox tn, final ArrayList vp) {
        this.Vo = vo;
        this.PG = pg;
        this.Ms = ms;
        this.Tn = tn;
        this.Vp = vp;
    }
    
    @Override
    public final void b(final Message message) {
        while (true) {
            while (true) {
                Label_0208: {
                    while (true) {
                        w w;
                        try {
                            w = this.Vo.get(message.ln());
                            if (w == null) {
                                break Label_0208;
                            }
                            final int n = 1;
                            if (n == 0 && message.b(Flag.WP)) {
                                return;
                            }
                            if (n == 0) {
                                final g t = new g();
                                if (t == null) {
                                    break;
                                }
                                try {
                                    l.a(t, message, this.Ms.Ln, this.Tn.Ln);
                                    H.a(t, this.PG);
                                    if (!message.b(Flag.WQ) && this.Vp != null) {
                                        this.Vp.add(t.Ln);
                                        return;
                                    }
                                    break;
                                }
                                catch (MessagingException ex) {
                                    E.f(b.mW, "Error while copying downloaded message." + ex, new Object[0]);
                                    return;
                                }
                            }
                        }
                        catch (Exception ex2) {
                            E.f(b.mW, "Error while storing downloaded message." + ex2.toString(), new Object[0]);
                            return;
                        }
                        final g t = g.t(this.PG, w.Ln);
                        continue;
                    }
                }
                final int n = 0;
                continue;
            }
        }
    }
    
    @Override
    public final void be(final int n) {
    }
}
