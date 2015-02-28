package android.support.v7.widget;

import android.widget.*;
import android.graphics.drawable.*;
import android.content.*;
import android.util.*;
import android.support.v7.a.*;
import android.content.res.*;
import java.util.*;
import android.support.v7.internal.view.menu.*;
import android.support.v7.internal.widget.*;
import android.os.*;
import android.view.*;
import android.support.v4.view.*;
import android.text.*;

public class Toolbar extends ViewGroup
{
    private final U AO;
    private int Ch;
    private y Cj;
    private j Ck;
    private TextView FN;
    private TextView FO;
    private ImageButton FP;
    private ImageView FQ;
    private Drawable FR;
    private CharSequence FS;
    private ImageButton FT;
    View FU;
    private int FV;
    private int FW;
    private int FX;
    private int FY;
    private int FZ;
    private int Ga;
    private int Gb;
    private int Gc;
    private final C Gd;
    private CharSequence Ge;
    private CharSequence Gf;
    private int Gg;
    private int Gh;
    private boolean Gi;
    private final ArrayList<View> Gj;
    private final int[] Gk;
    private aa Gl;
    private final m Gm;
    private android.support.v7.internal.widget.aa Gn;
    private ActionMenuPresenter Go;
    private Y Gp;
    private boolean Gq;
    private int Gr;
    private final Runnable Gs;
    private int dV;
    private Context ym;
    private ActionMenuView yn;
    
    public Toolbar(final Context context) {
        this(context, null);
    }
    
    public Toolbar(final Context context, final AttributeSet set) {
        this(context, set, b.toolbarStyle);
    }
    
    public Toolbar(Context context, final AttributeSet set, final int n) {
        final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(set, l.tp, n, 0);
        final int resourceId = obtainStyledAttributes.getResourceId(l.tE, 0);
        if (resourceId != 0) {
            context = (Context)new ContextThemeWrapper(context, resourceId);
        }
        obtainStyledAttributes.recycle();
        super(context, set, n);
        this.Gd = new C();
        this.dV = 8388627;
        this.Gj = new ArrayList<View>();
        this.Gk = new int[2];
        this.Gm = new V(this);
        this.Gs = new W(this);
        final Z a = Z.a(this.getContext(), set, l.tp, n);
        this.FV = a.getResourceId(l.tL, 0);
        this.FW = a.getResourceId(l.tD, 0);
        this.dV = a.getInteger(l.tq, this.dV);
        this.FX = 48;
        final int dimensionPixelOffset = a.getDimensionPixelOffset(l.tK, 0);
        this.Gc = dimensionPixelOffset;
        this.Gb = dimensionPixelOffset;
        this.Ga = dimensionPixelOffset;
        this.FZ = dimensionPixelOffset;
        final int dimensionPixelOffset2 = a.getDimensionPixelOffset(l.tI, -1);
        if (dimensionPixelOffset2 >= 0) {
            this.FZ = dimensionPixelOffset2;
        }
        final int dimensionPixelOffset3 = a.getDimensionPixelOffset(l.tH, -1);
        if (dimensionPixelOffset3 >= 0) {
            this.Ga = dimensionPixelOffset3;
        }
        final int dimensionPixelOffset4 = a.getDimensionPixelOffset(l.tJ, -1);
        if (dimensionPixelOffset4 >= 0) {
            this.Gb = dimensionPixelOffset4;
        }
        final int dimensionPixelOffset5 = a.getDimensionPixelOffset(l.tG, -1);
        if (dimensionPixelOffset5 >= 0) {
            this.Gc = dimensionPixelOffset5;
        }
        this.FY = a.getDimensionPixelSize(l.ty, -1);
        final int dimensionPixelOffset6 = a.getDimensionPixelOffset(l.tx, Integer.MIN_VALUE);
        final int dimensionPixelOffset7 = a.getDimensionPixelOffset(l.tu, Integer.MIN_VALUE);
        this.Gd.p(a.getDimensionPixelSize(l.tv, 0), a.getDimensionPixelSize(l.tw, 0));
        if (dimensionPixelOffset6 != Integer.MIN_VALUE || dimensionPixelOffset7 != Integer.MIN_VALUE) {
            this.Gd.o(dimensionPixelOffset6, dimensionPixelOffset7);
        }
        this.FR = a.getDrawable(l.tt);
        this.FS = a.getText(l.ts);
        final CharSequence text = a.getText(l.tF);
        if (!TextUtils.isEmpty(text)) {
            this.setTitle(text);
        }
        final CharSequence text2 = a.getText(l.tC);
        if (!TextUtils.isEmpty(text2)) {
            this.setSubtitle(text2);
        }
        this.ym = this.getContext();
        this.setPopupTheme(a.getResourceId(l.tB, 0));
        final Drawable drawable = a.getDrawable(l.tA);
        if (drawable != null) {
            this.setNavigationIcon(drawable);
        }
        final CharSequence text3 = a.getText(l.tz);
        if (!TextUtils.isEmpty(text3)) {
            this.setNavigationContentDescription(text3);
        }
        this.Gr = a.getDimensionPixelSize(l.tr, 0);
        a.recycle();
        this.AO = a.eU();
    }
    
    private int a(final View view, final int n, final int n2, final int n3, final int n4, final int[] array) {
        final ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams)view.getLayoutParams();
        final int n5 = viewGroup$MarginLayoutParams.leftMargin - array[0];
        final int n6 = viewGroup$MarginLayoutParams.rightMargin - array[1];
        final int n7 = Math.max(0, n5) + Math.max(0, n6);
        array[0] = Math.max(0, -n5);
        array[1] = Math.max(0, -n6);
        view.measure(getChildMeasureSpec(n, n2 + (n7 + (this.getPaddingLeft() + this.getPaddingRight())), viewGroup$MarginLayoutParams.width), getChildMeasureSpec(n3, n4 + (this.getPaddingTop() + this.getPaddingBottom() + viewGroup$MarginLayoutParams.topMargin + viewGroup$MarginLayoutParams.bottomMargin), viewGroup$MarginLayoutParams.height));
        return n7 + view.getMeasuredWidth();
    }
    
    private int a(final View view, final int n, final int[] array, final int n2) {
        final android.support.v7.widget.Z z = (android.support.v7.widget.Z)view.getLayoutParams();
        final int n3 = z.leftMargin - array[0];
        final int n4 = n + Math.max(0, n3);
        array[0] = Math.max(0, -n3);
        final int l = this.l(view, n2);
        final int measuredWidth = view.getMeasuredWidth();
        view.layout(n4, l, n4 + measuredWidth, l + view.getMeasuredHeight());
        return n4 + (measuredWidth + z.rightMargin);
    }
    
    private void a(final List<View> list, final int n) {
        int n2 = 1;
        if (ad.m((View)this) != n2) {
            n2 = 0;
        }
        final int childCount = this.getChildCount();
        final int absoluteGravity = v.getAbsoluteGravity(n, ad.m((View)this));
        list.clear();
        int i = 0;
        if (n2 != 0) {
            for (int j = childCount - 1; j >= 0; --j) {
                final View child = this.getChildAt(j);
                final android.support.v7.widget.Z z = (android.support.v7.widget.Z)child.getLayoutParams();
                if (z.Gv == 0 && this.aj(child) && this.aB(z.gravity) == absoluteGravity) {
                    list.add(child);
                }
            }
        }
        else {
            while (i < childCount) {
                final View child2 = this.getChildAt(i);
                final android.support.v7.widget.Z z2 = (android.support.v7.widget.Z)child2.getLayoutParams();
                if (z2.Gv == 0 && this.aj(child2) && this.aB(z2.gravity) == absoluteGravity) {
                    list.add(child2);
                }
                ++i;
            }
        }
    }
    
    private int aB(final int n) {
        final int m = ad.m((View)this);
        int n2 = 0x7 & v.getAbsoluteGravity(n, m);
        switch (n2) {
            default: {
                if (m == 1) {
                    n2 = 5;
                    return n2;
                }
                return 3;
            }
            case 1:
            case 3:
            case 5: {
                return n2;
            }
        }
    }
    
    private void ai(final View view) {
        final ViewGroup$LayoutParams layoutParams = view.getLayoutParams();
        android.support.v7.widget.Z c;
        if (layoutParams == null) {
            c = new android.support.v7.widget.Z();
        }
        else if (!this.checkLayoutParams(layoutParams)) {
            c = c(layoutParams);
        }
        else {
            c = (android.support.v7.widget.Z)layoutParams;
        }
        c.Gv = 1;
        this.addView(view, (ViewGroup$LayoutParams)c);
    }
    
    private boolean aj(final View view) {
        return view != null && view.getParent() == this && view.getVisibility() != 8;
    }
    
    private static int ak(final View view) {
        final ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams)view.getLayoutParams();
        return F.a(viewGroup$MarginLayoutParams) + F.b(viewGroup$MarginLayoutParams);
    }
    
    private static int al(final View view) {
        final ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams)view.getLayoutParams();
        return viewGroup$MarginLayoutParams.topMargin + viewGroup$MarginLayoutParams.bottomMargin;
    }
    
    private void am(final View view) {
        if (((android.support.v7.widget.Z)view.getLayoutParams()).Gv != 2 && view != this.yn) {
            int visibility;
            if (this.FU != null) {
                visibility = 8;
            }
            else {
                visibility = 0;
            }
            view.setVisibility(visibility);
        }
    }
    
    private int b(final View view, final int n, final int[] array, final int n2) {
        final android.support.v7.widget.Z z = (android.support.v7.widget.Z)view.getLayoutParams();
        final int n3 = z.rightMargin - array[1];
        final int n4 = n - Math.max(0, n3);
        array[1] = Math.max(0, -n3);
        final int l = this.l(view, n2);
        final int measuredWidth = view.getMeasuredWidth();
        view.layout(n4 - measuredWidth, l, n4, l + view.getMeasuredHeight());
        return n4 - (measuredWidth + z.leftMargin);
    }
    
    private static android.support.v7.widget.Z c(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (viewGroup$LayoutParams instanceof android.support.v7.widget.Z) {
            return new android.support.v7.widget.Z((android.support.v7.widget.Z)viewGroup$LayoutParams);
        }
        if (viewGroup$LayoutParams instanceof android.support.v7.app.b) {
            return new android.support.v7.widget.Z((android.support.v7.app.b)viewGroup$LayoutParams);
        }
        if (viewGroup$LayoutParams instanceof ViewGroup$MarginLayoutParams) {
            return new android.support.v7.widget.Z((ViewGroup$MarginLayoutParams)viewGroup$LayoutParams);
        }
        return new android.support.v7.widget.Z(viewGroup$LayoutParams);
    }
    
    private void f(final View view, final int n, final int n2, final int n3, int min) {
        final ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams)view.getLayoutParams();
        final int childMeasureSpec = getChildMeasureSpec(n, n2 + (this.getPaddingLeft() + this.getPaddingRight() + viewGroup$MarginLayoutParams.leftMargin + viewGroup$MarginLayoutParams.rightMargin), viewGroup$MarginLayoutParams.width);
        int n4 = getChildMeasureSpec(n3, 0 + (this.getPaddingTop() + this.getPaddingBottom() + viewGroup$MarginLayoutParams.topMargin + viewGroup$MarginLayoutParams.bottomMargin), viewGroup$MarginLayoutParams.height);
        final int mode = View$MeasureSpec.getMode(n4);
        if (mode != 1073741824 && min >= 0) {
            if (mode != 0) {
                min = Math.min(View$MeasureSpec.getSize(n4), min);
            }
            n4 = View$MeasureSpec.makeMeasureSpec(min, 1073741824);
        }
        view.measure(childMeasureSpec, n4);
    }
    
    private void fP() {
        if (this.yn == null) {
            (this.yn = new ActionMenuView(this.getContext())).setPopupTheme(this.Ch);
            this.yn.a(this.Gm);
            this.yn.a(this.Cj, this.Ck);
            final android.support.v7.widget.Z layoutParams = new android.support.v7.widget.Z();
            layoutParams.gravity = (0x800005 | (0x70 & this.FX));
            this.yn.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
            this.ai((View)this.yn);
        }
    }
    
    private void fQ() {
        if (this.FP == null) {
            this.FP = new ImageButton(this.getContext(), (AttributeSet)null, b.py);
            final android.support.v7.widget.Z layoutParams = new android.support.v7.widget.Z();
            layoutParams.gravity = (0x800003 | (0x70 & this.FX));
            this.FP.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        }
    }
    
    protected static android.support.v7.widget.Z fR() {
        return new android.support.v7.widget.Z();
    }
    
    private int l(final View view, final int n) {
        final android.support.v7.widget.Z z = (android.support.v7.widget.Z)view.getLayoutParams();
        final int measuredHeight = view.getMeasuredHeight();
        int n2;
        if (n > 0) {
            n2 = (measuredHeight - n) / 2;
        }
        else {
            n2 = 0;
        }
        int n3 = 0x70 & z.gravity;
        switch (n3) {
            default: {
                n3 = (0x70 & this.dV);
            }
            case 16:
            case 48:
            case 80: {
                switch (n3) {
                    default: {
                        final int paddingTop = this.getPaddingTop();
                        final int paddingBottom = this.getPaddingBottom();
                        final int height = this.getHeight();
                        final int n4 = (height - paddingTop - paddingBottom - measuredHeight) / 2;
                        int n5;
                        if (n4 < z.topMargin) {
                            n5 = z.topMargin;
                        }
                        else {
                            final int n6 = height - paddingBottom - measuredHeight - n4 - paddingTop;
                            if (n6 < z.bottomMargin) {
                                n5 = Math.max(0, n4 - (z.bottomMargin - n6));
                            }
                            else {
                                n5 = n4;
                            }
                        }
                        return n5 + paddingTop;
                    }
                    case 48: {
                        return this.getPaddingTop() - n2;
                    }
                    case 80: {
                        return this.getHeight() - this.getPaddingBottom() - measuredHeight - z.bottomMargin - n2;
                    }
                }
                break;
            }
        }
    }
    
    public final void D(final boolean gq) {
        this.Gq = gq;
        this.requestLayout();
    }
    
    public final void a(final i i, final ActionMenuPresenter go) {
        if (i != null || this.yn != null) {
            this.fP();
            final i fg = this.yn.fg();
            if (fg != i) {
                if (fg != null) {
                    fg.b(this.Go);
                    fg.b(this.Gp);
                }
                if (this.Gp == null) {
                    this.Gp = new Y(this, (byte)0);
                }
                go.G(true);
                if (i != null) {
                    i.a(go, this.ym);
                    i.a(this.Gp, this.ym);
                }
                else {
                    go.a(this.ym, null);
                    this.Gp.a(this.ym, null);
                    go.r(true);
                    this.Gp.r(true);
                }
                this.yn.setPopupTheme(this.Ch);
                this.yn.k(go);
                this.Go = go;
            }
        }
    }
    
    public final void a(final y cj, final j ck) {
        this.Cj = cj;
        this.Ck = ck;
    }
    
    public final void a(final aa gl) {
        this.Gl = gl;
    }
    
    protected boolean checkLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return super.checkLayoutParams(viewGroup$LayoutParams) && viewGroup$LayoutParams instanceof android.support.v7.widget.Z;
    }
    
    public final void collapseActionView() {
        android.support.v7.internal.view.menu.m gu;
        if (this.Gp == null) {
            gu = null;
        }
        else {
            gu = this.Gp.Gu;
        }
        if (gu != null) {
            gu.collapseActionView();
        }
    }
    
    public final void dismissPopupMenus() {
        if (this.yn != null) {
            this.yn.dismissPopupMenus();
        }
    }
    
    public final boolean eD() {
        return this.getVisibility() == 0 && this.yn != null && this.yn.fd();
    }
    
    public final boolean eE() {
        return this.yn != null && this.yn.eE();
    }
    
    public final android.support.v7.internal.widget.v fS() {
        if (this.Gn == null) {
            this.Gn = new android.support.v7.internal.widget.aa(this, true);
        }
        return this.Gn;
    }
    
    public final Menu getMenu() {
        this.fP();
        if (this.yn.fg() == null) {
            final i i = (i)this.yn.getMenu();
            if (this.Gp == null) {
                this.Gp = new Y(this, (byte)0);
            }
            this.yn.fh();
            i.a(this.Gp, this.ym);
        }
        return this.yn.getMenu();
    }
    
    public final CharSequence getNavigationContentDescription() {
        if (this.FP != null) {
            return this.FP.getContentDescription();
        }
        return null;
    }
    
    public final Drawable getNavigationIcon() {
        if (this.FP != null) {
            return this.FP.getDrawable();
        }
        return null;
    }
    
    public final CharSequence getSubtitle() {
        return this.Gf;
    }
    
    public final CharSequence getTitle() {
        return this.Ge;
    }
    
    public final boolean hasExpandedActionView() {
        return this.Gp != null && this.Gp.Gu != null;
    }
    
    public final boolean hideOverflowMenu() {
        return this.yn != null && this.yn.hideOverflowMenu();
    }
    
    public final boolean isOverflowMenuShowing() {
        return this.yn != null && this.yn.isOverflowMenuShowing();
    }
    
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.removeCallbacks(this.Gs);
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        boolean b2;
        if (ad.m((View)this) == 1) {
            b2 = true;
        }
        else {
            b2 = false;
        }
        final int width = this.getWidth();
        final int height = this.getHeight();
        final int paddingLeft = this.getPaddingLeft();
        final int paddingRight = this.getPaddingRight();
        final int paddingTop = this.getPaddingTop();
        final int paddingBottom = this.getPaddingBottom();
        final int n5 = width - paddingRight;
        final int[] gk = this.Gk;
        gk[gk[1] = 0] = 0;
        int n6;
        if (Build$VERSION.SDK_INT >= 16) {
            n6 = ad.r((View)this);
        }
        else {
            n6 = this.Gr;
        }
        int n7;
        int n8;
        if (this.aj((View)this.FP)) {
            if (b2) {
                n7 = this.b((View)this.FP, n5, gk, n6);
                n8 = paddingLeft;
            }
            else {
                n8 = this.a((View)this.FP, paddingLeft, gk, n6);
                n7 = n5;
            }
        }
        else {
            n7 = n5;
            n8 = paddingLeft;
        }
        if (this.aj((View)this.FT)) {
            if (b2) {
                n7 = this.b((View)this.FT, n7, gk, n6);
            }
            else {
                n8 = this.a((View)this.FT, n8, gk, n6);
            }
        }
        if (this.aj((View)this.yn)) {
            if (b2) {
                n8 = this.a((View)this.yn, n8, gk, n6);
            }
            else {
                n7 = this.b((View)this.yn, n7, gk, n6);
            }
        }
        gk[0] = Math.max(0, this.Gd.getLeft() - n8);
        gk[1] = Math.max(0, this.Gd.getRight() - (width - paddingRight - n7));
        int n9 = Math.max(n8, this.Gd.getLeft());
        int n10 = Math.min(n7, width - paddingRight - this.Gd.getRight());
        if (this.aj(this.FU)) {
            if (b2) {
                n10 = this.b(this.FU, n10, gk, n6);
            }
            else {
                n9 = this.a(this.FU, n9, gk, n6);
            }
        }
        int b3;
        int max;
        if (this.aj((View)this.FQ)) {
            if (b2) {
                b3 = this.b((View)this.FQ, n10, gk, n6);
                max = n9;
            }
            else {
                final int a = this.a((View)this.FQ, n9, gk, n6);
                b3 = n10;
                max = a;
            }
        }
        else {
            b3 = n10;
            max = n9;
        }
        final boolean aj = this.aj((View)this.FN);
        final boolean aj2 = this.aj((View)this.FO);
        int n11 = 0;
        if (aj) {
            final android.support.v7.widget.Z z = (android.support.v7.widget.Z)this.FN.getLayoutParams();
            n11 = 0 + (z.topMargin + this.FN.getMeasuredHeight() + z.bottomMargin);
        }
        int n12;
        if (aj2) {
            final android.support.v7.widget.Z z2 = (android.support.v7.widget.Z)this.FO.getLayoutParams();
            n12 = n11 + (z2.topMargin + this.FO.getMeasuredHeight() + z2.bottomMargin);
        }
        else {
            n12 = n11;
        }
        if (aj || aj2) {
            TextView textView;
            if (aj) {
                textView = this.FN;
            }
            else {
                textView = this.FO;
            }
            TextView textView2;
            if (aj2) {
                textView2 = this.FO;
            }
            else {
                textView2 = this.FN;
            }
            final android.support.v7.widget.Z z3 = (android.support.v7.widget.Z)((View)textView).getLayoutParams();
            final android.support.v7.widget.Z z4 = (android.support.v7.widget.Z)((View)textView2).getLayoutParams();
            boolean b4;
            if ((aj && this.FN.getMeasuredWidth() > 0) || (aj2 && this.FO.getMeasuredWidth() > 0)) {
                b4 = true;
            }
            else {
                b4 = false;
            }
            int n15 = 0;
            switch (0x70 & this.dV) {
                default: {
                    final int n13 = (height - paddingTop - paddingBottom - n12) / 2;
                    int max2;
                    if (n13 < z3.topMargin + this.Gb) {
                        max2 = z3.topMargin + this.Gb;
                    }
                    else {
                        final int n14 = height - paddingBottom - n12 - n13 - paddingTop;
                        if (n14 < z3.bottomMargin + this.Gc) {
                            max2 = Math.max(0, n13 - (z4.bottomMargin + this.Gc - n14));
                        }
                        else {
                            max2 = n13;
                        }
                    }
                    n15 = paddingTop + max2;
                    break;
                }
                case 48: {
                    n15 = this.getPaddingTop() + z3.topMargin + this.Gb;
                    break;
                }
                case 80: {
                    n15 = height - paddingBottom - z4.bottomMargin - this.Gc - n12;
                    break;
                }
            }
            if (b2) {
                int fz;
                if (b4) {
                    fz = this.FZ;
                }
                else {
                    fz = 0;
                }
                final int n16 = fz - gk[1];
                final int n17 = b3 - Math.max(0, n16);
                gk[1] = Math.max(0, -n16);
                int n21;
                if (aj) {
                    final android.support.v7.widget.Z z5 = (android.support.v7.widget.Z)this.FN.getLayoutParams();
                    final int n18 = n17 - this.FN.getMeasuredWidth();
                    final int n19 = n15 + this.FN.getMeasuredHeight();
                    this.FN.layout(n18, n15, n17, n19);
                    final int n20 = n18 - this.Ga;
                    n15 = n19 + z5.bottomMargin;
                    n21 = n20;
                }
                else {
                    n21 = n17;
                }
                int n24;
                if (aj2) {
                    final android.support.v7.widget.Z z6 = (android.support.v7.widget.Z)this.FO.getLayoutParams();
                    final int n22 = n15 + z6.topMargin;
                    this.FO.layout(n17 - this.FO.getMeasuredWidth(), n22, n17, n22 + this.FO.getMeasuredHeight());
                    final int n23 = n17 - this.Ga;
                    final int bottomMargin = z6.bottomMargin;
                    n24 = n23;
                }
                else {
                    n24 = n17;
                }
                int min;
                if (b4) {
                    min = Math.min(n21, n24);
                }
                else {
                    min = n17;
                }
                b3 = min;
            }
            else {
                int fz2;
                if (b4) {
                    fz2 = this.FZ;
                }
                else {
                    fz2 = 0;
                }
                final int n25 = fz2 - gk[0];
                max += Math.max(0, n25);
                gk[0] = Math.max(0, -n25);
                int n30;
                int n31;
                if (aj) {
                    final android.support.v7.widget.Z z7 = (android.support.v7.widget.Z)this.FN.getLayoutParams();
                    final int n26 = max + this.FN.getMeasuredWidth();
                    final int n27 = n15 + this.FN.getMeasuredHeight();
                    this.FN.layout(max, n15, n26, n27);
                    final int n28 = n26 + this.Ga;
                    final int n29 = n27 + z7.bottomMargin;
                    n30 = n28;
                    n31 = n29;
                }
                else {
                    n30 = max;
                    n31 = n15;
                }
                int n35;
                if (aj2) {
                    final android.support.v7.widget.Z z8 = (android.support.v7.widget.Z)this.FO.getLayoutParams();
                    final int n32 = n31 + z8.topMargin;
                    final int n33 = max + this.FO.getMeasuredWidth();
                    this.FO.layout(max, n32, n33, n32 + this.FO.getMeasuredHeight());
                    final int n34 = n33 + this.Ga;
                    final int bottomMargin2 = z8.bottomMargin;
                    n35 = n34;
                }
                else {
                    n35 = max;
                }
                if (b4) {
                    max = Math.max(n30, n35);
                }
            }
        }
        this.a(this.Gj, 3);
        final int size = this.Gj.size();
        int i = 0;
        int a2 = max;
        while (i < size) {
            a2 = this.a(this.Gj.get(i), a2, gk, n6);
            ++i;
        }
        this.a(this.Gj, 5);
        final int size2 = this.Gj.size();
        int j = 0;
        int n36 = b3;
        while (j < size2) {
            final int b5 = this.b(this.Gj.get(j), n36, gk, n6);
            ++j;
            n36 = b5;
        }
        this.a(this.Gj, 1);
        final ArrayList<View> gj = this.Gj;
        final int n37 = gk[0];
        final int n38 = gk[1];
        final int size3 = gj.size();
        int max3 = n38;
        int max4 = n37;
        int k = 0;
        int n39 = 0;
        while (k < size3) {
            final View view = gj.get(k);
            final android.support.v7.widget.Z z9 = (android.support.v7.widget.Z)view.getLayoutParams();
            final int n40 = z9.leftMargin - max4;
            final int n41 = z9.rightMargin - max3;
            final int max5 = Math.max(0, n40);
            final int max6 = Math.max(0, n41);
            max4 = Math.max(0, -n40);
            max3 = Math.max(0, -n41);
            final int n42 = n39 + (max6 + (max5 + view.getMeasuredWidth()));
            ++k;
            n39 = n42;
        }
        int n43 = paddingLeft + (width - paddingLeft - paddingRight) / 2 - n39 / 2;
        final int n44 = n43 + n39;
        if (n43 < a2) {
            n43 = a2;
        }
        else if (n44 > n36) {
            n43 -= n44 - n36;
        }
        final int size4 = this.Gj.size();
        int l = 0;
        int a3 = n43;
        while (l < size4) {
            a3 = this.a(this.Gj.get(l), a3, gk, n6);
            ++l;
        }
        this.Gj.clear();
    }
    
    protected void onMeasure(final int n, final int n2) {
        final int[] gk = this.Gk;
        int n3;
        int n4;
        if (af.af((View)this)) {
            n3 = 0;
            n4 = 1;
        }
        else {
            n3 = 1;
            n4 = 0;
        }
        int n5;
        int n6;
        int n7;
        if (this.aj((View)this.FP)) {
            this.f((View)this.FP, n, 0, n2, this.FY);
            n5 = this.FP.getMeasuredWidth() + ak((View)this.FP);
            final int max = Math.max(0, this.FP.getMeasuredHeight() + al((View)this.FP));
            n6 = af.combineMeasuredStates(0, ad.p((View)this.FP));
            n7 = max;
        }
        else {
            n5 = 0;
            n6 = 0;
            n7 = 0;
        }
        if (this.aj((View)this.FT)) {
            this.f((View)this.FT, n, 0, n2, this.FY);
            n5 = this.FT.getMeasuredWidth() + ak((View)this.FT);
            n7 = Math.max(n7, this.FT.getMeasuredHeight() + al((View)this.FT));
            n6 = af.combineMeasuredStates(n6, ad.p((View)this.FT));
        }
        final int start = this.Gd.getStart();
        final int n8 = 0 + Math.max(start, n5);
        gk[n4] = Math.max(0, start - n5);
        final boolean aj = this.aj((View)this.yn);
        int n9 = 0;
        if (aj) {
            this.f((View)this.yn, n, n8, n2, this.FY);
            n9 = this.yn.getMeasuredWidth() + ak((View)this.yn);
            n7 = Math.max(n7, this.yn.getMeasuredHeight() + al((View)this.yn));
            n6 = af.combineMeasuredStates(n6, ad.p((View)this.yn));
        }
        final int end = this.Gd.getEnd();
        int n10 = n8 + Math.max(end, n9);
        gk[n3] = Math.max(0, end - n9);
        if (this.aj(this.FU)) {
            n10 += this.a(this.FU, n, n10, n2, 0, gk);
            n7 = Math.max(n7, this.FU.getMeasuredHeight() + al(this.FU));
            n6 = af.combineMeasuredStates(n6, ad.p(this.FU));
        }
        if (this.aj((View)this.FQ)) {
            n10 += this.a((View)this.FQ, n, n10, n2, 0, gk);
            n7 = Math.max(n7, this.FQ.getMeasuredHeight() + al((View)this.FQ));
            n6 = af.combineMeasuredStates(n6, ad.p((View)this.FQ));
        }
        final int childCount = this.getChildCount();
        int i = 0;
        int n11 = n6;
        int n12 = n7;
        while (i < childCount) {
            final View child = this.getChildAt(i);
            int combineMeasuredStates;
            int n13;
            if (((android.support.v7.widget.Z)child.getLayoutParams()).Gv == 0 && this.aj(child)) {
                n10 += this.a(child, n, n10, n2, 0, gk);
                final int max2 = Math.max(n12, child.getMeasuredHeight() + al(child));
                combineMeasuredStates = af.combineMeasuredStates(n11, ad.p(child));
                n13 = max2;
            }
            else {
                combineMeasuredStates = n11;
                n13 = n12;
            }
            ++i;
            n11 = combineMeasuredStates;
            n12 = n13;
        }
        final int n14 = this.Gb + this.Gc;
        final int n15 = this.FZ + this.Ga;
        final boolean aj2 = this.aj((View)this.FN);
        int n16 = 0;
        int max3 = 0;
        if (aj2) {
            this.a((View)this.FN, n, n10 + n15, n2, n14, gk);
            max3 = this.FN.getMeasuredWidth() + ak((View)this.FN);
            n16 = this.FN.getMeasuredHeight() + al((View)this.FN);
            n11 = af.combineMeasuredStates(n11, ad.p((View)this.FN));
        }
        if (this.aj((View)this.FO)) {
            max3 = Math.max(max3, this.a((View)this.FO, n, n10 + n15, n2, n14 + n16, gk));
            n16 += this.FO.getMeasuredHeight() + al((View)this.FO);
            n11 = af.combineMeasuredStates(n11, ad.p((View)this.FO));
        }
        final int n17 = max3 + n10;
        final int max4 = Math.max(n12, n16);
        final int n18 = n17 + (this.getPaddingLeft() + this.getPaddingRight());
        final int n19 = max4 + (this.getPaddingTop() + this.getPaddingBottom());
        final int resolveSizeAndState = ad.resolveSizeAndState(Math.max(n18, this.getSuggestedMinimumWidth()), n, 0xFF000000 & n11);
        int resolveSizeAndState2 = ad.resolveSizeAndState(Math.max(n19, this.getSuggestedMinimumHeight()), n2, n11 << 16);
        int n20 = 0;
        Label_0875: {
            if (!this.Gq) {
                n20 = 0;
            }
            else {
                for (int childCount2 = this.getChildCount(), j = 0; j < childCount2; ++j) {
                    final View child2 = this.getChildAt(j);
                    if (this.aj(child2) && child2.getMeasuredWidth() > 0 && child2.getMeasuredHeight() > 0) {
                        n20 = 0;
                        break Label_0875;
                    }
                }
                n20 = 1;
            }
        }
        if (n20 != 0) {
            resolveSizeAndState2 = 0;
        }
        this.setMeasuredDimension(resolveSizeAndState, resolveSizeAndState2);
    }
    
    protected void onRestoreInstanceState(final Parcelable parcelable) {
        final Toolbar$SavedState toolbar$SavedState = (Toolbar$SavedState)parcelable;
        super.onRestoreInstanceState(toolbar$SavedState.getSuperState());
        Object fg;
        if (this.yn != null) {
            fg = this.yn.fg();
        }
        else {
            fg = null;
        }
        if (toolbar$SavedState.Gw != 0 && this.Gp != null && fg != null) {
            final MenuItem item = ((Menu)fg).findItem(toolbar$SavedState.Gw);
            if (item != null) {
                J.f(item);
            }
        }
        if (toolbar$SavedState.Gx) {
            this.removeCallbacks(this.Gs);
            this.post(this.Gs);
        }
    }
    
    public void onRtlPropertiesChanged(final int n) {
        boolean b = true;
        if (Build$VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(n);
        }
        final C gd = this.Gd;
        if (n != (b ? 1 : 0)) {
            b = false;
        }
        gd.E(b);
    }
    
    protected Parcelable onSaveInstanceState() {
        final Toolbar$SavedState toolbar$SavedState = new Toolbar$SavedState(super.onSaveInstanceState());
        if (this.Gp != null && this.Gp.Gu != null) {
            toolbar$SavedState.Gw = this.Gp.Gu.getItemId();
        }
        toolbar$SavedState.Gx = this.isOverflowMenuShowing();
        return (Parcelable)toolbar$SavedState;
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        final int a = P.a(motionEvent);
        if (a == 0) {
            this.Gi = false;
        }
        if (!this.Gi) {
            final boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (a == 0 && !onTouchEvent) {
                this.Gi = true;
            }
        }
        if (a == 1 || a == 3) {
            this.Gi = false;
        }
        return true;
    }
    
    public final void setContentInsetsRelative(final int n, final int n2) {
        this.Gd.o(n, n2);
    }
    
    public final void setLogo(final Drawable imageDrawable) {
        if (imageDrawable != null) {
            if (this.FQ == null) {
                this.FQ = new ImageView(this.getContext());
            }
            if (this.FQ.getParent() == null) {
                this.ai((View)this.FQ);
                this.am((View)this.FQ);
            }
        }
        else if (this.FQ != null && this.FQ.getParent() != null) {
            this.removeView((View)this.FQ);
        }
        if (this.FQ != null) {
            this.FQ.setImageDrawable(imageDrawable);
        }
    }
    
    public void setMinimumHeight(final int gr) {
        super.setMinimumHeight(this.Gr = gr);
    }
    
    public final void setNavigationContentDescription(final int n) {
        CharSequence text;
        if (n != 0) {
            text = this.getContext().getText(n);
        }
        else {
            text = null;
        }
        this.setNavigationContentDescription(text);
    }
    
    public final void setNavigationContentDescription(final CharSequence contentDescription) {
        if (!TextUtils.isEmpty(contentDescription)) {
            this.fQ();
        }
        if (this.FP != null) {
            this.FP.setContentDescription(contentDescription);
        }
    }
    
    public final void setNavigationIcon(final int n) {
        this.setNavigationIcon(this.AO.getDrawable(n));
    }
    
    public final void setNavigationIcon(final Drawable imageDrawable) {
        if (imageDrawable != null) {
            this.fQ();
            if (this.FP.getParent() == null) {
                this.ai((View)this.FP);
                this.am((View)this.FP);
            }
        }
        else if (this.FP != null && this.FP.getParent() != null) {
            this.removeView((View)this.FP);
        }
        if (this.FP != null) {
            this.FP.setImageDrawable(imageDrawable);
        }
    }
    
    public final void setNavigationOnClickListener(final View$OnClickListener onClickListener) {
        this.fQ();
        this.FP.setOnClickListener(onClickListener);
    }
    
    public final void setPopupTheme(final int ch) {
        if (this.Ch != ch) {
            if ((this.Ch = ch) != 0) {
                this.ym = (Context)new ContextThemeWrapper(this.getContext(), ch);
                return;
            }
            this.ym = this.getContext();
        }
    }
    
    public final void setSubtitle(final CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.FO == null) {
                final Context context = this.getContext();
                (this.FO = new TextView(context)).setSingleLine();
                this.FO.setEllipsize(TextUtils$TruncateAt.END);
                if (this.FW != 0) {
                    this.FO.setTextAppearance(context, this.FW);
                }
                if (this.Gh != 0) {
                    this.FO.setTextColor(this.Gh);
                }
            }
            if (this.FO.getParent() == null) {
                this.ai((View)this.FO);
                this.am((View)this.FO);
            }
        }
        else if (this.FO != null && this.FO.getParent() != null) {
            this.removeView((View)this.FO);
        }
        if (this.FO != null) {
            this.FO.setText(charSequence);
        }
        this.Gf = charSequence;
    }
    
    public final void setSubtitleTextAppearance(final Context context, final int fw) {
        this.FW = fw;
        if (this.FO != null) {
            this.FO.setTextAppearance(context, fw);
        }
    }
    
    public void setTitle(final CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.FN == null) {
                final Context context = this.getContext();
                (this.FN = new TextView(context)).setSingleLine();
                this.FN.setEllipsize(TextUtils$TruncateAt.END);
                if (this.FV != 0) {
                    this.FN.setTextAppearance(context, this.FV);
                }
                if (this.Gg != 0) {
                    this.FN.setTextColor(this.Gg);
                }
            }
            if (this.FN.getParent() == null) {
                this.ai((View)this.FN);
                this.am((View)this.FN);
            }
        }
        else if (this.FN != null && this.FN.getParent() != null) {
            this.removeView((View)this.FN);
        }
        if (this.FN != null) {
            this.FN.setText(charSequence);
        }
        this.Ge = charSequence;
    }
    
    public void setTitleTextAppearance(final Context context, final int fv) {
        this.FV = fv;
        if (this.FN != null) {
            this.FN.setTextAppearance(context, fv);
        }
    }
    
    public final boolean showOverflowMenu() {
        return this.yn != null && this.yn.showOverflowMenu();
    }
}
