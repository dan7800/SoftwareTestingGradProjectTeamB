package android.support.v7.internal.view.menu;

import android.support.v4.b.a.*;
import android.annotation.*;
import java.lang.reflect.*;
import android.util.*;
import android.graphics.drawable.*;
import android.content.*;
import android.support.v4.view.*;
import android.view.*;

@TargetApi(14)
public class o extends e<b> implements MenuItem
{
    private Method xN;
    
    o(final Context context, final b b) {
        super(context, b);
    }
    
    p a(final ActionProvider actionProvider) {
        return new p(this, this.mContext, actionProvider);
    }
    
    public boolean collapseActionView() {
        return ((b)this.wJ).collapseActionView();
    }
    
    public final void eo() {
        try {
            if (this.xN == null) {
                this.xN = ((b)this.wJ).getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
            }
            this.xN.invoke(this.wJ, true);
        }
        catch (Exception ex) {
            Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", (Throwable)ex);
        }
    }
    
    public boolean expandActionView() {
        return ((b)this.wJ).expandActionView();
    }
    
    public ActionProvider getActionProvider() {
        final n ax = ((b)this.wJ).ax();
        if (ax instanceof p) {
            return ((p)ax).xO;
        }
        return null;
    }
    
    public View getActionView() {
        View view = ((b)this.wJ).getActionView();
        if (view instanceof q) {
            view = ((q)view).ep();
        }
        return view;
    }
    
    public char getAlphabeticShortcut() {
        return ((b)this.wJ).getAlphabeticShortcut();
    }
    
    public int getGroupId() {
        return ((b)this.wJ).getGroupId();
    }
    
    public Drawable getIcon() {
        return ((b)this.wJ).getIcon();
    }
    
    public Intent getIntent() {
        return ((b)this.wJ).getIntent();
    }
    
    public int getItemId() {
        return ((b)this.wJ).getItemId();
    }
    
    public ContextMenu$ContextMenuInfo getMenuInfo() {
        return ((b)this.wJ).getMenuInfo();
    }
    
    public char getNumericShortcut() {
        return ((b)this.wJ).getNumericShortcut();
    }
    
    public int getOrder() {
        return ((b)this.wJ).getOrder();
    }
    
    public SubMenu getSubMenu() {
        return this.a(((b)this.wJ).getSubMenu());
    }
    
    public CharSequence getTitle() {
        return ((b)this.wJ).getTitle();
    }
    
    public CharSequence getTitleCondensed() {
        return ((b)this.wJ).getTitleCondensed();
    }
    
    public boolean hasSubMenu() {
        return ((b)this.wJ).hasSubMenu();
    }
    
    public boolean isActionViewExpanded() {
        return ((b)this.wJ).isActionViewExpanded();
    }
    
    public boolean isCheckable() {
        return ((b)this.wJ).isCheckable();
    }
    
    public boolean isChecked() {
        return ((b)this.wJ).isChecked();
    }
    
    public boolean isEnabled() {
        return ((b)this.wJ).isEnabled();
    }
    
    public boolean isVisible() {
        return ((b)this.wJ).isVisible();
    }
    
    public MenuItem setActionProvider(final ActionProvider actionProvider) {
        final b b = (b)this.wJ;
        p a;
        if (actionProvider != null) {
            a = this.a(actionProvider);
        }
        else {
            a = null;
        }
        b.a(a);
        return (MenuItem)this;
    }
    
    public MenuItem setActionView(final int actionView) {
        ((b)this.wJ).setActionView(actionView);
        final View actionView2 = ((b)this.wJ).getActionView();
        if (actionView2 instanceof CollapsibleActionView) {
            ((b)this.wJ).setActionView((View)new q(actionView2));
        }
        return (MenuItem)this;
    }
    
    public MenuItem setActionView(View actionView) {
        if (actionView instanceof CollapsibleActionView) {
            actionView = (View)new q(actionView);
        }
        ((b)this.wJ).setActionView(actionView);
        return (MenuItem)this;
    }
    
    public MenuItem setAlphabeticShortcut(final char alphabeticShortcut) {
        ((b)this.wJ).setAlphabeticShortcut(alphabeticShortcut);
        return (MenuItem)this;
    }
    
    public MenuItem setCheckable(final boolean checkable) {
        ((b)this.wJ).setCheckable(checkable);
        return (MenuItem)this;
    }
    
    public MenuItem setChecked(final boolean checked) {
        ((b)this.wJ).setChecked(checked);
        return (MenuItem)this;
    }
    
    public MenuItem setEnabled(final boolean enabled) {
        ((b)this.wJ).setEnabled(enabled);
        return (MenuItem)this;
    }
    
    public MenuItem setIcon(final int icon) {
        ((b)this.wJ).setIcon(icon);
        return (MenuItem)this;
    }
    
    public MenuItem setIcon(final Drawable icon) {
        ((b)this.wJ).setIcon(icon);
        return (MenuItem)this;
    }
    
    public MenuItem setIntent(final Intent intent) {
        ((b)this.wJ).setIntent(intent);
        return (MenuItem)this;
    }
    
    public MenuItem setNumericShortcut(final char numericShortcut) {
        ((b)this.wJ).setNumericShortcut(numericShortcut);
        return (MenuItem)this;
    }
    
    public MenuItem setOnActionExpandListener(final MenuItem$OnActionExpandListener menuItem$OnActionExpandListener) {
        final b b = (b)this.wJ;
        r r;
        if (menuItem$OnActionExpandListener != null) {
            r = new r(this, menuItem$OnActionExpandListener);
        }
        else {
            r = null;
        }
        b.a(r);
        return (MenuItem)this;
    }
    
    public MenuItem setOnMenuItemClickListener(final MenuItem$OnMenuItemClickListener menuItem$OnMenuItemClickListener) {
        final b b = (b)this.wJ;
        Object onMenuItemClickListener;
        if (menuItem$OnMenuItemClickListener != null) {
            onMenuItemClickListener = new s(this, menuItem$OnMenuItemClickListener);
        }
        else {
            onMenuItemClickListener = null;
        }
        b.setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)onMenuItemClickListener);
        return (MenuItem)this;
    }
    
    public MenuItem setShortcut(final char c, final char c2) {
        ((b)this.wJ).setShortcut(c, c2);
        return (MenuItem)this;
    }
    
    public void setShowAsAction(final int showAsAction) {
        ((b)this.wJ).setShowAsAction(showAsAction);
    }
    
    public MenuItem setShowAsActionFlags(final int showAsActionFlags) {
        ((b)this.wJ).setShowAsActionFlags(showAsActionFlags);
        return (MenuItem)this;
    }
    
    public MenuItem setTitle(final int title) {
        ((b)this.wJ).setTitle(title);
        return (MenuItem)this;
    }
    
    public MenuItem setTitle(final CharSequence title) {
        ((b)this.wJ).setTitle(title);
        return (MenuItem)this;
    }
    
    public MenuItem setTitleCondensed(final CharSequence titleCondensed) {
        ((b)this.wJ).setTitleCondensed(titleCondensed);
        return (MenuItem)this;
    }
    
    public MenuItem setVisible(final boolean visible) {
        return ((b)this.wJ).setVisible(visible);
    }
}
