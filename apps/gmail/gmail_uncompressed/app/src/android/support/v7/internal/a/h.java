package android.support.v7.internal.a;

import java.util.*;
import android.support.v7.app.*;
import android.support.v7.widget.*;
import android.support.v7.internal.view.menu.*;
import android.view.*;
import android.widget.*;
import android.support.v7.internal.widget.*;
import android.support.v4.view.*;
import android.graphics.drawable.*;
import android.content.*;
import android.content.res.*;

final class h extends ac
{
    final /* synthetic */ b uy;
    
    public h(final b uy, final i i) {
        this.uy = uy;
        super(i);
    }
    
    @Override
    public final View onCreatePanelView(final int n) {
        switch (n) {
            case 0: {
                if (!this.uy.uq) {
                    this.uy.da();
                    this.uy.uo.removeCallbacks(this.uy.uw);
                }
                if (!this.uy.uq || this.uy.of == null) {
                    break;
                }
                final Menu g = this.uy.getMenu();
                if (this.uy.of.onPreparePanel(n, null, g) && this.uy.of.onMenuOpened(n, g)) {
                    return b.a(this.uy, g);
                }
                break;
            }
        }
        return super.onCreatePanelView(n);
    }
    
    @Override
    public final boolean onPreparePanel(final int n, final View view, final Menu menu) {
        final boolean onPreparePanel = super.onPreparePanel(n, view, menu);
        if (onPreparePanel && !this.uy.uq) {
            this.uy.up.eF();
            this.uy.uq = true;
        }
        return onPreparePanel;
    }
}
