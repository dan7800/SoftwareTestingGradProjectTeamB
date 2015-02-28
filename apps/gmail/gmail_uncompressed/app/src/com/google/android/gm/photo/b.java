package com.google.android.gm.photo;

import com.android.mail.providers.*;
import android.widget.*;
import com.android.mail.g.*;
import android.net.*;
import android.view.*;
import android.animation.*;
import com.android.mail.utils.*;
import com.google.android.gms.e.*;
import android.app.*;
import android.os.*;
import android.content.*;
import com.google.android.gms.common.api.*;

public final class b extends c implements View$OnClickListener, p, q, u<d>
{
    private static final String mW;
    private n bbm;
    private Attachment bbn;
    private Attachment bbo;
    private Intent bbp;
    private ImageView bbq;
    private boolean bbr;
    
    static {
        mW = D.AU();
    }
    
    public b(final com.android.mail.g.e e) {
        super(e);
    }
    
    private static Uri j(final Attachment attachment) {
        if (attachment != null) {
            final Uri ayP = attachment.ayP;
            if (ayP != null) {
                return ag.C(ayP);
            }
        }
        return Uri.EMPTY;
    }
    
    private void k(final View target, final boolean b) {
        int visibility;
        if (b) {
            visibility = 0;
        }
        else {
            visibility = 8;
        }
        if (target.getVisibility() == visibility) {
            return;
        }
        target.setVisibility(visibility);
        final Context context = this.nP().getContext();
        int n;
        if (b) {
            n = 2131034120;
        }
        else {
            n = 2131034121;
        }
        final Animator loadAnimator = AnimatorInflater.loadAnimator(context, n);
        loadAnimator.setTarget((Object)target);
        loadAnimator.start();
    }
    
    private void k(final Attachment bbo) {
        if (this.bbm != null) {
            this.bbn = null;
            final Uri j = j(bbo);
            if (!ag.D(j) && bbo.uq()) {
                E.c(b.mW, "Panorama loading info for %s", bbo);
                this.bbo = bbo;
                this.bbp = null;
                try {
                    a.cgj.a(this.bbm, j).a(this);
                    return;
                }
                catch (SecurityException ex) {
                    E.e(b.mW, ex, "Caught SecurityException when loading panorama information", new Object[0]);
                    return;
                }
            }
        }
        this.k((View)this.bbq, false);
    }
    
    public final void DE() {
        this.bbr = false;
    }
    
    public final void a(final int n, final int n2) {
        if (n == 9000) {
            this.bbr = false;
            if (n2 == -1 && !this.bbm.isConnecting() && !this.bbm.isConnected()) {
                this.bbm.connect();
            }
        }
    }
    
    public final void a(final com.google.android.gms.common.a a) {
        E.f(b.mW, "Panorama connection failed: %s", a);
        if (this.bbr) {
            return;
        }
        if (a.Kj()) {
            try {
                this.bbr = true;
                a.b((Activity)this.nP(), 9000);
                return;
            }
            catch (IntentSender$SendIntentException ex) {
                this.bbm.connect();
                return;
            }
        }
        final int errorCode = a.getErrorCode();
        final com.google.android.gm.photo.c c = new com.google.android.gm.photo.c();
        final Bundle arguments = new Bundle(1);
        arguments.putInt("dialog-error", errorCode);
        c.setArguments(arguments);
        c.show(this.tk().getFragmentManager(), "errordialog");
        this.bbr = true;
    }
    
    public final void bF(final int n) {
        super.bF(n);
        if (this.bbm != null) {
            final Attachment tj = this.tj();
            if (!this.bbm.isConnected()) {
                E.c(b.mW, "Panorama saving attachment %s", tj);
                this.bbn = tj;
                return;
            }
            this.k(tj);
        }
    }
    
    public final void bG(final int n) {
        super.bG(n);
        this.bF(n);
    }
    
    public final void dz(final int n) {
        E.c(b.mW, "Panorama connection suspended:", new Object[0]);
    }
    
    public final void onClick(final View view) {
        if (view.getId() != 2131558878) {
            return;
        }
        Label_0074: {
            if (this.bbp == null) {
                break Label_0074;
            }
            final Intent bbp = this.bbp;
            try {
                this.nP().getContext().startActivity(bbp);
                return;
            }
            catch (ActivityNotFoundException ex) {
                E.e(b.mW, (Throwable)ex, "Cannot view attachment: %s", bbp.getData());
                return;
            }
        }
        E.f(b.mW, "Viewer intent is null for attachment: %s", this.bbo);
    }
    
    @Override
    public final void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.bbm = new o(this.nP().getApplicationContext()).a(a.bBK).c((p)this).c((q)this).Ky();
        (this.bbq = (ImageView)this.findViewById(2131558878)).setOnClickListener((View$OnClickListener)this);
        this.bbr = (bundle != null && bundle.getBoolean("resolving-error", false));
    }
    
    public final void onResume() {
        super.onResume();
        this.k((View)this.bbq, false);
    }
    
    public final void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("resolving-error", this.bbr);
    }
    
    public final void onStart() {
        super.onStart();
        if (!this.bbr) {
            this.bbm.connect();
        }
    }
    
    public final void onStop() {
        this.bbm.disconnect();
        super.onStop();
    }
    
    public final void r(final Bundle bundle) {
        E.c(b.mW, "Panorama onConnected loading info for %s", this.bbn);
        this.k(this.bbn);
    }
}
