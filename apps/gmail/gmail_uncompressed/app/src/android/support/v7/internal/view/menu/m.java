package android.support.v7.internal.view.menu;

import android.support.v4.b.a.*;
import android.graphics.drawable.*;
import android.support.v4.view.*;
import android.util.*;
import android.support.v7.internal.widget.*;
import android.os.*;
import android.widget.*;
import android.content.*;
import android.view.*;

public final class m implements b
{
    private static String xI;
    private static String xJ;
    private static String xK;
    private static String xL;
    private final int cH;
    private CharSequence cZ;
    private int dM;
    private Intent mIntent;
    private i ve;
    private final int wh;
    private final int wi;
    private final int wj;
    private CharSequence wk;
    private char wl;
    private char wm;
    private Drawable wn;
    private int wo;
    private MenuItem$OnMenuItemClickListener wp;
    private D xA;
    private Runnable xB;
    private int xC;
    private View xD;
    private n xE;
    private O xF;
    private boolean xG;
    private ContextMenu$ContextMenuInfo xH;
    
    m(final i ve, final int wh, final int ch, final int wi, final int wj, final CharSequence cz, final int xc) {
        this.wo = 0;
        this.dM = 16;
        this.xC = 0;
        this.xG = false;
        this.ve = ve;
        this.cH = ch;
        this.wh = wh;
        this.wi = wi;
        this.wj = wj;
        this.cZ = cz;
        this.xC = xc;
    }
    
    private b aa(final View xd) {
        this.xD = xd;
        this.xE = null;
        if (xd != null && xd.getId() == -1 && this.cH > 0) {
            xd.setId(this.cH);
        }
        this.ve.dR();
        return this;
    }
    
    @Override
    public final b a(final O xf) {
        this.xF = xf;
        return this;
    }
    
    @Override
    public final b a(final n xe) {
        if (this.xE != null) {
            this.xE.a((p)null);
        }
        this.xD = null;
        this.xE = xe;
        this.ve.t(true);
        if (this.xE != null) {
            this.xE.a(new android.support.v7.internal.view.menu.n(this));
        }
        return this;
    }
    
    final CharSequence a(final A a) {
        if (a != null && a.dw()) {
            return this.getTitleCondensed();
        }
        return this.getTitle();
    }
    
    final void a(final ContextMenu$ContextMenuInfo xh) {
        this.xH = xh;
    }
    
    @Override
    public final n ax() {
        return this.xE;
    }
    
    final void b(final D xa) {
        (this.xA = xa).setHeaderTitle(this.getTitle());
    }
    
    @Override
    public final boolean collapseActionView() {
        if ((0x8 & this.xC) != 0x0) {
            if (this.xD == null) {
                return true;
            }
            if (this.xF == null || this.xF.onMenuItemActionCollapse((MenuItem)this)) {
                return this.ve.g(this);
            }
        }
        return false;
    }
    
    public final boolean ed() {
        if ((this.wp == null || !this.wp.onMenuItemClick((MenuItem)this)) && !this.ve.b(this.ve.dZ(), (MenuItem)this)) {
            if (this.xB != null) {
                this.xB.run();
                return true;
            }
            if (this.mIntent != null) {
                try {
                    this.ve.getContext().startActivity(this.mIntent);
                    return true;
                }
                catch (ActivityNotFoundException ex) {
                    Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", (Throwable)ex);
                }
            }
            if (this.xE == null || !this.xE.onPerformDefaultAction()) {
                return false;
            }
        }
        return true;
    }
    
    final char ee() {
        if (this.ve.dL()) {
            return this.wm;
        }
        return this.wl;
    }
    
    final String ef() {
        final char ee = this.ee();
        if (ee == '\0') {
            return "";
        }
        final StringBuilder sb = new StringBuilder(m.xI);
        switch (ee) {
            default: {
                sb.append(ee);
                break;
            }
            case 10: {
                sb.append(m.xJ);
                break;
            }
            case 8: {
                sb.append(m.xK);
                break;
            }
            case 32: {
                sb.append(m.xL);
                break;
            }
        }
        return sb.toString();
    }
    
    final boolean eg() {
        return this.ve.dM() && this.ee() != '\0';
    }
    
    public final boolean eh() {
        return (0x4 & this.dM) != 0x0;
    }
    
    public final boolean ei() {
        return this.ve.ea();
    }
    
    public final boolean ej() {
        return (0x20 & this.dM) == 0x20;
    }
    
    public final boolean ek() {
        return (0x1 & this.xC) == 0x1;
    }
    
    public final boolean el() {
        return (0x2 & this.xC) == 0x2;
    }
    
    public final boolean em() {
        return (0x4 & this.xC) == 0x4;
    }
    
    public final boolean en() {
        final int n = 0x8 & this.xC;
        boolean b = false;
        if (n != 0) {
            if (this.xD == null && this.xE != null) {
                this.xD = this.xE.onCreateActionView((MenuItem)this);
            }
            final View xd = this.xD;
            b = false;
            if (xd != null) {
                b = true;
            }
        }
        return b;
    }
    
    @Override
    public final boolean expandActionView() {
        return this.en() && (this.xF == null || this.xF.onMenuItemActionExpand((MenuItem)this)) && this.ve.f(this);
    }
    
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }
    
    @Override
    public final View getActionView() {
        if (this.xD != null) {
            return this.xD;
        }
        if (this.xE != null) {
            return this.xD = this.xE.onCreateActionView((MenuItem)this);
        }
        return null;
    }
    
    public final char getAlphabeticShortcut() {
        return this.wm;
    }
    
    public final int getGroupId() {
        return this.wh;
    }
    
    public final Drawable getIcon() {
        if (this.wn != null) {
            return this.wn;
        }
        if (this.wo != 0) {
            final Drawable a = U.a(this.ve.getContext(), this.wo);
            this.wo = 0;
            return this.wn = a;
        }
        return null;
    }
    
    public final Intent getIntent() {
        return this.mIntent;
    }
    
    @ViewDebug$CapturedViewProperty
    public final int getItemId() {
        return this.cH;
    }
    
    public final ContextMenu$ContextMenuInfo getMenuInfo() {
        return this.xH;
    }
    
    public final char getNumericShortcut() {
        return this.wl;
    }
    
    public final int getOrder() {
        return this.wi;
    }
    
    public final int getOrdering() {
        return this.wj;
    }
    
    public final SubMenu getSubMenu() {
        return (SubMenu)this.xA;
    }
    
    @ViewDebug$CapturedViewProperty
    public final CharSequence getTitle() {
        return this.cZ;
    }
    
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence;
        if (this.wk != null) {
            charSequence = this.wk;
        }
        else {
            charSequence = this.cZ;
        }
        if (Build$VERSION.SDK_INT < 18 && charSequence != null && !(charSequence instanceof String)) {
            charSequence = charSequence.toString();
        }
        return charSequence;
    }
    
    public final boolean hasSubMenu() {
        return this.xA != null;
    }
    
    @Override
    public final boolean isActionViewExpanded() {
        return this.xG;
    }
    
    public final boolean isCheckable() {
        return (0x1 & this.dM) == 0x1;
    }
    
    public final boolean isChecked() {
        return (0x2 & this.dM) == 0x2;
    }
    
    public final boolean isEnabled() {
        return (0x10 & this.dM) != 0x0;
    }
    
    public final boolean isVisible() {
        if (this.xE != null && this.xE.overridesItemVisibility()) {
            if ((0x8 & this.dM) != 0x0 || !this.xE.isVisible()) {
                return false;
            }
        }
        else if ((0x8 & this.dM) != 0x0) {
            return false;
        }
        return true;
    }
    
    public final MenuItem setActionProvider(final ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }
    
    public final MenuItem setAlphabeticShortcut(final char c) {
        if (this.wm == c) {
            return (MenuItem)this;
        }
        this.wm = Character.toLowerCase(c);
        this.ve.t(false);
        return (MenuItem)this;
    }
    
    public final MenuItem setCheckable(final boolean b) {
        final int dm = this.dM;
        final int n = 0xFFFFFFFE & this.dM;
        boolean b2;
        if (b) {
            b2 = true;
        }
        else {
            b2 = false;
        }
        this.dM = ((b2 ? 1 : 0) | n);
        if (dm != this.dM) {
            this.ve.t(false);
        }
        return (MenuItem)this;
    }
    
    public final MenuItem setChecked(final boolean b) {
        if ((0x4 & this.dM) != 0x0) {
            this.ve.j((MenuItem)this);
            return (MenuItem)this;
        }
        this.v(b);
        return (MenuItem)this;
    }
    
    public final MenuItem setEnabled(final boolean b) {
        if (b) {
            this.dM |= 0x10;
        }
        else {
            this.dM &= 0xFFFFFFEF;
        }
        this.ve.t(false);
        return (MenuItem)this;
    }
    
    public final MenuItem setIcon(final int wo) {
        this.wn = null;
        this.wo = wo;
        this.ve.t(false);
        return (MenuItem)this;
    }
    
    public final MenuItem setIcon(final Drawable wn) {
        this.wo = 0;
        this.wn = wn;
        this.ve.t(false);
        return (MenuItem)this;
    }
    
    public final MenuItem setIntent(final Intent mIntent) {
        this.mIntent = mIntent;
        return (MenuItem)this;
    }
    
    public final MenuItem setNumericShortcut(final char wl) {
        if (this.wl == wl) {
            return (MenuItem)this;
        }
        this.wl = wl;
        this.ve.t(false);
        return (MenuItem)this;
    }
    
    public final MenuItem setOnActionExpandListener(final MenuItem$OnActionExpandListener menuItem$OnActionExpandListener) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setOnActionExpandListener()");
    }
    
    public final MenuItem setOnMenuItemClickListener(final MenuItem$OnMenuItemClickListener wp) {
        this.wp = wp;
        return (MenuItem)this;
    }
    
    public final MenuItem setShortcut(final char wl, final char c) {
        this.wl = wl;
        this.wm = Character.toLowerCase(c);
        this.ve.t(false);
        return (MenuItem)this;
    }
    
    @Override
    public final void setShowAsAction(final int xc) {
        switch (xc & 0x3) {
            default: {
                throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
            }
            case 0:
            case 1:
            case 2: {
                this.xC = xc;
                this.ve.dR();
            }
        }
    }
    
    public final MenuItem setTitle(final int n) {
        return this.setTitle(this.ve.getContext().getString(n));
    }
    
    public final MenuItem setTitle(final CharSequence charSequence) {
        this.cZ = charSequence;
        this.ve.t(false);
        if (this.xA != null) {
            this.xA.setHeaderTitle(charSequence);
        }
        return (MenuItem)this;
    }
    
    public final MenuItem setTitleCondensed(final CharSequence wk) {
        this.wk = wk;
        if (wk == null) {
            final CharSequence cz = this.cZ;
        }
        this.ve.t(false);
        return (MenuItem)this;
    }
    
    public final MenuItem setVisible(final boolean b) {
        if (this.w(b)) {
            this.ve.dQ();
        }
        return (MenuItem)this;
    }
    
    @Override
    public final String toString() {
        return this.cZ.toString();
    }
    
    public final void u(final boolean b) {
        final int n = 0xFFFFFFFB & this.dM;
        int n2;
        if (b) {
            n2 = 4;
        }
        else {
            n2 = 0;
        }
        this.dM = (n2 | n);
    }
    
    final void v(final boolean b) {
        final int dm = this.dM;
        final int n = 0xFFFFFFFD & this.dM;
        int n2;
        if (b) {
            n2 = 2;
        }
        else {
            n2 = 0;
        }
        this.dM = (n2 | n);
        if (dm != this.dM) {
            this.ve.t(false);
        }
    }
    
    final boolean w(final boolean b) {
        final int dm = this.dM;
        final int n = 0xFFFFFFF7 & this.dM;
        int n2;
        if (b) {
            n2 = 0;
        }
        else {
            n2 = 8;
        }
        this.dM = (n2 | n);
        final int dm2 = this.dM;
        boolean b2 = false;
        if (dm != dm2) {
            b2 = true;
        }
        return b2;
    }
    
    public final void x(final boolean b) {
        if (b) {
            this.dM |= 0x20;
            return;
        }
        this.dM &= 0xFFFFFFDF;
    }
    
    public final void y(final boolean xg) {
        this.xG = xg;
        this.ve.t(false);
    }
}
