package android.support.v7.widget;

import android.content.*;
import android.util.*;
import android.content.res.*;
import android.support.v7.internal.view.menu.*;
import android.view.*;
import android.support.v7.a.*;
import java.util.*;
import android.support.v4.view.*;

final class f extends v
{
    final /* synthetic */ ActionMenuPresenter Cb;
    
    public f(final ActionMenuPresenter cb, final Context context, final i i, final View view) {
        this.Cb = cb;
        super(context, i, view, true, b.actionOverflowMenuStyle);
        this.eq();
        this.a(cb.BZ);
    }
    
    @Override
    public final void onDismiss() {
        super.onDismiss();
        this.Cb.ve.close();
        this.Cb.BV = null;
    }
}
