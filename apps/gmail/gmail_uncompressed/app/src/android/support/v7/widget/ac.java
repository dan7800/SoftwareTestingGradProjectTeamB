package android.support.v7.widget;

import android.support.v7.internal.a.*;
import android.support.v7.c.*;
import android.view.*;

public class ac implements i
{
    private i Gy;
    
    public ac(final i gy) {
        if (gy == null) {
            throw new IllegalArgumentException("Window callback may not be null");
        }
        this.Gy = gy;
    }
    
    @Override
    public final a a(final b b) {
        return this.Gy.a(b);
    }
    
    @Override
    public final boolean onCreatePanelMenu(final int n, final Menu menu) {
        return this.Gy.onCreatePanelMenu(n, menu);
    }
    
    @Override
    public View onCreatePanelView(final int n) {
        return this.Gy.onCreatePanelView(n);
    }
    
    @Override
    public final boolean onMenuItemSelected(final int n, final MenuItem menuItem) {
        return this.Gy.onMenuItemSelected(n, menuItem);
    }
    
    @Override
    public final boolean onMenuOpened(final int n, final Menu menu) {
        return this.Gy.onMenuOpened(n, menu);
    }
    
    @Override
    public final void onPanelClosed(final int n, final Menu menu) {
        this.Gy.onPanelClosed(n, menu);
    }
    
    @Override
    public boolean onPreparePanel(final int n, final View view, final Menu menu) {
        return this.Gy.onPreparePanel(n, view, menu);
    }
}
