package com.android.ex.photo.a;

import android.support.v4.view.*;
import android.support.v4.f.*;
import android.support.v4.app.*;
import android.view.*;
import android.os.*;

public abstract class b extends U
{
    private z aib;
    private Fragment aic;
    private g<String, Fragment> aid;
    private final p ck;
    
    public b(final p ck) {
        this.aib = null;
        this.aic = null;
        this.aid = new c(this);
        this.ck = ck;
    }
    
    protected String K(final int n, final int n2) {
        return "android:switcher:" + n + ":" + n2;
    }
    
    @Override
    public Object a(final View view, final int n) {
        if (this.aib == null) {
            this.aib = this.ck.H();
        }
        final String k = this.K(view.getId(), n);
        this.aid.remove(k);
        Fragment fragment = this.ck.b(k);
        if (fragment != null) {
            this.aib.c(fragment);
        }
        else {
            fragment = this.bH(n);
            if (fragment == null) {
                return null;
            }
            this.aib.a(view.getId(), fragment, this.K(view.getId(), n));
        }
        if (fragment != this.aic) {
            fragment.setMenuVisibility(false);
        }
        return fragment;
    }
    
    @Override
    public final void a(final Parcelable parcelable, final ClassLoader classLoader) {
    }
    
    @Override
    public void a(final View view, final int n, final Object o) {
        if (this.aib == null) {
            this.aib = this.ck.H();
        }
        final Fragment fragment = (Fragment)o;
        String s = fragment.getTag();
        if (s == null) {
            s = this.K(view.getId(), n);
        }
        this.aid.put(s, fragment);
        this.aib.b(fragment);
    }
    
    @Override
    public final void aX() {
        if (this.aib != null && !this.ck.isDestroyed()) {
            this.aib.commitAllowingStateLoss();
            this.aib = null;
            this.ck.executePendingTransactions();
        }
    }
    
    @Override
    public final Parcelable aY() {
        return null;
    }
    
    @Override
    public final boolean b(final View view, final Object o) {
        final View view2 = ((Fragment)o).getView();
        for (Object parent = view; parent instanceof View; parent = ((View)parent).getParent()) {
            if (parent == view2) {
                return true;
            }
        }
        return false;
    }
    
    public abstract Fragment bH(final int p0);
    
    @Override
    public final void e(final Object o) {
        final Fragment aic = (Fragment)o;
        if (aic != this.aic) {
            if (this.aic != null) {
                this.aic.setMenuVisibility(false);
            }
            if (aic != null) {
                aic.setMenuVisibility(true);
            }
            this.aic = aic;
        }
    }
}
