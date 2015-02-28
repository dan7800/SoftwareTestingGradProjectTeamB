package com.google.android.gm;

import android.app.*;
import com.google.android.gm.preference.*;
import android.os.*;
import com.google.android.gm.persistence.*;

public final class av extends o
{
    public av(final Z z) {
        super(z);
    }
    
    @Override
    protected final void Cx() {
        final FragmentTransaction beginTransaction = this.aWQ.getFragmentManager().beginTransaction();
        beginTransaction.replace(2131558967, (Fragment)K.F(this.mAccount, this.aWT));
        beginTransaction.commitAllowingStateLoss();
    }
    
    @Override
    protected final void dv(final String s) {
        final FragmentTransaction beginTransaction = this.aWQ.getFragmentManager().beginTransaction();
        beginTransaction.setTransition(4099);
        beginTransaction.replace(2131558968, q.J(this.mAccount, s));
        beginTransaction.commitAllowingStateLoss();
    }
    
    @Override
    public final void k(final K k) {
        this.bO(true);
    }
    
    @Override
    public final void q(final Bundle bundle) {
        super.q(bundle);
        this.aWQ.setContentView(2130968770);
        if (bundle == null) {
            if (this.aWT == null) {
                this.aWT = b.I(this.mContext, this.mAccount);
            }
            this.Cx();
            this.dv(this.aWT);
        }
    }
}
