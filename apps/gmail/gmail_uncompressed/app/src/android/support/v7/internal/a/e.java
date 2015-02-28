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

final class e implements y
{
    private boolean ow;
    final /* synthetic */ b uy;
    
    private e(final b uy) {
        this.uy = uy;
    }
    
    @Override
    public final void a(final i i, final boolean b) {
        if (this.ow) {
            return;
        }
        this.ow = true;
        this.uy.uo.dismissPopupMenus();
        if (this.uy.of != null) {
            this.uy.of.onPanelClosed(8, (Menu)i);
        }
        this.ow = false;
    }
    
    @Override
    public final boolean c(final i i) {
        if (this.uy.of != null) {
            this.uy.of.onMenuOpened(8, (Menu)i);
            return true;
        }
        return false;
    }
}
