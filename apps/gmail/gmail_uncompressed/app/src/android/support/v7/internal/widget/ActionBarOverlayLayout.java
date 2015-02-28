package android.support.v7.internal.widget;

import android.support.v4.widget.*;
import android.graphics.drawable.*;
import android.content.*;
import android.util.*;
import android.support.v4.view.*;
import android.support.v7.a.*;
import android.support.v7.widget.*;
import android.support.v7.internal.view.menu.*;
import android.view.*;
import android.graphics.*;
import android.content.res.*;
import android.os.*;
import android.support.v7.internal.*;

public class ActionBarOverlayLayout extends ViewGroup implements u
{
    static final int[] mP;
    private boolean uX;
    private v up;
    private K zA;
    private aV zB;
    private aV zC;
    private final bk zD;
    private final bk zE;
    private final Runnable zF;
    private final Runnable zG;
    private int zg;
    private int zh;
    private ContentFrameLayout zi;
    private ActionBarContainer zj;
    private ActionBarContainer zk;
    private Drawable zl;
    private boolean zm;
    private boolean zn;
    private boolean zo;
    private boolean zp;
    private int zq;
    private int zr;
    private final Rect zs;
    private final Rect zt;
    private final Rect zu;
    private final Rect zv;
    private final Rect zw;
    private final Rect zx;
    private l zy;
    private final int zz;
    
    static {
        mP = new int[] { b.actionBarSize, 16842841 };
    }
    
    public ActionBarOverlayLayout(final Context context) {
        super(context);
        this.zh = 0;
        this.zs = new Rect();
        this.zt = new Rect();
        this.zu = new Rect();
        this.zv = new Rect();
        this.zw = new Rect();
        this.zx = new Rect();
        this.zz = 600;
        this.zD = new h(this);
        this.zE = new i(this);
        this.zF = new j(this);
        this.zG = new k(this);
        this.g(context);
    }
    
    public ActionBarOverlayLayout(final Context context, final AttributeSet set) {
        super(context, set);
        this.zh = 0;
        this.zs = new Rect();
        this.zt = new Rect();
        this.zu = new Rect();
        this.zv = new Rect();
        this.zw = new Rect();
        this.zx = new Rect();
        this.zz = 600;
        this.zD = new h(this);
        this.zE = new i(this);
        this.zF = new j(this);
        this.zG = new k(this);
        this.g(context);
    }
    
    private static boolean a(final View view, final Rect rect, final boolean b, final boolean b2) {
        final m m = (m)view.getLayoutParams();
        final int leftMargin = m.leftMargin;
        final int left = rect.left;
        boolean b3 = false;
        if (leftMargin != left) {
            m.leftMargin = rect.left;
            b3 = true;
        }
        if (b && m.topMargin != rect.top) {
            m.topMargin = rect.top;
            b3 = true;
        }
        if (m.rightMargin != rect.right) {
            m.rightMargin = rect.right;
            b3 = true;
        }
        if (b2 && m.bottomMargin != rect.bottom) {
            m.bottomMargin = rect.bottom;
            return true;
        }
        return b3;
    }
    
    private void ai(final int n) {
        this.eC();
        final int height = this.zk.getHeight();
        final int max = Math.max(0, Math.min(n, height));
        ad.b((View)this.zk, (float)(-max));
        if (this.zj != null && this.zj.getVisibility() != 8) {
            ad.b((View)this.zj, (float)(int)(max / height * this.zj.getHeight()));
        }
    }
    
    public static void eA() {
    }
    
    private void eB() {
        if (this.zi == null) {
            this.zi = (ContentFrameLayout)this.findViewById(g.qn);
            this.zk = (ActionBarContainer)this.findViewById(g.qo);
            final View viewById = this.findViewById(g.qm);
            v fs;
            if (viewById instanceof v) {
                fs = (v)viewById;
            }
            else {
                if (!(viewById instanceof Toolbar)) {
                    throw new IllegalStateException("Can't make a decor toolbar out of " + ((Toolbar)viewById).getClass().getSimpleName());
                }
                fs = ((Toolbar)viewById).fS();
            }
            this.up = fs;
            this.zj = (ActionBarContainer)this.findViewById(g.qx);
        }
    }
    
    private void eC() {
        this.removeCallbacks(this.zF);
        this.removeCallbacks(this.zG);
        if (this.zB != null) {
            this.zB.cancel();
        }
        if (this.zC != null) {
            this.zC.cancel();
        }
    }
    
    private void g(final Context context) {
        int zm = 1;
        final TypedArray obtainStyledAttributes = this.getContext().getTheme().obtainStyledAttributes(ActionBarOverlayLayout.mP);
        this.zg = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.zl = obtainStyledAttributes.getDrawable(zm);
        boolean willNotDraw;
        if (this.zl == null) {
            willNotDraw = (zm != 0);
        }
        else {
            willNotDraw = false;
        }
        this.setWillNotDraw(willNotDraw);
        obtainStyledAttributes.recycle();
        if (context.getApplicationInfo().targetSdkVersion >= 19) {
            zm = 0;
        }
        this.zm = (zm != 0);
        this.zA = K.e(context);
    }
    
    public final void C(final boolean zo) {
        this.zo = zo;
    }
    
    public final void a(final android.support.v7.internal.a.i i) {
        this.eB();
        this.up.a(i);
    }
    
    public final void a(final l zy) {
        this.zy = zy;
        if (this.getWindowToken() != null) {
            this.zy.onWindowVisibilityChanged(this.zh);
            if (this.zr != 0) {
                this.onWindowSystemUiVisibilityChanged(this.zr);
                ad.v((View)this);
            }
        }
    }
    
    public final void a(final Menu menu, final y y) {
        this.eB();
        this.up.a(menu, y);
    }
    
    public final void aj(final int n) {
        boolean b = true;
        this.eB();
        switch (n) {
            default: {}
            case 2: {
                this.up.eM();
            }
            case 5: {
                this.up.eN();
            }
            case 9: {
                this.zn = b;
                if (this.getContext().getApplicationInfo().targetSdkVersion >= 19) {
                    b = false;
                }
                this.zm = b;
            }
        }
    }
    
    protected boolean checkLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams instanceof m;
    }
    
    public void draw(final Canvas canvas) {
        super.draw(canvas);
        if (this.zl != null && !this.zm) {
            int n;
            if (this.zk.getVisibility() == 0) {
                n = (int)(0.5f + (this.zk.getBottom() + ad.q((View)this.zk)));
            }
            else {
                n = 0;
            }
            this.zl.setBounds(0, n, this.getWidth(), n + this.zl.getIntrinsicHeight());
            this.zl.draw(canvas);
        }
    }
    
    public final boolean eD() {
        this.eB();
        return this.up.eD();
    }
    
    public final boolean eE() {
        this.eB();
        return this.up.eE();
    }
    
    public final void eF() {
        this.eB();
        this.up.eF();
    }
    
    public final void eG() {
        this.eB();
        this.up.dismissPopupMenus();
    }
    
    public final boolean ez() {
        return this.zn;
    }
    
    protected boolean fitSystemWindows(final Rect rect) {
        this.eB();
        ad.u((View)this);
        boolean a = a((View)this.zk, rect, true, false);
        if (this.zj != null) {
            a |= a((View)this.zj, rect, false, true);
        }
        this.zv.set(rect);
        af.a((View)this, this.zv, this.zs);
        if (!this.zt.equals((Object)this.zs)) {
            this.zt.set(this.zs);
            a = true;
        }
        if (a) {
            this.requestLayout();
        }
        return true;
    }
    
    protected ViewGroup$LayoutParams generateLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return (ViewGroup$LayoutParams)new m(viewGroup$LayoutParams);
    }
    
    public final boolean hideOverflowMenu() {
        this.eB();
        return this.up.hideOverflowMenu();
    }
    
    public final boolean isOverflowMenuShowing() {
        this.eB();
        return this.up.isOverflowMenuShowing();
    }
    
    public final void j(final CharSequence charSequence) {
        this.eB();
        this.up.j(charSequence);
    }
    
    protected void onConfigurationChanged(final Configuration configuration) {
        if (Build$VERSION.SDK_INT >= 8) {
            super.onConfigurationChanged(configuration);
        }
        this.g(this.getContext());
        ad.v((View)this);
    }
    
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.eC();
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        final int childCount = this.getChildCount();
        final int paddingLeft = this.getPaddingLeft();
        this.getPaddingRight();
        final int paddingTop = this.getPaddingTop();
        final int n5 = n4 - n2 - this.getPaddingBottom();
        for (int i = 0; i < childCount; ++i) {
            final View child = this.getChildAt(i);
            if (child.getVisibility() != 8) {
                final m m = (m)child.getLayoutParams();
                final int measuredWidth = child.getMeasuredWidth();
                final int measuredHeight = child.getMeasuredHeight();
                final int n6 = paddingLeft + m.leftMargin;
                int n7;
                if (child == this.zj) {
                    n7 = n5 - measuredHeight - m.bottomMargin;
                }
                else {
                    n7 = paddingTop + m.topMargin;
                }
                child.layout(n6, n7, measuredWidth + n6, measuredHeight + n7);
            }
        }
    }
    
    protected void onMeasure(final int n, final int n2) {
        this.eB();
        this.measureChildWithMargins((View)this.zk, n, 0, n2, 0);
        final m m = (m)this.zk.getLayoutParams();
        int max = Math.max(0, this.zk.getMeasuredWidth() + m.leftMargin + m.rightMargin);
        int max2 = Math.max(0, this.zk.getMeasuredHeight() + m.topMargin + m.bottomMargin);
        int n3 = af.combineMeasuredStates(0, ad.p((View)this.zk));
        if (this.zj != null) {
            this.measureChildWithMargins((View)this.zj, n, 0, n2, 0);
            final m i = (m)this.zj.getLayoutParams();
            final int max3 = Math.max(max, this.zj.getMeasuredWidth() + i.leftMargin + i.rightMargin);
            final int max4 = Math.max(max2, this.zj.getMeasuredHeight() + i.topMargin + i.bottomMargin);
            n3 = af.combineMeasuredStates(n3, ad.p((View)this.zj));
            max = max3;
            max2 = max4;
        }
        boolean b;
        if ((0x100 & ad.u((View)this)) != 0x0) {
            b = true;
        }
        else {
            b = false;
        }
        int n4;
        if (b) {
            n4 = this.zg;
            if (this.zo && this.zk.eu() != null) {
                n4 += this.zg;
            }
        }
        else if (this.zk.getVisibility() != 8) {
            n4 = this.zk.getMeasuredHeight();
        }
        else {
            n4 = 0;
        }
        final v up = this.up;
        this.zu.set(this.zs);
        this.zw.set(this.zv);
        if (!this.zn && !b) {
            final Rect zu = this.zu;
            zu.top += n4;
            final Rect zu2 = this.zu;
            zu2.bottom += 0;
        }
        else {
            final Rect zw = this.zw;
            zw.top += n4;
            final Rect zw2 = this.zw;
            zw2.bottom += 0;
        }
        a((View)this.zi, this.zu, true, true);
        if (!this.zx.equals((Object)this.zw)) {
            this.zx.set(this.zw);
            this.zi.c(this.zw);
        }
        this.measureChildWithMargins((View)this.zi, n, 0, n2, 0);
        final m j = (m)this.zi.getLayoutParams();
        final int max5 = Math.max(max, this.zi.getMeasuredWidth() + j.leftMargin + j.rightMargin);
        final int max6 = Math.max(max2, this.zi.getMeasuredHeight() + j.topMargin + j.bottomMargin);
        final int combineMeasuredStates = af.combineMeasuredStates(n3, ad.p((View)this.zi));
        this.setMeasuredDimension(ad.resolveSizeAndState(Math.max(max5 + (this.getPaddingLeft() + this.getPaddingRight()), this.getSuggestedMinimumWidth()), n, combineMeasuredStates), ad.resolveSizeAndState(Math.max(max6 + (this.getPaddingTop() + this.getPaddingBottom()), this.getSuggestedMinimumHeight()), n2, combineMeasuredStates << 16));
    }
    
    public boolean onNestedFling(final View view, final float n, final float n2, final boolean b) {
        if (!this.uX || !b) {
            return false;
        }
        this.zA.T((int)n2);
        final int finalY = this.zA.getFinalY();
        final int height = this.zk.getHeight();
        boolean b2 = false;
        if (finalY > height) {
            b2 = true;
        }
        if (b2) {
            this.eC();
            this.zG.run();
        }
        else {
            this.eC();
            this.zF.run();
        }
        return this.zp = true;
    }
    
    public void onNestedScroll(final View view, final int n, final int n2, final int n3, final int n4) {
        this.ai(this.zq += n2);
    }
    
    public void onNestedScrollAccepted(final View view, final View view2, final int n) {
        super.onNestedScrollAccepted(view, view2, n);
        int zq;
        if (this.zk != null) {
            zq = -(int)ad.q((View)this.zk);
        }
        else {
            zq = 0;
        }
        this.zq = zq;
        this.eC();
        if (this.zy != null) {
            this.zy.de();
        }
    }
    
    public boolean onStartNestedScroll(final View view, final View view2, final int n) {
        return (n & 0x2) != 0x0 && this.zk.getVisibility() == 0 && this.uX;
    }
    
    public void onStopNestedScroll(final View view) {
        super.onStopNestedScroll(view);
        if (this.uX && !this.zp) {
            if (this.zq <= this.zk.getHeight()) {
                this.eC();
                this.postDelayed(this.zF, 600L);
            }
            else {
                this.eC();
                this.postDelayed(this.zG, 600L);
            }
        }
        if (this.zy != null) {
            final l zy = this.zy;
        }
    }
    
    public void onWindowSystemUiVisibilityChanged(final int zr) {
        boolean b = true;
        if (Build$VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(zr);
        }
        this.eB();
        final int n = zr ^ this.zr;
        this.zr = zr;
        final boolean b2 = (zr & 0x4) == 0x0 && b;
        final boolean b3 = (zr & 0x100) != 0x0 && b;
        if (this.zy != null) {
            final l zy = this.zy;
            if (b3) {
                b = false;
            }
            zy.o(b);
            if (b2 || !b3) {
                this.zy.dc();
            }
            else {
                this.zy.dd();
            }
        }
        if ((n & 0x100) != 0x0 && this.zy != null) {
            ad.v((View)this);
        }
    }
    
    protected void onWindowVisibilityChanged(final int zh) {
        super.onWindowVisibilityChanged(zh);
        this.zh = zh;
        if (this.zy != null) {
            this.zy.onWindowVisibilityChanged(zh);
        }
    }
    
    public final void setHideOnContentScrollEnabled(final boolean ux) {
        if (ux != this.uX && !(this.uX = ux)) {
            if (a.cY()) {
                this.stopNestedScroll();
            }
            this.eC();
            this.ai(0);
        }
    }
    
    public boolean shouldDelayChildPressedState() {
        return false;
    }
    
    public final boolean showOverflowMenu() {
        this.eB();
        return this.up.showOverflowMenu();
    }
}
