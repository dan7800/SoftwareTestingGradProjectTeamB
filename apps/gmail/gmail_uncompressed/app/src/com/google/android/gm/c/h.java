package com.google.android.gm.c;

import android.os.*;
import com.google.android.gms.people.*;
import com.google.android.gms.drive.*;
import com.google.android.gms.common.api.*;
import android.app.*;
import com.android.mail.utils.*;
import android.content.*;

public abstract class h implements p, q
{
    private static final String mW;
    private n bbm;
    private boolean bbr;
    private final int bqX;
    private final String brj;
    private final String brk;
    private final Activity pe;
    
    static {
        mW = D.AU();
    }
    
    public h(final Activity pe, final Bundle bundle, final int bqX, final String brj, final String brk) {
        this.bbm = this.CA();
        this.bqX = bqX;
        this.brj = brj;
        this.brk = brk;
        boolean bbr = false;
        if (bundle != null) {
            final boolean boolean1 = bundle.getBoolean(this.brj, false);
            bbr = false;
            if (boolean1) {
                bbr = true;
            }
        }
        this.bbr = bbr;
        this.pe = pe;
    }
    
    public static n a(final Context context, final h h) {
        return new o(context.getApplicationContext()).a(com.google.android.gms.people.q.cgG, new t().US().UT()).c((p)h).c((q)h).Ky();
    }
    
    public static n a(final Context context, final h h, final String s) {
        return new o(context.getApplicationContext()).a(a.bBK).a(a.bGo).c((p)h).c((q)h).fP(s).Ky();
    }
    
    static void a(final Activity activity, final int n, final int n2) {
        final FragmentManager fragmentManager = activity.getFragmentManager();
        final com.google.android.gm.c.d d = (com.google.android.gm.c.d)fragmentManager.findFragmentByTag("error-dialog-tag");
        if (d != null) {
            d.dismiss();
        }
        com.google.android.gm.c.d.T(n, n2).show(fragmentManager, "error-dialog-tag");
    }
    
    public abstract n CA();
    
    public void CB() {
    }
    
    public void CC() {
    }
    
    public final void DE() {
        this.bbr = false;
    }
    
    public final n ID() {
        return this.bbm;
    }
    
    public final boolean U(final int n, final int n2) {
        final int bqX = this.bqX;
        boolean b = false;
        if (n == bqX) {
            this.bbr = false;
            if (n2 == -1 && this.bbm != null && !this.bbm.isConnecting() && !this.bbm.isConnected()) {
                this.bbm.connect();
                this.CB();
            }
            b = true;
        }
        return b;
    }
    
    @Override
    public void a(final com.google.android.gms.common.a a) {
        E.d(h.mW, "%s Client connection failure: %s", this.brk, a);
        if (!this.bbr) {
            if (a.Kj()) {
                try {
                    this.bbr = true;
                    a.b(this.pe, this.bqX);
                    return;
                }
                catch (IntentSender$SendIntentException ex) {
                    if (this.bbm != null) {
                        this.bbm.connect();
                        this.CB();
                    }
                    return;
                }
            }
            final int errorCode = a.getErrorCode();
            if (errorCode != 8 && errorCode != 7) {
                a(this.pe, errorCode, this.bqX);
                this.bbr = true;
            }
        }
    }
    
    public final void a(final n bbm) {
        this.bbm = bbm;
    }
    
    @Override
    public void dz(final int n) {
        E.d(h.mW, "%s Client connection suspended: %s", this.brk, n);
    }
    
    public final void onSaveInstanceState(final Bundle bundle) {
        bundle.putBoolean(this.brj, this.bbr);
    }
    
    public final void onStart() {
        if (!this.bbr && this.bbm != null) {
            this.bbm.connect();
            this.CB();
        }
    }
    
    public final void onStop() {
        if (this.bbm != null) {
            this.bbm.disconnect();
            this.CC();
        }
    }
    
    @Override
    public void r(final Bundle bundle) {
        E.d(h.mW, "%s Client connected:", this.brk);
    }
}
