package android.support.v7.internal.view.menu;

import android.content.*;
import android.support.v4.b.a.*;
import android.graphics.drawable.*;
import android.view.*;

final class E extends C implements SubMenu
{
    E(final Context context, final c c) {
        super(context, c);
    }
    
    public final void clearHeader() {
        ((c)this.wJ).clearHeader();
    }
    
    public final MenuItem getItem() {
        return this.i(((c)this.wJ).getItem());
    }
    
    public final SubMenu setHeaderIcon(final int headerIcon) {
        ((c)this.wJ).setHeaderIcon(headerIcon);
        return (SubMenu)this;
    }
    
    public final SubMenu setHeaderIcon(final Drawable headerIcon) {
        ((c)this.wJ).setHeaderIcon(headerIcon);
        return (SubMenu)this;
    }
    
    public final SubMenu setHeaderTitle(final int headerTitle) {
        ((c)this.wJ).setHeaderTitle(headerTitle);
        return (SubMenu)this;
    }
    
    public final SubMenu setHeaderTitle(final CharSequence headerTitle) {
        ((c)this.wJ).setHeaderTitle(headerTitle);
        return (SubMenu)this;
    }
    
    public final SubMenu setHeaderView(final View headerView) {
        ((c)this.wJ).setHeaderView(headerView);
        return (SubMenu)this;
    }
    
    public final SubMenu setIcon(final int icon) {
        ((c)this.wJ).setIcon(icon);
        return (SubMenu)this;
    }
    
    public final SubMenu setIcon(final Drawable icon) {
        ((c)this.wJ).setIcon(icon);
        return (SubMenu)this;
    }
}
