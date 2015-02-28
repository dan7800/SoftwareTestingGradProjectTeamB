package android.support.v7.app;

import android.support.v7.internal.a.*;
import android.content.*;
import android.util.*;
import android.support.v7.widget.*;
import android.support.v7.c.*;
import android.support.v7.internal.view.*;
import android.os.*;
import android.support.v7.a.*;
import android.content.res.*;
import android.view.*;

abstract class h
{
    final g nX;
    private a nY;
    private MenuInflater nZ;
    boolean oa;
    boolean ob;
    boolean oc;
    boolean od;
    final i oe;
    private i of;
    private boolean og;
    
    h(final g nx) {
        this.oe = new android.support.v7.app.i(this);
        this.nX = nx;
        this.of = this.oe;
    }
    
    abstract void D();
    
    abstract View a(final String p0, final Context p1, final AttributeSet p2);
    
    protected final void a(final a ny) {
        this.nY = ny;
    }
    
    final void a(final i of) {
        if (of == null) {
            throw new IllegalArgumentException("callback can not be null");
        }
        this.of = of;
    }
    
    abstract void a(final Toolbar p0);
    
    abstract void addContentView(final View p0, final ViewGroup$LayoutParams p1);
    
    abstract android.support.v7.c.a b(final b p0);
    
    abstract android.support.v7.c.a c(final b p0);
    
    final a cF() {
        if (this.oa && this.nY == null) {
            this.nY = this.cK();
        }
        return this.nY;
    }
    
    abstract a cK();
    
    final a cL() {
        return this.nY;
    }
    
    abstract boolean cM();
    
    abstract int cN();
    
    protected final Context cO() {
        final a cf = this.cF();
        Object o = null;
        if (cf != null) {
            o = cf.getThemedContext();
        }
        if (o == null) {
            o = this.nX;
        }
        return (Context)o;
    }
    
    final i cP() {
        return this.of;
    }
    
    boolean d(final KeyEvent keyEvent) {
        return false;
    }
    
    final void destroy() {
        this.og = true;
    }
    
    abstract boolean e(final KeyEvent p0);
    
    final MenuInflater getMenuInflater() {
        if (this.nZ == null) {
            this.nZ = new e(this.cO());
        }
        return this.nZ;
    }
    
    final boolean isDestroyed() {
        return this.og;
    }
    
    abstract void k(final CharSequence p0);
    
    abstract void onConfigurationChanged(final Configuration p0);
    
    void onCreate(final Bundle bundle) {
        final TypedArray obtainStyledAttributes = this.nX.obtainStyledAttributes(l.tg);
        if (!obtainStyledAttributes.hasValue(l.ti)) {
            obtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (obtainStyledAttributes.getBoolean(l.ti, false)) {
            this.oa = true;
        }
        if (obtainStyledAttributes.getBoolean(l.tj, false)) {
            this.ob = true;
        }
        if (obtainStyledAttributes.getBoolean(l.tk, false)) {
            this.oc = true;
        }
        this.od = obtainStyledAttributes.getBoolean(l.th, false);
        obtainStyledAttributes.recycle();
    }
    
    abstract boolean onCreatePanelMenu(final int p0, final Menu p1);
    
    abstract View onCreatePanelView(final int p0);
    
    abstract boolean onMenuOpened(final int p0, final Menu p1);
    
    abstract void onPanelClosed(final int p0, final Menu p1);
    
    abstract void onPostResume();
    
    abstract boolean onPreparePanel(final int p0, final View p1, final Menu p2);
    
    abstract void onStop();
    
    abstract void setContentView(final int p0);
    
    abstract void setContentView(final View p0);
    
    abstract void setContentView(final View p0, final ViewGroup$LayoutParams p1);
}
