package android.support.v7.internal.view.menu;

import android.support.v4.view.*;
import android.content.*;
import android.view.*;

class p extends n
{
    final ActionProvider xO;
    final /* synthetic */ o xP;
    
    public p(final o xp, final Context context, final ActionProvider xo) {
        this.xP = xp;
        super(context);
        this.xO = xo;
    }
    
    @Override
    public final boolean hasSubMenu() {
        return this.xO.hasSubMenu();
    }
    
    @Override
    public final View onCreateActionView() {
        return this.xO.onCreateActionView();
    }
    
    @Override
    public final boolean onPerformDefaultAction() {
        return this.xO.onPerformDefaultAction();
    }
    
    @Override
    public final void onPrepareSubMenu(final SubMenu subMenu) {
        this.xO.onPrepareSubMenu(this.xP.a(subMenu));
    }
}
