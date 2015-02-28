package android.support.v7.widget;

import android.util.*;
import android.content.*;
import android.content.res.*;
import android.support.v7.internal.view.menu.*;
import android.view.*;
import android.support.v7.a.*;
import java.util.*;
import android.support.v4.view.*;

final class c implements Runnable
{
    final /* synthetic */ ActionMenuPresenter Cb;
    private f Cc;
    
    public c(final ActionMenuPresenter cb, final f cc) {
        this.Cb = cb;
        this.Cc = cc;
    }
    
    @Override
    public final void run() {
        this.Cb.ve.dN();
        final View view = (View)this.Cb.wG;
        if (view != null && view.getWindowToken() != null && this.Cc.er()) {
            this.Cb.BV = this.Cc;
        }
        this.Cb.BX = null;
    }
}
