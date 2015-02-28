package com.android.ex.photo;

import android.support.v7.app.*;
import android.content.*;
import android.os.*;
import android.view.*;

public class g extends android.support.v7.app.g implements t
{
    private com.android.ex.photo.k agG;
    private c agH;
    
    @Override
    public final Context getContext() {
        return (Context)this;
    }
    
    protected com.android.ex.photo.k nF() {
        return new com.android.ex.photo.k(this);
    }
    
    @Override
    public final com.android.ex.photo.k nG() {
        return this.agG;
    }
    
    @Override
    public final a nH() {
        if (this.agH == null) {
            this.agH = new c(this.cF());
        }
        return this.agH;
    }
    
    @Override
    protected void onActivityResult(final int n, final int n2, final Intent intent) {
        super.onActivityResult(n, n2, intent);
        this.agG.a(n, n2);
    }
    
    @Override
    public void onBackPressed() {
        if (!this.agG.cM()) {
            super.onBackPressed();
        }
    }
    
    @Override
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        (this.agG = this.nF()).onCreate(bundle);
    }
    
    public boolean onCreateOptionsMenu(final Menu menu) {
        this.agG.onCreateOptionsMenu(menu);
        return true;
    }
    
    @Override
    protected void onDestroy() {
        this.agG.onDestroy();
        super.onDestroy();
    }
    
    public boolean onOptionsItemSelected(final MenuItem menuItem) {
        return this.agG.onOptionsItemSelected(menuItem) || super.onOptionsItemSelected(menuItem);
    }
    
    @Override
    protected void onPause() {
        this.agG.onPause();
        super.onPause();
    }
    
    public boolean onPrepareOptionsMenu(final Menu menu) {
        this.agG.nQ();
        return true;
    }
    
    @Override
    protected void onResume() {
        super.onResume();
        this.agG.onResume();
    }
    
    public void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.agG.onSaveInstanceState(bundle);
    }
    
    @Override
    protected void onStart() {
        super.onStart();
        this.agG.onStart();
    }
    
    @Override
    protected void onStop() {
        this.agG.onStop();
        super.onStop();
    }
}
