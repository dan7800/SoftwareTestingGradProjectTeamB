package android.support.v7.internal.view.menu;

import android.view.*;

final class s extends f<MenuItem$OnMenuItemClickListener> implements MenuItem$OnMenuItemClickListener
{
    final /* synthetic */ o xP;
    
    s(final o xp, final MenuItem$OnMenuItemClickListener menuItem$OnMenuItemClickListener) {
        this.xP = xp;
        super(menuItem$OnMenuItemClickListener);
    }
    
    public final boolean onMenuItemClick(final MenuItem menuItem) {
        return ((MenuItem$OnMenuItemClickListener)this.wJ).onMenuItemClick(this.xP.i(menuItem));
    }
}
