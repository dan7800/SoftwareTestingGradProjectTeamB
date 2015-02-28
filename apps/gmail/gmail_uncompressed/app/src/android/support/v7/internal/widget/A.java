package android.support.v7.internal.widget;

import android.content.*;
import android.support.v7.widget.*;
import android.view.animation.*;
import android.util.*;
import android.view.*;
import android.support.v7.internal.view.*;
import android.support.v4.view.*;
import android.os.*;
import android.support.v7.a.*;
import android.content.res.*;

abstract class a extends ViewGroup
{
    private static final Interpolator yk;
    protected final b yl;
    protected final Context ym;
    protected ActionMenuView yn;
    protected ActionMenuPresenter yo;
    protected ViewGroup yp;
    protected boolean yq;
    protected int yr;
    protected aV ys;
    
    static {
        yk = (Interpolator)new DecelerateInterpolator();
    }
    
    a(final Context context) {
        this(context, null);
    }
    
    a(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    a(final Context ym, final AttributeSet set, final int n) {
        super(ym, set, n);
        this.yl = new b(this);
        final TypedValue typedValue = new TypedValue();
        if (ym.getTheme().resolveAttribute(android.support.v7.a.b.actionBarPopupTheme, typedValue, true) && typedValue.resourceId != 0) {
            this.ym = (Context)new ContextThemeWrapper(ym, typedValue.resourceId);
            return;
        }
        this.ym = ym;
    }
    
    protected static int a(final int n, final int n2, final boolean b) {
        if (b) {
            return n - n2;
        }
        return n + n2;
    }
    
    protected static int a(final View view, final int n, final int n2, final int n3, final boolean b) {
        int measuredWidth = view.getMeasuredWidth();
        final int measuredHeight = view.getMeasuredHeight();
        final int n4 = n2 + (n3 - measuredHeight) / 2;
        if (b) {
            view.layout(n - measuredWidth, n4, n, measuredHeight + n4);
        }
        else {
            view.layout(n, n4, n + measuredWidth, measuredHeight + n4);
        }
        if (b) {
            measuredWidth = -measuredWidth;
        }
        return measuredWidth;
    }
    
    protected static int c(final View view, final int n, final int n2) {
        view.measure(View$MeasureSpec.makeMeasureSpec(n, Integer.MIN_VALUE), n2);
        return Math.max(0, 0 + (n - view.getMeasuredWidth()));
    }
    
    public void af(final int yr) {
        this.yr = yr;
        this.requestLayout();
    }
    
    public void ag(final int n) {
        if (this.ys != null) {
            this.ys.cancel();
        }
        if (n == 0) {
            if (this.getVisibility() != 0) {
                ad.c((View)this, 0.0f);
                if (this.yp != null && this.yn != null) {
                    ad.c((View)this.yn, 0.0f);
                }
            }
            final aV b = ad.s((View)this).b(1.0f);
            b.b(200L);
            b.a(a.yk);
            if (this.yp != null && this.yn != null) {
                final h h = new h();
                final aV b2 = ad.s((View)this.yn).b(1.0f);
                b2.b(200L);
                h.b(this.yl.a(b, n));
                h.e(b).e(b2);
                h.start();
                return;
            }
            b.a(this.yl.a(b, n));
            b.start();
        }
        else {
            final aV b3 = ad.s((View)this).b(0.0f);
            b3.b(200L);
            b3.a(a.yk);
            if (this.yp != null && this.yn != null) {
                final h h2 = new h();
                final aV b4 = ad.s((View)this.yn).b(0.0f);
                b4.b(200L);
                h2.b(this.yl.a(b3, n));
                h2.e(b3).e(b4);
                h2.start();
                return;
            }
            b3.a(this.yl.a(b3, n));
            b3.start();
        }
    }
    
    protected void onConfigurationChanged(final Configuration configuration) {
        if (Build$VERSION.SDK_INT >= 8) {
            super.onConfigurationChanged(configuration);
        }
        final TypedArray obtainStyledAttributes = this.getContext().obtainStyledAttributes((AttributeSet)null, l.qP, android.support.v7.a.b.actionBarStyle, 0);
        this.af(obtainStyledAttributes.getLayoutDimension(l.qY, 0));
        obtainStyledAttributes.recycle();
        if (this.yo != null) {
            this.yo.cU();
        }
    }
    
    public boolean showOverflowMenu() {
        return this.yo != null && this.yo.showOverflowMenu();
    }
}
