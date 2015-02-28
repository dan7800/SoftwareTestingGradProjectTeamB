package android.support.v7.internal.view.menu;

import android.support.v4.view.*;
import android.view.*;

final class r extends f<MenuItem$OnActionExpandListener> implements O
{
    final /* synthetic */ o xP;
    
    r(final o xp, final MenuItem$OnActionExpandListener menuItem$OnActionExpandListener) {
        this.xP = xp;
        super(menuItem$OnActionExpandListener);
    }
    
    @Override
    public final boolean onMenuItemActionCollapse(final MenuItem menuItem) {
        return ((MenuItem$OnActionExpandListener)this.wJ).onMenuItemActionCollapse(this.xP.i(menuItem));
    }
    
    @Override
    public final boolean onMenuItemActionExpand(final MenuItem menuItem) {
        return ((MenuItem$OnActionExpandListener)this.wJ).onMenuItemActionExpand(this.xP.i(menuItem));
    }
}
