package android.support.v7.internal.view.menu;

import android.support.v4.b.a.*;
import android.content.*;
import android.graphics.drawable.*;
import android.support.v4.view.*;
import android.support.v4.content.*;
import android.view.*;

public final class a implements b
{
    private final int cH;
    private CharSequence cZ;
    private int dM;
    private Context mContext;
    private Intent mIntent;
    private final int wh;
    private final int wi;
    private final int wj;
    private CharSequence wk;
    private char wl;
    private char wm;
    private Drawable wn;
    private int wo;
    private MenuItem$OnMenuItemClickListener wp;
    
    public a(final Context mContext, final CharSequence cz) {
        this.wo = 0;
        this.dM = 16;
        this.mContext = mContext;
        this.cH = 16908332;
        this.wh = 0;
        this.wi = 0;
        this.wj = 0;
        this.cZ = cz;
    }
    
    @Override
    public final b a(final O o) {
        return this;
    }
    
    @Override
    public final b a(final n n) {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public final n ax() {
        return null;
    }
    
    @Override
    public final boolean collapseActionView() {
        return false;
    }
    
    @Override
    public final boolean expandActionView() {
        return false;
    }
    
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public final View getActionView() {
        return null;
    }
    
    public final char getAlphabeticShortcut() {
        return this.wm;
    }
    
    public final int getGroupId() {
        return this.wh;
    }
    
    public final Drawable getIcon() {
        return this.wn;
    }
    
    public final Intent getIntent() {
        return this.mIntent;
    }
    
    public final int getItemId() {
        return this.cH;
    }
    
    public final ContextMenu$ContextMenuInfo getMenuInfo() {
        return null;
    }
    
    public final char getNumericShortcut() {
        return this.wl;
    }
    
    public final int getOrder() {
        return this.wj;
    }
    
    public final SubMenu getSubMenu() {
        return null;
    }
    
    public final CharSequence getTitle() {
        return this.cZ;
    }
    
    public final CharSequence getTitleCondensed() {
        if (this.wk != null) {
            return this.wk;
        }
        return this.cZ;
    }
    
    public final boolean hasSubMenu() {
        return false;
    }
    
    @Override
    public final boolean isActionViewExpanded() {
        return false;
    }
    
    public final boolean isCheckable() {
        return (0x1 & this.dM) != 0x0;
    }
    
    public final boolean isChecked() {
        return (0x2 & this.dM) != 0x0;
    }
    
    public final boolean isEnabled() {
        return (0x10 & this.dM) != 0x0;
    }
    
    public final boolean isVisible() {
        return (0x8 & this.dM) == 0x0;
    }
    
    public final MenuItem setActionProvider(final ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }
    
    public final MenuItem setAlphabeticShortcut(final char wm) {
        this.wm = wm;
        return (MenuItem)this;
    }
    
    public final MenuItem setCheckable(final boolean b) {
        final int n = 0xFFFFFFFE & this.dM;
        boolean b2;
        if (b) {
            b2 = true;
        }
        else {
            b2 = false;
        }
        this.dM = ((b2 ? 1 : 0) | n);
        return (MenuItem)this;
    }
    
    public final MenuItem setChecked(final boolean b) {
        final int n = 0xFFFFFFFD & this.dM;
        int n2;
        if (b) {
            n2 = 2;
        }
        else {
            n2 = 0;
        }
        this.dM = (n2 | n);
        return (MenuItem)this;
    }
    
    public final MenuItem setEnabled(final boolean b) {
        final int n = 0xFFFFFFEF & this.dM;
        int n2;
        if (b) {
            n2 = 16;
        }
        else {
            n2 = 0;
        }
        this.dM = (n2 | n);
        return (MenuItem)this;
    }
    
    public final MenuItem setIcon(final int wo) {
        this.wo = wo;
        this.wn = c.a(this.mContext, wo);
        return (MenuItem)this;
    }
    
    public final MenuItem setIcon(final Drawable wn) {
        this.wn = wn;
        this.wo = 0;
        return (MenuItem)this;
    }
    
    public final MenuItem setIntent(final Intent mIntent) {
        this.mIntent = mIntent;
        return (MenuItem)this;
    }
    
    public final MenuItem setNumericShortcut(final char wl) {
        this.wl = wl;
        return (MenuItem)this;
    }
    
    public final MenuItem setOnActionExpandListener(final MenuItem$OnActionExpandListener menuItem$OnActionExpandListener) {
        throw new UnsupportedOperationException();
    }
    
    public final MenuItem setOnMenuItemClickListener(final MenuItem$OnMenuItemClickListener wp) {
        this.wp = wp;
        return (MenuItem)this;
    }
    
    public final MenuItem setShortcut(final char wl, final char wm) {
        this.wl = wl;
        this.wm = wm;
        return (MenuItem)this;
    }
    
    @Override
    public final void setShowAsAction(final int n) {
    }
    
    public final MenuItem setTitle(final int n) {
        this.cZ = this.mContext.getResources().getString(n);
        return (MenuItem)this;
    }
    
    public final MenuItem setTitle(final CharSequence cz) {
        this.cZ = cz;
        return (MenuItem)this;
    }
    
    public final MenuItem setTitleCondensed(final CharSequence wk) {
        this.wk = wk;
        return (MenuItem)this;
    }
    
    public final MenuItem setVisible(final boolean b) {
        final int n = 0x8 & this.dM;
        int n2;
        if (b) {
            n2 = 0;
        }
        else {
            n2 = 8;
        }
        this.dM = (n2 | n);
        return (MenuItem)this;
    }
}
