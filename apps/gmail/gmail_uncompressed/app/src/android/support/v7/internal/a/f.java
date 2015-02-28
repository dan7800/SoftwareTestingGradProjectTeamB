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

final class f implements j
{
    final /* synthetic */ b uy;
    
    private f(final b uy) {
        this.uy = uy;
    }
    
    @Override
    public final void a(final i i) {
        if (this.uy.of != null) {
            if (this.uy.uo.isOverflowMenuShowing()) {
                this.uy.of.onPanelClosed(8, (Menu)i);
            }
            else if (this.uy.of.onPreparePanel(0, null, (Menu)i)) {
                this.uy.of.onMenuOpened(8, (Menu)i);
            }
        }
    }
    
    @Override
    public final boolean a(final i i, final MenuItem menuItem) {
        return false;
    }
}
