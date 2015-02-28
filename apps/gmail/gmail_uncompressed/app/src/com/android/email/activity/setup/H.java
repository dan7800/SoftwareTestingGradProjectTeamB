package com.android.email.activity.setup;

import com.android.mail.ui.*;
import com.android.emailcommon.provider.*;
import com.android.email.service.*;
import com.android.mail.utils.*;
import java.io.*;
import com.android.mail.i.*;
import android.accounts.*;
import android.os.*;
import android.app.*;
import android.content.*;

final class h extends cp<Boolean>
{
    final /* synthetic */ Account Ms;
    final /* synthetic */ boolean Mu;
    final /* synthetic */ boolean Mv;
    final /* synthetic */ boolean Mw;
    final /* synthetic */ boolean Mx;
    final /* synthetic */ g My;
    
    h(final g my, final Context context, final Account ms, final boolean mu, final boolean mv, final boolean mw, final boolean mx) {
        this.My = my;
        this.Ms = ms;
        this.Mu = mu;
        this.Mv = mv;
        this.Mw = mw;
        this.Mx = mx;
        super(context);
    }
    
    private Boolean hr() {
        final Account ms = this.Ms;
        ms.dM |= 0x10;
        N.e(this.My.Mr.Mq, this.Ms);
        final AccountManagerFuture<Bundle> a = n.a(this.My.Mr.Mq, this.Ms, this.Mu, this.Mv, this.Mw);
        while (true) {
            try {
                a.getResult();
                final int n = 1;
                if (n == 0) {
                    return false;
                }
            }
            catch (OperationCanceledException ex3) {
                E.c(E.TAG, "addAccount was canceled", new Object[0]);
                final int n = 0;
                continue;
            }
            catch (IOException ex) {
                E.c(E.TAG, "addAccount failed: " + ex, new Object[0]);
                final int n = 0;
                continue;
            }
            catch (AuthenticatorException ex2) {
                E.c(E.TAG, "addAccount failed: " + ex2, new Object[0]);
                final int n = 0;
                continue;
            }
            break;
        }
        new a(this.My.Mr.Mq, this.Ms.lw()).aV(this.Mx);
        final Account ms2 = this.Ms;
        ms2.dM &= 0xFFFFFFEF;
        N.e(this.My.Mr.Mq, this.Ms);
        return true;
    }
}
