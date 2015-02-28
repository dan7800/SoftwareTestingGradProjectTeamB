package android.support.v7.widget;

import android.content.*;
import android.util.*;
import android.view.accessibility.*;
import android.support.v7.internal.view.menu.*;
import android.content.res.*;
import android.os.*;
import android.support.v7.internal.widget.*;
import android.view.*;

public class ActionMenuView extends LinearLayoutCompat implements k, z
{
    private boolean BJ;
    private int BS;
    private int Ch;
    private ActionMenuPresenter Ci;
    private y Cj;
    private j Ck;
    private boolean Cl;
    private int Cm;
    private int Cn;
    private m Co;
    private Context mContext;
    private i ve;
    private Context ym;
    
    public ActionMenuView(final Context context) {
        this(context, null);
    }
    
    public ActionMenuView(final Context context, final AttributeSet set) {
        super(context, set);
        this.mContext = context;
        this.setBaselineAligned(false);
        final float density = context.getResources().getDisplayMetrics().density;
        this.BS = (int)(56.0f * density);
        this.Cn = (int)(density * 4.0f);
        this.ym = context;
        this.Ch = 0;
    }
    
    protected static android.support.v7.widget.k a(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (viewGroup$LayoutParams != null) {
            android.support.v7.widget.k k;
            if (viewGroup$LayoutParams instanceof android.support.v7.widget.k) {
                k = new android.support.v7.widget.k((android.support.v7.widget.k)viewGroup$LayoutParams);
            }
            else {
                k = new android.support.v7.widget.k(viewGroup$LayoutParams);
            }
            if (k.gravity <= 0) {
                k.gravity = 16;
            }
            return k;
        }
        return fe();
    }
    
    private boolean at(final int n) {
        if (n == 0) {
            return false;
        }
        final View child = this.getChildAt(n - 1);
        final View child2 = this.getChildAt(n);
        final int childCount = this.getChildCount();
        boolean b = false;
        if (n < childCount) {
            final boolean b2 = child instanceof android.support.v7.widget.i;
            b = false;
            if (b2) {
                b = (false | ((android.support.v7.widget.i)child).dz());
            }
        }
        if (n > 0 && child2 instanceof android.support.v7.widget.i) {
            return b | ((android.support.v7.widget.i)child2).dy();
        }
        return b;
    }
    
    static int b(final View view, final int n, final int n2, final int n3, final int n4) {
        final android.support.v7.widget.k k = (android.support.v7.widget.k)view.getLayoutParams();
        final int measureSpec = View$MeasureSpec.makeMeasureSpec(View$MeasureSpec.getSize(n3) - n4, View$MeasureSpec.getMode(n3));
        ActionMenuItemView actionMenuItemView;
        if (view instanceof ActionMenuItemView) {
            actionMenuItemView = (ActionMenuItemView)view;
        }
        else {
            actionMenuItemView = null;
        }
        boolean b;
        if (actionMenuItemView != null && actionMenuItemView.hasText()) {
            b = true;
        }
        else {
            b = false;
        }
        int cr;
        if (n2 > 0 && (!b || n2 >= 2)) {
            view.measure(View$MeasureSpec.makeMeasureSpec(n * n2, Integer.MIN_VALUE), measureSpec);
            final int measuredWidth = view.getMeasuredWidth();
            cr = measuredWidth / n;
            if (measuredWidth % n != 0) {
                ++cr;
            }
            if (b && cr < 2) {
                cr = 2;
            }
        }
        else {
            cr = 0;
        }
        final boolean cq = k.Cq;
        boolean ct = false;
        if (!cq) {
            ct = false;
            if (b) {
                ct = true;
            }
        }
        k.Ct = ct;
        k.Cr = cr;
        view.measure(View$MeasureSpec.makeMeasureSpec(cr * n, 1073741824), measureSpec);
        return cr;
    }
    
    private android.support.v7.widget.k c(final AttributeSet set) {
        return new android.support.v7.widget.k(this.getContext(), set);
    }
    
    private static android.support.v7.widget.k fe() {
        final android.support.v7.widget.k k = new android.support.v7.widget.k();
        k.gravity = 16;
        return k;
    }
    
    public static android.support.v7.widget.k ff() {
        final android.support.v7.widget.k fe = fe();
        fe.Cq = true;
        return fe;
    }
    
    public final void H(final boolean bj) {
        this.BJ = bj;
    }
    
    public final void a(final y cj, final j ck) {
        this.Cj = cj;
        this.Ck = ck;
    }
    
    public final void a(final m co) {
        this.Co = co;
    }
    
    @Override
    protected boolean checkLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams != null && viewGroup$LayoutParams instanceof android.support.v7.widget.k;
    }
    
    public final void dismissPopupMenus() {
        if (this.Ci != null) {
            this.Ci.fb();
        }
    }
    
    public boolean dispatchPopulateAccessibilityEvent(final AccessibilityEvent accessibilityEvent) {
        return false;
    }
    
    @Override
    public final void e(final i ve) {
        this.ve = ve;
    }
    
    @Override
    public final boolean e(final android.support.v7.internal.view.menu.m m) {
        return this.ve.c((MenuItem)m, 0);
    }
    
    public final boolean eE() {
        return this.Ci != null && this.Ci.eE();
    }
    
    public final boolean fd() {
        return this.BJ;
    }
    
    public final i fg() {
        return this.ve;
    }
    
    public final void fh() {
        this.Ci.G(true);
    }
    
    public final Menu getMenu() {
        if (this.ve == null) {
            final Context context = this.getContext();
            (this.ve = new i(context)).a(new l(this, (byte)0));
            (this.Ci = new ActionMenuPresenter(context)).eZ();
            final ActionMenuPresenter ci = this.Ci;
            y cj;
            if (this.Cj != null) {
                cj = this.Cj;
            }
            else {
                cj = new android.support.v7.widget.j(this, (byte)0);
            }
            ci.a(cj);
            this.ve.a(this.Ci, this.ym);
            this.Ci.a(this);
        }
        return (Menu)this.ve;
    }
    
    public final boolean hideOverflowMenu() {
        return this.Ci != null && this.Ci.hideOverflowMenu();
    }
    
    public final boolean isOverflowMenuShowing() {
        return this.Ci != null && this.Ci.isOverflowMenuShowing();
    }
    
    public final void k(final ActionMenuPresenter ci) {
        (this.Ci = ci).a(this);
    }
    
    public void onConfigurationChanged(final Configuration configuration) {
        if (Build$VERSION.SDK_INT >= 8) {
            super.onConfigurationChanged(configuration);
        }
        this.Ci.r(false);
        if (this.Ci != null && this.Ci.isOverflowMenuShowing()) {
            this.Ci.hideOverflowMenu();
            this.Ci.showOverflowMenu();
        }
    }
    
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.dismissPopupMenus();
    }
    
    @Override
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        if (!this.Cl) {
            super.onLayout(b, n, n2, n3, n4);
        }
        else {
            final int childCount = this.getChildCount();
            final int n5 = (n4 - n2) / 2;
            final int ff = this.fF();
            int n6 = 0;
            int n7 = n3 - n - this.getPaddingRight() - this.getPaddingLeft();
            int n8 = 0;
            final boolean af = android.support.v7.internal.widget.af.af((View)this);
            int n12;
            int n13;
            int n14;
            for (int i = 0; i < childCount; ++i, n6 = n14, n7 = n12, n8 = n13) {
                final View child = this.getChildAt(i);
                if (child.getVisibility() != 8) {
                    final android.support.v7.widget.k k = (android.support.v7.widget.k)child.getLayoutParams();
                    if (k.Cq) {
                        int measuredWidth = child.getMeasuredWidth();
                        if (this.at(i)) {
                            measuredWidth += ff;
                        }
                        final int measuredHeight = child.getMeasuredHeight();
                        int n9;
                        int n10;
                        if (af) {
                            n9 = this.getPaddingLeft() + k.leftMargin;
                            n10 = n9 + measuredWidth;
                        }
                        else {
                            n10 = this.getWidth() - this.getPaddingRight() - k.rightMargin;
                            n9 = n10 - measuredWidth;
                        }
                        final int n11 = n5 - measuredHeight / 2;
                        child.layout(n9, n11, n10, measuredHeight + n11);
                        n12 = n7 - measuredWidth;
                        n13 = 1;
                        n14 = n6;
                    }
                    else {
                        final int n15 = n7 - (child.getMeasuredWidth() + k.leftMargin + k.rightMargin);
                        this.at(i);
                        n14 = n6 + 1;
                        final int n16 = n8;
                        n12 = n15;
                        n13 = n16;
                    }
                }
                else {
                    n13 = n8;
                    n14 = n6;
                    n12 = n7;
                }
            }
            if (childCount == 1 && n8 == 0) {
                final View child2 = this.getChildAt(0);
                final int measuredWidth2 = child2.getMeasuredWidth();
                final int measuredHeight2 = child2.getMeasuredHeight();
                final int n17 = (n3 - n) / 2 - measuredWidth2 / 2;
                final int n18 = n5 - measuredHeight2 / 2;
                child2.layout(n17, n18, measuredWidth2 + n17, measuredHeight2 + n18);
                return;
            }
            int n19;
            if (n8 != 0) {
                n19 = 0;
            }
            else {
                n19 = 1;
            }
            final int n20 = n6 - n19;
            int n21;
            if (n20 > 0) {
                n21 = n7 / n20;
            }
            else {
                n21 = 0;
            }
            final int max = Math.max(0, n21);
            if (af) {
                int n22 = this.getWidth() - this.getPaddingRight();
                int n25;
                for (int j = 0; j < childCount; ++j, n22 = n25) {
                    final View child3 = this.getChildAt(j);
                    final android.support.v7.widget.k l = (android.support.v7.widget.k)child3.getLayoutParams();
                    if (child3.getVisibility() != 8 && !l.Cq) {
                        final int n23 = n22 - l.rightMargin;
                        final int measuredWidth3 = child3.getMeasuredWidth();
                        final int measuredHeight3 = child3.getMeasuredHeight();
                        final int n24 = n5 - measuredHeight3 / 2;
                        child3.layout(n23 - measuredWidth3, n24, n23, measuredHeight3 + n24);
                        n25 = n23 - (max + (measuredWidth3 + l.leftMargin));
                    }
                    else {
                        n25 = n22;
                    }
                }
            }
            else {
                int paddingLeft = this.getPaddingLeft();
                int n29;
                for (int n26 = 0; n26 < childCount; ++n26, paddingLeft = n29) {
                    final View child4 = this.getChildAt(n26);
                    final android.support.v7.widget.k m = (android.support.v7.widget.k)child4.getLayoutParams();
                    if (child4.getVisibility() != 8 && !m.Cq) {
                        final int n27 = paddingLeft + m.leftMargin;
                        final int measuredWidth4 = child4.getMeasuredWidth();
                        final int measuredHeight4 = child4.getMeasuredHeight();
                        final int n28 = n5 - measuredHeight4 / 2;
                        child4.layout(n27, n28, n27 + measuredWidth4, measuredHeight4 + n28);
                        n29 = n27 + (max + (measuredWidth4 + m.rightMargin));
                    }
                    else {
                        n29 = paddingLeft;
                    }
                }
            }
        }
    }
    
    @Override
    protected void onMeasure(final int n, final int n2) {
        final boolean cl = this.Cl;
        this.Cl = (View$MeasureSpec.getMode(n) == 1073741824);
        if (cl != this.Cl) {
            this.Cm = 0;
        }
        final int size = View$MeasureSpec.getSize(n);
        if (this.Cl && this.ve != null && size != this.Cm) {
            this.Cm = size;
            this.ve.t(true);
        }
        final int childCount = this.getChildCount();
        if (!this.Cl || childCount <= 0) {
            for (int i = 0; i < childCount; ++i) {
                final android.support.v7.widget.k k = (android.support.v7.widget.k)this.getChildAt(i).getLayoutParams();
                k.rightMargin = 0;
                k.leftMargin = 0;
            }
            super.onMeasure(n, n2);
            return;
        }
        final int mode = View$MeasureSpec.getMode(n2);
        final int size2 = View$MeasureSpec.getSize(n);
        final int size3 = View$MeasureSpec.getSize(n2);
        final int n3 = this.getPaddingLeft() + this.getPaddingRight();
        final int n4 = this.getPaddingTop() + this.getPaddingBottom();
        final int childMeasureSpec = getChildMeasureSpec(n2, n4, -2);
        final int n5 = size2 - n3;
        int n6 = n5 / this.BS;
        final int n7 = n5 % this.BS;
        if (n6 == 0) {
            this.setMeasuredDimension(n5, 0);
            return;
        }
        final int n8 = this.BS + n7 / n6;
        int n9 = 0;
        int n10 = 0;
        int n11 = 0;
        int n12 = 0;
        int n13 = 0;
        long n14 = 0L;
        final int childCount2 = this.getChildCount();
        int n21;
        int n22;
        long n23;
        int n24;
        int n25;
        for (int j = 0; j < childCount2; ++j, n10 = n24, n9 = n21, n6 = n22, n14 = n23, n12 = n25) {
            final View child = this.getChildAt(j);
            if (child.getVisibility() != 8) {
                final boolean b = child instanceof ActionMenuItemView;
                final int n15 = n12 + 1;
                if (b) {
                    child.setPadding(this.Cn, 0, this.Cn, 0);
                }
                final android.support.v7.widget.k l = (android.support.v7.widget.k)child.getLayoutParams();
                l.Cv = false;
                l.Cs = 0;
                l.Cr = 0;
                l.Ct = false;
                l.leftMargin = 0;
                l.rightMargin = 0;
                l.Cu = (b && ((ActionMenuItemView)child).hasText());
                int n16;
                if (l.Cq) {
                    n16 = 1;
                }
                else {
                    n16 = n6;
                }
                final int b2 = b(child, n8, n16, childMeasureSpec, n4);
                final int max = Math.max(n10, b2);
                int n17;
                if (l.Ct) {
                    n17 = n11 + 1;
                }
                else {
                    n17 = n11;
                }
                int n18;
                if (l.Cq) {
                    n18 = 1;
                }
                else {
                    n18 = n13;
                }
                final int n19 = n6 - b2;
                final int max2 = Math.max(n9, child.getMeasuredHeight());
                if (b2 == 1) {
                    final long n20 = n14 | 1 << j;
                    n21 = max2;
                    n22 = n19;
                    n11 = n17;
                    n13 = n18;
                    n23 = n20;
                    n24 = max;
                    n25 = n15;
                }
                else {
                    n25 = n15;
                    n24 = max;
                    final long n26 = n14;
                    n21 = max2;
                    n22 = n19;
                    n13 = n18;
                    n11 = n17;
                    n23 = n26;
                }
            }
            else {
                n25 = n12;
                n23 = n14;
                n21 = n9;
                n22 = n6;
                n24 = n10;
            }
        }
        final boolean b3 = n13 != 0 && n12 == 2;
        boolean b4 = false;
        long n27 = n14;
        int n28;
        int n36;
        for (n28 = n6; n11 > 0 && n28 > 0; n28 = n36) {
            int n29 = Integer.MAX_VALUE;
            long n30 = 0L;
            int n31 = 0;
            int n32 = 0;
        Label_0631_Outer:
            while (n32 < childCount2) {
                final android.support.v7.widget.k m = (android.support.v7.widget.k)this.getChildAt(n32).getLayoutParams();
                while (true) {
                    Label_1381: {
                        if (!m.Ct) {
                            break Label_1381;
                        }
                        int cr;
                        int n33;
                        if (m.Cr < n29) {
                            cr = m.Cr;
                            n30 = 1 << n32;
                            n33 = 1;
                        }
                        else {
                            if (m.Cr != n29) {
                                break Label_1381;
                            }
                            n30 |= 1 << n32;
                            n33 = n31 + 1;
                            cr = n29;
                        }
                        ++n32;
                        n29 = cr;
                        n31 = n33;
                        continue Label_0631_Outer;
                    }
                    int n33 = n31;
                    int cr = n29;
                    continue;
                }
            }
            n27 |= n30;
            if (n31 > n28) {
                break;
            }
            final int n34 = n29 + 1;
            int n35 = 0;
            n36 = n28;
            long n37 = n27;
            while (n35 < childCount2) {
                final View child2 = this.getChildAt(n35);
                final android.support.v7.widget.k k2 = (android.support.v7.widget.k)child2.getLayoutParams();
                int n38;
                if ((n30 & 1 << n35) == 0x0L) {
                    if (k2.Cr == n34) {
                        n37 |= 1 << n35;
                        n38 = n36;
                    }
                    else {
                        n38 = n36;
                    }
                }
                else {
                    if (b3 && k2.Cu && n36 == 1) {
                        child2.setPadding(n8 + this.Cn, 0, this.Cn, 0);
                    }
                    ++k2.Cr;
                    k2.Cv = true;
                    n38 = n36 - 1;
                }
                ++n35;
                n36 = n38;
            }
            n27 = n37;
            b4 = true;
        }
        final long n39 = n27;
        boolean b5;
        if (n13 == 0 && n12 == 1) {
            b5 = true;
        }
        else {
            b5 = false;
        }
        int n44 = 0;
        Label_1222: {
            if (n28 > 0 && n39 != 0L && (n28 < n12 - 1 || b5 || n10 > 1)) {
                float n40 = Long.bitCount(n39);
                while (true) {
                    Label_1367: {
                        if (b5) {
                            break Label_1367;
                        }
                        if ((0x1L & n39) != 0x0L && !((android.support.v7.widget.k)this.getChildAt(0).getLayoutParams()).Cu) {
                            n40 -= 0.5f;
                        }
                        if ((n39 & 1 << childCount2 - 1) == 0x0L || ((android.support.v7.widget.k)this.getChildAt(childCount2 - 1).getLayoutParams()).Cu) {
                            break Label_1367;
                        }
                        final float n41 = n40 - 0.5f;
                        int n42;
                        if (n41 > 0.0f) {
                            n42 = (int)(n28 * n8 / n41);
                        }
                        else {
                            n42 = 0;
                        }
                        int n43 = 0;
                        n44 = (b4 ? 1 : 0);
                    Label_1120_Outer:
                        while (n43 < childCount2) {
                            while (true) {
                                Label_1211: {
                                    if ((n39 & 1 << n43) == 0x0L) {
                                        break Label_1211;
                                    }
                                    final View child3 = this.getChildAt(n43);
                                    final android.support.v7.widget.k k3 = (android.support.v7.widget.k)child3.getLayoutParams();
                                    int n45;
                                    if (child3 instanceof ActionMenuItemView) {
                                        k3.Cs = n42;
                                        k3.Cv = true;
                                        if (n43 == 0 && !k3.Cu) {
                                            k3.leftMargin = -n42 / 2;
                                        }
                                        n45 = 1;
                                    }
                                    else if (k3.Cq) {
                                        k3.Cs = n42;
                                        k3.Cv = true;
                                        k3.rightMargin = -n42 / 2;
                                        n45 = 1;
                                    }
                                    else {
                                        if (n43 != 0) {
                                            k3.leftMargin = n42 / 2;
                                        }
                                        if (n43 != childCount2 - 1) {
                                            k3.rightMargin = n42 / 2;
                                        }
                                        break Label_1211;
                                    }
                                    ++n43;
                                    n44 = n45;
                                    continue Label_1120_Outer;
                                }
                                int n45 = n44;
                                continue;
                            }
                        }
                        break Label_1222;
                    }
                    final float n41 = n40;
                    continue;
                }
            }
            n44 = (b4 ? 1 : 0);
        }
        if (n44 != 0) {
            for (int n46 = 0; n46 < childCount2; ++n46) {
                final View child4 = this.getChildAt(n46);
                final android.support.v7.widget.k k4 = (android.support.v7.widget.k)child4.getLayoutParams();
                if (k4.Cv) {
                    child4.measure(View$MeasureSpec.makeMeasureSpec(n8 * k4.Cr + k4.Cs, 1073741824), childMeasureSpec);
                }
            }
        }
        if (mode == 1073741824) {
            n9 = size3;
        }
        this.setMeasuredDimension(n5, n9);
    }
    
    public final void setPopupTheme(final int ch) {
        if (this.Ch != ch) {
            if ((this.Ch = ch) != 0) {
                this.ym = (Context)new ContextThemeWrapper(this.mContext, ch);
                return;
            }
            this.ym = this.mContext;
        }
    }
    
    public final boolean showOverflowMenu() {
        return this.Ci != null && this.Ci.showOverflowMenu();
    }
}
