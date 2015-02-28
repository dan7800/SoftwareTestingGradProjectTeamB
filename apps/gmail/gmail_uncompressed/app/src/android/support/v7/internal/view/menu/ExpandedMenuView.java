package android.support.v7.internal.view.menu;

import android.content.*;
import android.util.*;
import android.support.v7.internal.widget.*;
import android.widget.*;
import android.view.*;

public final class ExpandedMenuView extends ListView implements k, z, AdapterView$OnItemClickListener
{
    private static final int[] wK;
    private i ve;
    
    static {
        wK = new int[] { 16842964, 16843049 };
    }
    
    public ExpandedMenuView(final Context context, final AttributeSet set) {
        this(context, set, 16842868);
    }
    
    public ExpandedMenuView(final Context context, final AttributeSet set, final int n) {
        super(context, set);
        this.setOnItemClickListener((AdapterView$OnItemClickListener)this);
        final Z a = Z.a(context, set, ExpandedMenuView.wK, n);
        if (a.hasValue(0)) {
            this.setBackgroundDrawable(a.getDrawable(0));
        }
        if (a.hasValue(1)) {
            this.setDivider(a.getDrawable(1));
        }
        a.recycle();
    }
    
    public final void e(final i ve) {
        this.ve = ve;
    }
    
    public final boolean e(final m m) {
        return this.ve.c((MenuItem)m, 0);
    }
    
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.setChildrenDrawingCacheEnabled(false);
    }
    
    public final void onItemClick(final AdapterView adapterView, final View view, final int n, final long n2) {
        this.e((m)this.getAdapter().getItem(n));
    }
}
