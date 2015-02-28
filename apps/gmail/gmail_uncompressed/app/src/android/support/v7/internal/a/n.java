package android.support.v7.internal.a;

import android.support.v7.c.*;
import android.support.v7.internal.view.menu.*;
import java.lang.ref.*;
import java.util.*;
import android.content.*;
import android.support.v7.internal.view.*;
import android.os.*;
import android.support.v7.widget.*;
import android.view.animation.*;
import android.support.v4.view.*;
import android.support.v4.app.*;
import android.widget.*;
import android.support.v7.app.*;
import android.support.v7.internal.widget.*;
import android.graphics.drawable.*;
import android.util.*;
import android.view.*;
import android.content.res.*;

public final class n extends a implements j
{
    final /* synthetic */ android.support.v7.internal.a.j vc;
    private b vd;
    private i ve;
    private WeakReference<View> vf;
    
    public n(final android.support.v7.internal.a.j vc, final b vd) {
        this.vc = vc;
        this.vd = vd;
        (this.ve = new i(vc.getThemedContext()).dJ()).a(this);
    }
    
    @Override
    public final void a(final i i) {
        if (this.vd == null) {
            return;
        }
        this.invalidate();
        this.vc.uD.showOverflowMenu();
    }
    
    @Override
    public final boolean a(final i i, final MenuItem menuItem) {
        return this.vd != null && this.vd.a(this, menuItem);
    }
    
    public final boolean df() {
        this.ve.dO();
        try {
            return this.vd.a(this, (Menu)this.ve);
        }
        finally {
            this.ve.dP();
        }
    }
    
    @Override
    public final void finish() {
        if (this.vc.uK != this) {
            return;
        }
        if (!android.support.v7.internal.a.j.b(this.vc.uR, this.vc.uS)) {
            this.vc.uL = this;
            this.vc.uM = this.vd;
        }
        else {
            this.vd.c(this);
        }
        this.vd = null;
        this.vc.q(false);
        this.vc.uD.ew();
        this.vc.up.eL().sendAccessibilityEvent(32);
        this.vc.uB.setHideOnContentScrollEnabled(this.vc.uX);
        this.vc.uK = null;
    }
    
    @Override
    public final View getCustomView() {
        if (this.vf != null) {
            return this.vf.get();
        }
        return null;
    }
    
    @Override
    public final Menu getMenu() {
        return (Menu)this.ve;
    }
    
    @Override
    public final MenuInflater getMenuInflater() {
        return new e(this.vc.getThemedContext());
    }
    
    @Override
    public final CharSequence getSubtitle() {
        return this.vc.uD.getSubtitle();
    }
    
    @Override
    public final CharSequence getTitle() {
        return this.vc.uD.getTitle();
    }
    
    @Override
    public final void invalidate() {
        this.ve.dO();
        try {
            this.vd.b(this, (Menu)this.ve);
        }
        finally {
            this.ve.dP();
        }
    }
    
    @Override
    public final boolean isTitleOptional() {
        return this.vc.uD.isTitleOptional();
    }
    
    @Override
    public final void setCustomView(final View customView) {
        this.vc.uD.setCustomView(customView);
        this.vf = new WeakReference<View>(customView);
    }
    
    @Override
    public final void setSubtitle(final int n) {
        this.setSubtitle(this.vc.mContext.getResources().getString(n));
    }
    
    @Override
    public final void setSubtitle(final CharSequence subtitle) {
        this.vc.uD.setSubtitle(subtitle);
    }
    
    @Override
    public final void setTitle(final int n) {
        this.setTitle(this.vc.mContext.getResources().getString(n));
    }
    
    @Override
    public final void setTitle(final CharSequence title) {
        this.vc.uD.setTitle(title);
    }
    
    @Override
    public final void setTitleOptionalHint(final boolean titleOptionalHint) {
        super.setTitleOptionalHint(titleOptionalHint);
        this.vc.uD.B(titleOptionalHint);
    }
}
