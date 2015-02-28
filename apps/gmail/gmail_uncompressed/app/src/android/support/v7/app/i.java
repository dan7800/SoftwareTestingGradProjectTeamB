package android.support.v7.app;

import android.support.v7.internal.a.*;
import android.support.v7.c.*;
import android.view.*;

final class i implements android.support.v7.internal.a.i
{
    final /* synthetic */ h oh;
    
    i(final h oh) {
        this.oh = oh;
    }
    
    @Override
    public final a a(final b b) {
        return this.oh.c(b);
    }
    
    @Override
    public final boolean onCreatePanelMenu(final int n, final Menu menu) {
        return this.oh.nX.a(n, menu);
    }
    
    @Override
    public final View onCreatePanelView(final int n) {
        return null;
    }
    
    @Override
    public final boolean onMenuItemSelected(final int n, final MenuItem menuItem) {
        return this.oh.nX.onMenuItemSelected(n, menuItem);
    }
    
    @Override
    public final boolean onMenuOpened(final int n, final Menu menu) {
        return this.oh.nX.onMenuOpened(n, menu);
    }
    
    @Override
    public final void onPanelClosed(final int n, final Menu menu) {
        this.oh.nX.onPanelClosed(n, menu);
    }
    
    @Override
    public final boolean onPreparePanel(final int n, final View view, final Menu menu) {
        return this.oh.nX.a(n, view, menu);
    }
}
