package android.support.v7.widget;

import android.content.*;
import android.util.*;
import android.support.v7.internal.view.*;
import android.view.*;
import android.content.res.*;
import android.support.v7.internal.view.menu.*;
import android.support.v7.a.*;
import java.util.*;
import android.support.v4.view.*;

final class a extends v
{
    final /* synthetic */ ActionMenuPresenter Cb;
    private D xA;
    
    public a(final ActionMenuPresenter cb, final Context context, final D xa) {
        this.Cb = cb;
        super(context, xa, null, false, b.actionOverflowMenuStyle);
        this.xA = xa;
        if (!((m)xa.getItem()).ej()) {
            View d;
            if (cb.BI == null) {
                d = (View)cb.wG;
            }
            else {
                d = cb.BI;
            }
            this.setAnchorView(d);
        }
        this.a(cb.BZ);
        final int size = xa.size();
        int n = 0;
        boolean b;
        while (true) {
            b = false;
            if (n >= size) {
                break;
            }
            final MenuItem item = xa.getItem(n);
            if (item.isVisible() && item.getIcon() != null) {
                b = true;
                break;
            }
            ++n;
        }
        this.z(b);
    }
    
    @Override
    public final void onDismiss() {
        super.onDismiss();
        this.Cb.BW = null;
        this.Cb.Ca = 0;
    }
}
