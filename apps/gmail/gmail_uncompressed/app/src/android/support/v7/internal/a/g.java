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

final class g implements y
{
    final /* synthetic */ b uy;
    
    private g(final b uy) {
        this.uy = uy;
    }
    
    @Override
    public final void a(final i i, final boolean b) {
        if (this.uy.of != null) {
            this.uy.of.onPanelClosed(0, (Menu)i);
        }
        this.uy.uu.closePanel(0);
    }
    
    @Override
    public final boolean c(final i i) {
        if (i == null && this.uy.of != null) {
            this.uy.of.onMenuOpened(0, (Menu)i);
        }
        return true;
    }
}
