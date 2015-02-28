package com.google.android.gm;

import com.google.common.collect.*;
import android.content.*;
import android.view.*;
import android.app.*;
import com.android.mail.providers.*;
import java.util.*;
import android.os.*;
import com.google.android.gm.provider.*;

public abstract class o implements Y
{
    protected final Z aWQ;
    private final List<X> aWR;
    protected final ActionBar aWS;
    protected String aWT;
    Gmail$Settings aWU;
    private List<String> aWV;
    private List<String> aWW;
    private int aWX;
    private boolean aWY;
    protected boolean aWZ;
    protected String mAccount;
    protected final Context mContext;
    
    public o(final Z awq) {
        this.aWY = false;
        this.aWZ = true;
        this.aWQ = awq;
        this.aWR = new ArrayList<X>();
        this.mContext = this.aWQ.getContext();
        this.aWS = this.aWQ.getActionBar();
    }
    
    @Override
    public final void Cs() {
        new p(this).execute((Object[])new Void[0]);
    }
    
    @Override
    public final boolean Ct() {
        this.aWS.setSubtitle((CharSequence)this.mAccount);
        this.aWZ = true;
        this.bO(false);
        this.aWQ.invalidateOptionsMenu();
        return false;
    }
    
    @Override
    public final ArrayList<String> Cu() {
        return Lists.f((Iterable<? extends String>)this.aWV);
    }
    
    @Override
    public final ArrayList<String> Cv() {
        return Lists.f((Iterable<? extends String>)this.aWW);
    }
    
    @Override
    public final int Cw() {
        return this.aWX;
    }
    
    protected abstract void Cx();
    
    @Override
    public final void a(final X x) {
        this.aWR.add(x);
    }
    
    @Override
    public final void b(final X x) {
        this.aWR.remove(x);
    }
    
    protected final void bO(final boolean homeButtonEnabled) {
        this.aWY = homeButtonEnabled;
        this.aWQ.getActionBar().setDisplayHomeAsUpEnabled(homeButtonEnabled);
        this.aWQ.getActionBar().setHomeButtonEnabled(homeButtonEnabled);
    }
    
    @Override
    public final void du(final String s) {
        final Intent intent = new Intent();
        intent.putExtra("label", s);
        this.aWQ.setResult(-1, intent);
        this.dv(s);
    }
    
    protected abstract void dv(final String p0);
    
    @Override
    public final boolean g(final Menu menu) {
        this.aWQ.getMenuInflater().inflate(2131755021, menu);
        return true;
    }
    
    @Override
    public final void i(final ArrayList<String> awv) {
        this.aWV = awv;
    }
    
    @Override
    public final void j(final ArrayList<String> aww) {
        this.aWW = aww;
    }
    
    @Override
    public final boolean l(final MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 16908332: {
                if (this.aWY) {
                    this.aWQ.onBackPressed();
                    return true;
                }
                break;
            }
        }
        return m.a(menuItem, (Activity)this.aWQ, null, this.aWQ);
    }
    
    @Override
    public final void notifyChanged() {
        final Iterator<X> iterator = Lists.f((Iterable<? extends X>)this.aWR).iterator();
        while (iterator.hasNext()) {
            iterator.next().onChanged();
        }
    }
    
    @Override
    public final void p(final Bundle bundle) {
        bundle.putBoolean("label-list-visible", this.aWZ);
    }
    
    @Override
    public void q(final Bundle bundle) {
        final Intent intent = this.aWQ.getIntent();
        this.mAccount = intent.getStringExtra("account_key");
        this.aWT = intent.getStringExtra("label");
        this.mAccount = new a(this.aWQ).dq(this.mAccount);
        if (this.mAccount == null) {
            this.aWQ.finish();
            return;
        }
        this.aWU = Gmail.P(this.mContext, this.mAccount);
        this.aWV = this.aWU.EA();
        this.aWW = this.aWU.EB();
        this.aWX = (int)this.aWU.Ey();
        this.aWS.setSubtitle((CharSequence)this.mAccount);
        this.bO(false);
    }
}
