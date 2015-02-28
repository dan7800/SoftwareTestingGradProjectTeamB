package android.support.v7.internal.a;

import java.util.*;
import android.support.v7.app.*;
import android.support.v7.widget.*;
import android.support.v7.c.*;
import android.support.v7.internal.view.menu.*;
import android.view.*;
import android.widget.*;
import android.support.v7.internal.widget.*;
import android.support.v4.view.*;
import android.graphics.drawable.*;
import android.content.*;
import android.content.res.*;

public final class b extends a
{
    private i of;
    private Toolbar uo;
    private v up;
    private boolean uq;
    private boolean ur;
    private boolean us;
    private ArrayList<c> ut;
    private Window uu;
    private g uv;
    private final Runnable uw;
    private final aa ux;
    
    public b(final Toolbar uo, final CharSequence charSequence, final Window uu, final i i) {
        this.ut = new ArrayList<c>();
        this.uw = new android.support.v7.internal.a.c(this);
        this.ux = new d(this);
        this.uo = uo;
        this.up = new android.support.v7.internal.widget.aa(uo, false);
        this.of = new h(this, i);
        this.up.a(this.of);
        uo.a(this.ux);
        this.up.j(charSequence);
        this.uu = uu;
    }
    
    private Menu getMenu() {
        if (!this.ur) {
            this.uo.a(new e(this, (byte)0), new f(this, (byte)0));
            this.ur = true;
        }
        return this.uo.getMenu();
    }
    
    @Override
    public final android.support.v7.c.a a(final android.support.v7.c.b b) {
        return this.of.a(b);
    }
    
    @Override
    public final void a(final c c) {
        this.ut.add(c);
    }
    
    public final void a(final g uv) {
        final Menu menu = this.getMenu();
        if (menu instanceof android.support.v7.internal.view.menu.i) {
            final android.support.v7.internal.view.menu.i i = (android.support.v7.internal.view.menu.i)menu;
            if (this.uv != null) {
                this.uv.a((y)null);
                i.b(this.uv);
            }
            if ((this.uv = uv) != null) {
                uv.a(new android.support.v7.internal.a.g(this, (byte)0));
                i.a(uv);
            }
        }
    }
    
    @Override
    public final void a(final View customView, final android.support.v7.app.b layoutParams) {
        customView.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        this.up.setCustomView(customView);
    }
    
    @Override
    public final void a(final SpinnerAdapter spinnerAdapter, final android.support.v7.app.d d) {
        this.up.a(spinnerAdapter, new android.support.v7.internal.a.a(d));
    }
    
    @Override
    public final void cA() {
        this.setDisplayOptions(0, 2);
    }
    
    @Override
    public final void cB() {
        this.setDisplayOptions(0, 8);
    }
    
    @Override
    public final void cC() {
        this.setDisplayOptions(16, 16);
    }
    
    @Override
    public final void cD() {
    }
    
    @Override
    public final boolean cE() {
        this.uo.removeCallbacks(this.uw);
        ad.a((View)this.uo, this.uw);
        return true;
    }
    
    public final i cZ() {
        return this.of;
    }
    
    @Override
    public final boolean collapseActionView() {
        if (this.uo.hasExpandedActionView()) {
            this.uo.collapseActionView();
            return true;
        }
        return false;
    }
    
    @Override
    public final void cx() {
        this.up.setIcon(17170445);
    }
    
    @Override
    public final void cy() {
        this.up.setIcon(null);
    }
    
    @Override
    public final void cz() {
        this.setDisplayOptions(0, 1);
    }
    
    final void da() {
        final Menu menu = this.getMenu();
        Label_0075: {
            if (!(menu instanceof android.support.v7.internal.view.menu.i)) {
                break Label_0075;
            }
            android.support.v7.internal.view.menu.i i = (android.support.v7.internal.view.menu.i)menu;
            while (true) {
                if (i != null) {
                    i.dO();
                }
                try {
                    menu.clear();
                    if (!this.of.onCreatePanelMenu(0, menu) || !this.of.onPreparePanel(0, null, menu)) {
                        menu.clear();
                    }
                    return;
                    i = null;
                    continue;
                }
                finally {
                    if (i != null) {
                        i.dP();
                    }
                }
                break;
            }
        }
    }
    
    @Override
    public final int getDisplayOptions() {
        return this.up.getDisplayOptions();
    }
    
    @Override
    public final int getHeight() {
        return this.uo.getHeight();
    }
    
    @Override
    public final int getNavigationMode() {
        return 0;
    }
    
    @Override
    public final int getSelectedNavigationIndex() {
        return -1;
    }
    
    @Override
    public final Context getThemedContext() {
        return this.uo.getContext();
    }
    
    @Override
    public final CharSequence getTitle() {
        return this.uo.getTitle();
    }
    
    @Override
    public final void hide() {
        this.uo.setVisibility(8);
    }
    
    @Override
    public final void j(final CharSequence charSequence) {
        this.up.j(charSequence);
    }
    
    @Override
    public final void j(final boolean b) {
    }
    
    @Override
    public final void k(final boolean b) {
    }
    
    @Override
    public final void l(final boolean us) {
        if (us != this.us) {
            this.us = us;
            for (int size = this.ut.size(), i = 0; i < size; ++i) {
                this.ut.get(i).onMenuVisibilityChanged(us);
            }
        }
    }
    
    @Override
    public final void onConfigurationChanged(final Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }
    
    @Override
    public final void setDisplayHomeAsUpEnabled(final boolean b) {
        int n;
        if (b) {
            n = 4;
        }
        else {
            n = 0;
        }
        this.setDisplayOptions(n, 4);
    }
    
    @Override
    public final void setDisplayOptions(final int n, final int n2) {
        this.up.setDisplayOptions((n & n2) | (this.up.getDisplayOptions() & ~n2));
    }
    
    @Override
    public final void setHomeActionContentDescription(final int navigationContentDescription) {
        this.up.setNavigationContentDescription(navigationContentDescription);
    }
    
    @Override
    public final void setHomeAsUpIndicator(final int navigationIcon) {
        this.uo.setNavigationIcon(navigationIcon);
    }
    
    @Override
    public final void setHomeAsUpIndicator(final Drawable navigationIcon) {
        this.uo.setNavigationIcon(navigationIcon);
    }
    
    @Override
    public final void setLogo(final Drawable logo) {
        this.up.setLogo(logo);
    }
    
    @Override
    public final void setNavigationMode(final int navigationMode) {
        if (navigationMode == 2) {
            throw new IllegalArgumentException("Tabs not supported in this configuration");
        }
        this.up.setNavigationMode(navigationMode);
    }
    
    @Override
    public final void setSelectedNavigationItem(final int n) {
        switch (this.up.getNavigationMode()) {
            default: {
                throw new IllegalStateException("setSelectedNavigationIndex not valid for current navigation mode");
            }
            case 1: {
                this.up.am(n);
            }
        }
    }
    
    @Override
    public final void setSubtitle(final CharSequence subtitle) {
        this.up.setSubtitle(subtitle);
    }
    
    @Override
    public final void setTitle(final int n) {
        final v up = this.up;
        CharSequence text;
        if (n != 0) {
            text = this.up.getContext().getText(n);
        }
        else {
            text = null;
        }
        up.setTitle(text);
    }
    
    @Override
    public final void setTitle(final CharSequence title) {
        this.up.setTitle(title);
    }
    
    @Override
    public final void show() {
        this.uo.setVisibility(0);
    }
}
