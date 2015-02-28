package android.support.v7.internal.view.menu;

import android.content.*;
import android.view.*;

final class u extends p implements ActionProvider$VisibilityListener
{
    android.support.v4.view.p xR;
    final /* synthetic */ t xS;
    
    public u(final t xs, final Context context, final ActionProvider actionProvider) {
        this.xS = xs;
        super(xs, context, actionProvider);
    }
    
    public final void a(final android.support.v4.view.p xr) {
        this.xR = xr;
        final ActionProvider xo = this.xO;
        final ActionProvider$VisibilityListener visibilityListener;
        if (xr == null) {
            visibilityListener = null;
        }
        xo.setVisibilityListener(visibilityListener);
    }
    
    public final boolean isVisible() {
        return this.xO.isVisible();
    }
    
    public final void onActionProviderVisibilityChanged(final boolean b) {
        if (this.xR != null) {
            this.xR.aV();
        }
    }
    
    public final View onCreateActionView(final MenuItem menuItem) {
        return this.xO.onCreateActionView(menuItem);
    }
    
    public final boolean overridesItemVisibility() {
        return this.xO.overridesItemVisibility();
    }
}
