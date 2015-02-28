package com.google.android.gm;

import java.util.*;
import android.os.*;
import com.android.mail.utils.*;
import android.app.*;
import android.view.*;

public class LabelsActivity extends y implements N, W, Z
{
    private Y aYF;
    
    @Override
    public final String Cr() {
        return this.getString(2131297017);
    }
    
    @Override
    public final ArrayList<String> Cu() {
        return this.aYF.Cu();
    }
    
    @Override
    public final ArrayList<String> Cv() {
        return this.aYF.Cv();
    }
    
    @Override
    public final int Cw() {
        return this.aYF.Cw();
    }
    
    @Override
    public final void a(final X x) {
        this.aYF.a(x);
    }
    
    @Override
    public final void b(final X x) {
        this.aYF.b(x);
    }
    
    @Override
    public final void dx(final String s) {
        this.aYF.du(s);
    }
    
    @Override
    public final void i(final ArrayList<String> list) {
        this.aYF.i(list);
    }
    
    @Override
    public final void j(final K k) {
        this.aYF.k(k);
    }
    
    @Override
    public final void j(final ArrayList<String> list) {
        this.aYF.j(list);
    }
    
    @Override
    public final void notifyChanged() {
        this.aYF.notifyChanged();
    }
    
    public void onBackPressed() {
        this.aYF.Ct();
        super.onBackPressed();
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        o ayf;
        if (ag.b(super.getContext().getResources())) {
            ayf = new av(this);
        }
        else {
            ayf = new ad(this);
        }
        (this.aYF = ayf).q(bundle);
        final ActionBar actionBar = this.getActionBar();
        if (actionBar != null) {
            actionBar.setIcon(17170445);
            actionBar.setDisplayUseLogoEnabled(false);
        }
    }
    
    public boolean onCreateOptionsMenu(final Menu menu) {
        this.aYF.g(menu);
        return true;
    }
    
    public boolean onOptionsItemSelected(final MenuItem menuItem) {
        return this.aYF.l(menuItem) || super.onOptionsItemSelected(menuItem);
    }
    
    public void onPause() {
        super.onPause();
        this.aYF.Cs();
    }
    
    public boolean onPrepareOptionsMenu(final Menu menu) {
        final Y ayf = this.aYF;
        return true;
    }
    
    public void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.aYF.p(bundle);
    }
}
