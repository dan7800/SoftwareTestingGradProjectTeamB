package android.support.v7.internal.widget;

import android.graphics.drawable.*;
import android.widget.*;
import android.support.v7.internal.view.*;
import android.content.*;
import android.util.*;
import android.support.v7.a.*;
import android.text.*;
import android.support.v7.internal.view.menu.*;
import android.support.v7.widget.*;
import android.view.animation.*;
import android.support.v4.view.*;
import android.view.accessibility.*;
import android.os.*;
import android.view.*;

public class ActionBarContextView extends a implements bk
{
    private CharSequence cZ;
    private View vl;
    private TextView wN;
    private Drawable yP;
    private CharSequence yT;
    private View yU;
    private LinearLayout yV;
    private TextView yW;
    private int yX;
    private int yY;
    private boolean yZ;
    private int za;
    private h zb;
    private boolean zc;
    private int zd;
    
    public ActionBarContextView(final Context context) {
        this(context, null);
    }
    
    public ActionBarContextView(final Context context, final AttributeSet set) {
        this(context, set, b.actionModeStyle);
    }
    
    public ActionBarContextView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        final Z a = Z.a(context, set, l.rn, n);
        this.setBackgroundDrawable(a.getDrawable(l.ro));
        this.yX = a.getResourceId(l.rt, 0);
        this.yY = a.getResourceId(l.rs, 0);
        this.yr = a.getLayoutDimension(l.rr, 0);
        this.yP = a.getDrawable(l.rp);
        this.za = a.getResourceId(l.rq, i.qC);
        a.recycle();
    }
    
    private void ev() {
        int visibility = 8;
        int n = 1;
        if (this.yV == null) {
            LayoutInflater.from(this.getContext()).inflate(i.qz, (ViewGroup)this);
            this.yV = (LinearLayout)this.getChildAt(-1 + this.getChildCount());
            this.wN = (TextView)this.yV.findViewById(g.qq);
            this.yW = (TextView)this.yV.findViewById(g.qp);
            if (this.yX != 0) {
                this.wN.setTextAppearance(this.getContext(), this.yX);
            }
            if (this.yY != 0) {
                this.yW.setTextAppearance(this.getContext(), this.yY);
            }
        }
        this.wN.setText(this.cZ);
        this.yW.setText(this.yT);
        int n2;
        if (!TextUtils.isEmpty(this.cZ)) {
            n2 = n;
        }
        else {
            n2 = 0;
        }
        if (TextUtils.isEmpty(this.yT)) {
            n = 0;
        }
        final TextView yw = this.yW;
        int visibility2;
        if (n != 0) {
            visibility2 = 0;
        }
        else {
            visibility2 = visibility;
        }
        yw.setVisibility(visibility2);
        final LinearLayout yv = this.yV;
        if (n2 != 0 || n != 0) {
            visibility = 0;
        }
        yv.setVisibility(visibility);
        if (this.yV.getParent() == null) {
            this.addView((View)this.yV);
        }
    }
    
    private void ex() {
        final h zb = this.zb;
        if (zb != null) {
            this.zb = null;
            zb.cancel();
        }
    }
    
    @Override
    public final void A(final View view) {
    }
    
    @Override
    public final void B(final View view) {
        if (this.zd == 2) {
            this.ey();
        }
        this.zd = 0;
    }
    
    public final void B(final boolean yz) {
        if (yz != this.yZ) {
            this.requestLayout();
        }
        this.yZ = yz;
    }
    
    @Override
    public final void C(final View view) {
    }
    
    @Override
    public final void af(final int yr) {
        this.yr = yr;
    }
    
    public final void e(final android.support.v7.c.a a) {
        if (this.yU == null) {
            this.addView(this.yU = LayoutInflater.from(this.getContext()).inflate(this.za, (ViewGroup)this, false));
        }
        else if (this.yU.getParent() == null) {
            this.addView(this.yU);
        }
        this.yU.findViewById(g.qu).setOnClickListener((View$OnClickListener)new android.support.v7.internal.widget.g(this, a));
        final android.support.v7.internal.view.menu.i i = (android.support.v7.internal.view.menu.i)a.getMenu();
        if (this.yo != null) {
            this.yo.fb();
        }
        (this.yo = new ActionMenuPresenter(this.getContext())).eZ();
        final ViewGroup$LayoutParams viewGroup$LayoutParams = new ViewGroup$LayoutParams(-2, -1);
        if (!this.yq) {
            i.a(this.yo, this.ym);
            (this.yn = (ActionMenuView)this.yo.d(this)).setBackgroundDrawable((Drawable)null);
            this.addView((View)this.yn, viewGroup$LayoutParams);
        }
        else {
            this.yo.as(this.getContext().getResources().getDisplayMetrics().widthPixels);
            this.yo.fa();
            viewGroup$LayoutParams.width = -1;
            viewGroup$LayoutParams.height = this.yr;
            i.a(this.yo, this.ym);
            (this.yn = (ActionMenuView)this.yo.d(this)).setBackgroundDrawable(this.yP);
            this.yp.addView((View)this.yn, viewGroup$LayoutParams);
        }
        this.zc = true;
    }
    
    public final void ew() {
        if (this.zd == 2) {
            return;
        }
        if (this.yU == null) {
            this.ey();
            return;
        }
        this.ex();
        this.zd = 2;
        final aV c = ad.s(this.yU).c(-this.yU.getWidth() - ((ViewGroup$MarginLayoutParams)this.yU.getLayoutParams()).leftMargin);
        c.b(200L);
        c.a(this);
        c.a((Interpolator)new DecelerateInterpolator());
        final h zb = new h();
        zb.e(c);
        if (this.yn != null) {
            this.yn.getChildCount();
        }
        (this.zb = zb).start();
    }
    
    public final void ey() {
        this.ex();
        this.removeAllViews();
        if (this.yp != null) {
            this.yp.removeView((View)this.yn);
        }
        this.vl = null;
        this.yn = null;
        this.zc = false;
    }
    
    protected ViewGroup$LayoutParams generateDefaultLayoutParams() {
        return (ViewGroup$LayoutParams)new ViewGroup$MarginLayoutParams(-1, -2);
    }
    
    public ViewGroup$LayoutParams generateLayoutParams(final AttributeSet set) {
        return (ViewGroup$LayoutParams)new ViewGroup$MarginLayoutParams(this.getContext(), set);
    }
    
    public final CharSequence getSubtitle() {
        return this.yT;
    }
    
    public final CharSequence getTitle() {
        return this.cZ;
    }
    
    public final boolean isTitleOptional() {
        return this.yZ;
    }
    
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.yo != null) {
            this.yo.hideOverflowMenu();
            this.yo.fc();
        }
    }
    
    public void onInitializeAccessibilityEvent(final AccessibilityEvent accessibilityEvent) {
        if (Build$VERSION.SDK_INT >= 14) {
            if (accessibilityEvent.getEventType() != 32) {
                super.onInitializeAccessibilityEvent(accessibilityEvent);
                return;
            }
            accessibilityEvent.setSource((View)this);
            accessibilityEvent.setClassName((CharSequence)this.getClass().getName());
            accessibilityEvent.setPackageName((CharSequence)this.getContext().getPackageName());
            accessibilityEvent.setContentDescription(this.cZ);
        }
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        final boolean af = android.support.v7.internal.widget.af.af((View)this);
        int n5;
        if (af) {
            n5 = n3 - n - this.getPaddingRight();
        }
        else {
            n5 = this.getPaddingLeft();
        }
        final int paddingTop = this.getPaddingTop();
        final int n6 = n4 - n2 - this.getPaddingTop() - this.getPaddingBottom();
        if (this.yU != null && this.yU.getVisibility() != 8) {
            final ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams)this.yU.getLayoutParams();
            int n7;
            if (af) {
                n7 = viewGroup$MarginLayoutParams.rightMargin;
            }
            else {
                n7 = viewGroup$MarginLayoutParams.leftMargin;
            }
            int n8;
            if (af) {
                n8 = viewGroup$MarginLayoutParams.leftMargin;
            }
            else {
                n8 = viewGroup$MarginLayoutParams.rightMargin;
            }
            final int a = android.support.v7.internal.widget.a.a(n5, n7, af);
            n5 = android.support.v7.internal.widget.a.a(a + android.support.v7.internal.widget.a.a(this.yU, a, paddingTop, n6, af), n8, af);
            if (this.zc) {
                this.zd = 1;
                ad.a(this.yU, -this.yU.getWidth() - ((ViewGroup$MarginLayoutParams)this.yU.getLayoutParams()).leftMargin);
                final aV c = ad.s(this.yU).c(0.0f);
                c.b(200L);
                c.a(this);
                c.a((Interpolator)new DecelerateInterpolator());
                final h zb = new h();
                zb.e(c);
                if (this.yn != null) {
                    final int childCount = this.yn.getChildCount();
                    if (childCount > 0) {
                        for (int i = childCount - 1; i >= 0; --i) {
                            final View child = this.yn.getChildAt(i);
                            ad.e(child, 0.0f);
                            final aV bo = ad.s(child).bo();
                            bo.b(300L);
                            zb.e(bo);
                        }
                    }
                }
                (this.zb = zb).start();
                this.zc = false;
            }
        }
        if (this.yV != null && this.vl == null && this.yV.getVisibility() != 8) {
            n5 += a.a((View)this.yV, n5, paddingTop, n6, af);
        }
        if (this.vl != null) {
            a.a(this.vl, n5, paddingTop, n6, af);
        }
        int paddingLeft;
        if (af) {
            paddingLeft = this.getPaddingLeft();
        }
        else {
            paddingLeft = n3 - n - this.getPaddingRight();
        }
        if (this.yn != null) {
            a.a((View)this.yn, paddingLeft, paddingTop, n6, !af);
        }
    }
    
    protected void onMeasure(final int n, final int n2) {
        int n3 = 1073741824;
        int i = 0;
        if (View$MeasureSpec.getMode(n) != n3) {
            throw new IllegalStateException(this.getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        }
        if (View$MeasureSpec.getMode(n2) == 0) {
            throw new IllegalStateException(this.getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
        final int size = View$MeasureSpec.getSize(n);
        int n4;
        if (this.yr > 0) {
            n4 = this.yr;
        }
        else {
            n4 = View$MeasureSpec.getSize(n2);
        }
        final int n5 = this.getPaddingTop() + this.getPaddingBottom();
        int n6 = size - this.getPaddingLeft() - this.getPaddingRight();
        final int n7 = n4 - n5;
        final int measureSpec = View$MeasureSpec.makeMeasureSpec(n7, Integer.MIN_VALUE);
        if (this.yU != null) {
            final int c = a.c(this.yU, n6, measureSpec);
            final ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams)this.yU.getLayoutParams();
            n6 = c - (viewGroup$MarginLayoutParams.leftMargin + viewGroup$MarginLayoutParams.rightMargin);
        }
        if (this.yn != null && this.yn.getParent() == this) {
            n6 = a.c((View)this.yn, n6, measureSpec);
        }
        if (this.yV != null && this.vl == null) {
            if (this.yZ) {
                this.yV.measure(View$MeasureSpec.makeMeasureSpec(0, 0), measureSpec);
                final int measuredWidth = this.yV.getMeasuredWidth();
                boolean b;
                if (measuredWidth <= n6) {
                    b = true;
                }
                else {
                    b = false;
                }
                if (b) {
                    n6 -= measuredWidth;
                }
                final LinearLayout yv = this.yV;
                int visibility;
                if (b) {
                    visibility = 0;
                }
                else {
                    visibility = 8;
                }
                yv.setVisibility(visibility);
            }
            else {
                n6 = a.c((View)this.yV, n6, measureSpec);
            }
        }
        if (this.vl != null) {
            final ViewGroup$LayoutParams layoutParams = this.vl.getLayoutParams();
            int n8;
            if (layoutParams.width != -2) {
                n8 = n3;
            }
            else {
                n8 = Integer.MIN_VALUE;
            }
            if (layoutParams.width >= 0) {
                n6 = Math.min(layoutParams.width, n6);
            }
            if (layoutParams.height == -2) {
                n3 = Integer.MIN_VALUE;
            }
            int min;
            if (layoutParams.height >= 0) {
                min = Math.min(layoutParams.height, n7);
            }
            else {
                min = n7;
            }
            this.vl.measure(View$MeasureSpec.makeMeasureSpec(n6, n8), View$MeasureSpec.makeMeasureSpec(min, n3));
        }
        if (this.yr <= 0) {
            final int childCount = this.getChildCount();
            int n9 = 0;
            while (i < childCount) {
                int n10 = n5 + this.getChildAt(i).getMeasuredHeight();
                if (n10 <= n9) {
                    n10 = n9;
                }
                ++i;
                n9 = n10;
            }
            this.setMeasuredDimension(size, n9);
            return;
        }
        this.setMeasuredDimension(size, n4);
    }
    
    public final void setCustomView(final View vl) {
        if (this.vl != null) {
            this.removeView(this.vl);
        }
        this.vl = vl;
        if (this.yV != null) {
            this.removeView((View)this.yV);
            this.yV = null;
        }
        if (vl != null) {
            this.addView(vl);
        }
        this.requestLayout();
    }
    
    public final void setSubtitle(final CharSequence yt) {
        this.yT = yt;
        this.ev();
    }
    
    public final void setTitle(final CharSequence cz) {
        this.cZ = cz;
        this.ev();
    }
    
    public boolean shouldDelayChildPressedState() {
        return false;
    }
    
    @Override
    public final boolean showOverflowMenu() {
        return this.yo != null && this.yo.showOverflowMenu();
    }
}
