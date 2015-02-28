package com.google.android.gm;

import android.app.*;
import com.google.android.gm.preference.*;
import com.google.android.gm.provider.*;
import android.os.*;

public final class ad extends o
{
    private boolean aYH;
    
    public ad(final Z z) {
        super(z);
    }
    
    @Override
    protected final void Cx() {
        final FragmentTransaction beginTransaction = this.aWQ.getFragmentManager().beginTransaction();
        beginTransaction.replace(2131558843, (Fragment)K.b(this.mAccount, null, 1, 1));
        beginTransaction.commitAllowingStateLoss();
    }
    
    @Override
    protected final void dv(final String s) {
        final T v = com.google.android.gm.provider.Y.v(this.mContext, this.mAccount, s);
        if (v == null) {
            this.Cx();
            return;
        }
        final FragmentTransaction beginTransaction = this.aWQ.getFragmentManager().beginTransaction();
        if (!this.aYH) {
            beginTransaction.addToBackStack((String)null);
            beginTransaction.setTransition(4097);
        }
        beginTransaction.replace(2131558843, q.J(this.mAccount, s));
        beginTransaction.commitAllowingStateLoss();
        this.aWS.setTitle((CharSequence)v.getName());
        this.aWS.setSubtitle(2131297077);
        this.aWZ = false;
        this.bO(true);
        this.aWQ.invalidateOptionsMenu();
    }
    
    @Override
    public final void k(final K k) {
        if (k.CP()) {
            this.aWS.setTitle(2131296436);
            this.aWS.setSubtitle(2131297077);
        }
        else {
            this.aWS.setTitle(2131297076);
            this.aWS.setSubtitle((CharSequence)this.mAccount);
        }
        this.bO(true);
    }
    
    @Override
    public final void q(final Bundle bundle) {
        boolean b = true;
        super.q(bundle);
        this.aWQ.setContentView(2130968735);
        this.aYH = (this.aWT != null && b);
        if (bundle != null) {
            if (this.aWZ = bundle.getBoolean("label-list-visible", b)) {
                b = false;
            }
            this.bO(b);
            return;
        }
        if (this.aYH) {
            this.dv(this.aWT);
            return;
        }
        this.Cx();
    }
}
