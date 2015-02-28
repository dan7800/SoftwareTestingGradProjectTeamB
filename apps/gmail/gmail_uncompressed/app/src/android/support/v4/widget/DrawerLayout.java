package android.support.v4.widget;

import android.graphics.drawable.*;
import android.content.*;
import android.util.*;
import android.support.v4.content.*;
import android.graphics.*;
import android.support.v4.view.*;
import android.view.*;
import android.os.*;

public class DrawerLayout extends ViewGroup implements r
{
    private static final int[] im;
    private static final boolean kM;
    static final h lj;
    private boolean aC;
    private float iS;
    private float iT;
    private boolean jc;
    private final g kN;
    private int kO;
    private int kP;
    private float kQ;
    private Paint kR;
    private final ag kS;
    private final ag kT;
    private final n kU;
    private final n kV;
    private int kW;
    private int kX;
    private int kY;
    private boolean kZ;
    private boolean la;
    private k lb;
    private Drawable lc;
    private Drawable ld;
    private Drawable le;
    private CharSequence lf;
    private CharSequence lg;
    private Object lh;
    private boolean li;
    
    static {
        int km = 1;
        final int[] im2 = new int[km];
        im2[0] = 16842931;
        im = im2;
        if (Build$VERSION.SDK_INT < 19) {
            km = 0;
        }
        kM = (km != 0);
        if (Build$VERSION.SDK_INT >= 21) {
            lj = new i();
            return;
        }
        lj = new j();
    }
    
    public DrawerLayout(final Context context) {
        this(context, null);
    }
    
    public DrawerLayout(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public DrawerLayout(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.kN = new g(this);
        this.kP = -1728053248;
        this.kR = new Paint();
        this.jc = true;
        this.setDescendantFocusability(262144);
        final float density = this.getResources().getDisplayMetrics().density;
        this.kO = (int)(0.5f + 64.0f * density);
        final float n2 = density * 400.0f;
        this.kU = new n(this, 3);
        this.kV = new n(this, 5);
        (this.kS = ag.a(this, this.kU)).V(1);
        this.kS.n(n2);
        this.kU.a(this.kS);
        (this.kT = ag.a(this, this.kV)).V(2);
        this.kT.n(n2);
        this.kV.a(this.kT);
        this.setFocusableInTouchMode(true);
        ad.c((View)this, 1);
        ad.a((View)this, new f(this));
        ax.b(this);
        if (ad.w((View)this)) {
            DrawerLayout.lj.P((View)this);
        }
    }
    
    static float G(final View view) {
        return ((l)view.getLayoutParams()).lm;
    }
    
    private static boolean I(final View view) {
        return ((l)view.getLayoutParams()).gravity == 0;
    }
    
    static boolean J(final View view) {
        return (0x7 & v.getAbsoluteGravity(((l)view.getLayoutParams()).gravity, ad.m(view))) != 0x0;
    }
    
    public static boolean M(final View view) {
        if (!J(view)) {
            throw new IllegalArgumentException("View " + view + " is not a drawer");
        }
        return ((l)view.getLayoutParams()).lo;
    }
    
    public static boolean N(final View view) {
        if (!J(view)) {
            throw new IllegalArgumentException("View " + view + " is not a drawer");
        }
        return ((l)view.getLayoutParams()).lm > 0.0f;
    }
    
    private static String O(final int n) {
        if ((n & 0x3) == 0x3) {
            return "LEFT";
        }
        if ((n & 0x5) == 0x5) {
            return "RIGHT";
        }
        return Integer.toHexString(n);
    }
    
    private void a(final View view, final boolean b) {
        for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
            final View child = this.getChildAt(i);
            if ((!b && !J(child)) || (b && child == view)) {
                ad.c(child, 1);
            }
            else {
                ad.c(child, 4);
            }
        }
    }
    
    private View bH() {
        for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
            final View child = this.getChildAt(i);
            if (((l)child.getLayoutParams()).lo) {
                return child;
            }
        }
        return null;
    }
    
    private View bO() {
        for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
            final View child = this.getChildAt(i);
            if (J(child) && N(child)) {
                return child;
            }
        }
        return null;
    }
    
    private void f(final int n, final int n2) {
        final int absoluteGravity = v.getAbsoluteGravity(n2, ad.m((View)this));
        if (absoluteGravity == 3) {
            this.kX = n;
        }
        else if (absoluteGravity == 5) {
            this.kY = n;
        }
        if (n != 0) {
            ag ag;
            if (absoluteGravity == 3) {
                ag = this.kS;
            }
            else {
                ag = this.kT;
            }
            ag.cancel();
        }
        switch (n) {
            case 2: {
                final View n3 = this.N(absoluteGravity);
                if (n3 != null) {
                    this.K(n3);
                    return;
                }
                break;
            }
            case 1: {
                final View n4 = this.N(absoluteGravity);
                if (n4 != null) {
                    this.L(n4);
                    return;
                }
                break;
            }
        }
    }
    
    private void f(final boolean b) {
        final int childCount = this.getChildCount();
        int i = 0;
        boolean b2 = false;
        while (i < childCount) {
            final View child = this.getChildAt(i);
            final l l = (l)child.getLayoutParams();
            if (J(child) && (!b || l.ln)) {
                final int width = child.getWidth();
                if (this.f(child, 3)) {
                    b2 |= this.kS.a(child, -width, child.getTop());
                }
                else {
                    b2 |= this.kT.a(child, this.getWidth(), child.getTop());
                }
                l.ln = false;
            }
            ++i;
        }
        this.kU.bS();
        this.kV.bS();
        if (b2) {
            this.invalidate();
        }
    }
    
    public final int F(final View view) {
        final int h = this.H(view);
        if (h == 3) {
            return this.kX;
        }
        if (h == 5) {
            return this.kY;
        }
        return 0;
    }
    
    final int H(final View view) {
        return v.getAbsoluteGravity(((l)view.getLayoutParams()).gravity, ad.m((View)this));
    }
    
    public final void K(final View view) {
        if (!J(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        if (this.jc) {
            final l l = (l)view.getLayoutParams();
            l.lm = 1.0f;
            this.a(view, l.lo = true);
        }
        else if (this.f(view, 3)) {
            this.kS.a(view, 0, view.getTop());
        }
        else {
            this.kT.a(view, this.getWidth() - view.getWidth(), view.getTop());
        }
        this.invalidate();
    }
    
    public final void L(final int n) {
        this.f(n, 3);
        this.f(n, 5);
    }
    
    public final void L(final View view) {
        if (!J(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        if (this.jc) {
            final l l = (l)view.getLayoutParams();
            l.lm = 0.0f;
            l.lo = false;
        }
        else if (this.f(view, 3)) {
            this.kS.a(view, -view.getWidth(), view.getTop());
        }
        else {
            this.kT.a(view, this.getWidth(), view.getTop());
        }
        this.invalidate();
    }
    
    public final CharSequence M(final int n) {
        final int absoluteGravity = v.getAbsoluteGravity(n, ad.m((View)this));
        if (absoluteGravity == 3) {
            return this.lf;
        }
        if (absoluteGravity == 5) {
            return this.lg;
        }
        return null;
    }
    
    final View N(final int n) {
        final int n2 = 0x7 & v.getAbsoluteGravity(n, ad.m((View)this));
        for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
            final View child = this.getChildAt(i);
            if ((0x7 & this.H(child)) == n2) {
                return child;
            }
        }
        return null;
    }
    
    final void a(final int n, final View view) {
        final int cr = this.kS.cr();
        final int cr2 = this.kT.cr();
        int kw;
        if (cr == 1 || cr2 == 1) {
            kw = 1;
        }
        else if (cr == 2 || cr2 == 2) {
            kw = 2;
        }
        else {
            kw = 0;
        }
        if (view != null && n == 0) {
            final l l = (l)view.getLayoutParams();
            if (l.lm == 0.0f) {
                final l i = (l)view.getLayoutParams();
                if (i.lo) {
                    i.lo = false;
                    if (this.lb != null) {
                        this.lb.R(view);
                    }
                    this.a(view, false);
                    if (this.hasWindowFocus()) {
                        final View rootView = this.getRootView();
                        if (rootView != null) {
                            rootView.sendAccessibilityEvent(32);
                        }
                    }
                }
            }
            else if (l.lm == 1.0f) {
                final l j = (l)view.getLayoutParams();
                if (!j.lo) {
                    j.lo = true;
                    if (this.lb != null) {
                        this.lb.Q(view);
                    }
                    this.a(view, true);
                    view.requestFocus();
                }
            }
        }
        if (kw != this.kW) {
            this.kW = kw;
            if (this.lb != null) {
                this.lb.P(kw);
            }
        }
    }
    
    public final void a(final k lb) {
        this.lb = lb;
    }
    
    public void addView(final View view, final int n, final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        super.addView(view, n, viewGroup$LayoutParams);
        if (this.bH() != null || J(view)) {
            ad.c(view, 4);
        }
        else {
            ad.c(view, 1);
        }
        if (!DrawerLayout.kM) {
            ad.a(view, this.kN);
        }
    }
    
    public final void bI() {
        this.le = c.a(this.getContext(), 2131361993);
    }
    
    public final void bJ() {
        this.f(false);
    }
    
    public final void bK() {
        final View n = this.N(8388611);
        if (n == null) {
            throw new IllegalArgumentException("No drawer view found with gravity " + O(8388611));
        }
        this.K(n);
    }
    
    public final void bL() {
        final View n = this.N(8388611);
        if (n == null) {
            throw new IllegalArgumentException("No drawer view found with gravity " + O(8388611));
        }
        this.L(n);
    }
    
    public final boolean bM() {
        final View n = this.N(8388611);
        return n != null && M(n);
    }
    
    public final boolean bN() {
        final View n = this.N(8388611);
        return n != null && N(n);
    }
    
    final void bP() {
        int i = 0;
        if (!this.la) {
            final long uptimeMillis = SystemClock.uptimeMillis();
            final MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
            while (i < this.getChildCount()) {
                this.getChildAt(i).dispatchTouchEvent(obtain);
                ++i;
            }
            obtain.recycle();
            this.la = true;
        }
    }
    
    protected boolean checkLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams instanceof l && super.checkLayoutParams(viewGroup$LayoutParams);
    }
    
    public void computeScroll() {
        final int childCount = this.getChildCount();
        float max = 0.0f;
        for (int i = 0; i < childCount; ++i) {
            max = Math.max(max, ((l)this.getChildAt(i).getLayoutParams()).lm);
        }
        this.kQ = max;
        if (this.kS.cu() | this.kT.cu()) {
            ad.i((View)this);
        }
    }
    
    public final void d(final Drawable drawable) {
        final int absoluteGravity = v.getAbsoluteGravity(8388611, ad.m((View)this));
        if ((absoluteGravity & 0x3) == 0x3) {
            this.lc = drawable;
            this.invalidate();
        }
        if ((absoluteGravity & 0x5) == 0x5) {
            this.ld = drawable;
            this.invalidate();
        }
    }
    
    protected boolean drawChild(final Canvas canvas, final View view, final long n) {
        final int height = this.getHeight();
        final boolean i = I(view);
        int width = this.getWidth();
        final int save = canvas.save();
        int n2 = 0;
        if (i) {
            final int childCount = this.getChildCount();
            int j = 0;
        Label_0149_Outer:
            while (j < childCount) {
                final View child = this.getChildAt(j);
                while (true) {
                    Label_0185: {
                        if (child == view || child.getVisibility() != 0) {
                            break Label_0185;
                        }
                        final Drawable background = child.getBackground();
                        boolean b;
                        if (background != null) {
                            if (background.getOpacity() == -1) {
                                b = true;
                            }
                            else {
                                b = false;
                            }
                        }
                        else {
                            b = false;
                        }
                        if (!b || !J(child) || child.getHeight() < height) {
                            break Label_0185;
                        }
                        int left;
                        if (this.f(child, 3)) {
                            int right = child.getRight();
                            if (right <= n2) {
                                right = n2;
                            }
                            n2 = right;
                            left = width;
                        }
                        else {
                            left = child.getLeft();
                            if (left >= width) {
                                break Label_0185;
                            }
                        }
                        ++j;
                        width = left;
                        continue Label_0149_Outer;
                    }
                    int left = width;
                    continue;
                }
            }
            canvas.clipRect(n2, 0, width, this.getHeight());
        }
        final int n3 = width;
        final boolean drawChild = super.drawChild(canvas, view, n);
        canvas.restoreToCount(save);
        if (this.kQ > 0.0f && i) {
            this.kR.setColor((int)(((0xFF000000 & this.kP) >>> 24) * this.kQ) << 24 | (0xFFFFFF & this.kP));
            canvas.drawRect((float)n2, 0.0f, (float)n3, (float)this.getHeight(), this.kR);
        }
        else {
            if (this.lc != null && this.f(view, 3)) {
                final int intrinsicWidth = this.lc.getIntrinsicWidth();
                final int right2 = view.getRight();
                final float max = Math.max(0.0f, Math.min(right2 / this.kS.cs(), 1.0f));
                this.lc.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
                this.lc.setAlpha((int)(255.0f * max));
                this.lc.draw(canvas);
                return drawChild;
            }
            if (this.ld != null && this.f(view, 5)) {
                final int intrinsicWidth2 = this.ld.getIntrinsicWidth();
                final int left2 = view.getLeft();
                final float max2 = Math.max(0.0f, Math.min((this.getWidth() - left2) / this.kT.cs(), 1.0f));
                this.ld.setBounds(left2 - intrinsicWidth2, view.getTop(), left2, view.getBottom());
                this.ld.setAlpha((int)(255.0f * max2));
                this.ld.draw(canvas);
                return drawChild;
            }
        }
        return drawChild;
    }
    
    final boolean f(final View view, final int n) {
        return (n & this.H(view)) == n;
    }
    
    protected ViewGroup$LayoutParams generateDefaultLayoutParams() {
        return (ViewGroup$LayoutParams)new l();
    }
    
    public ViewGroup$LayoutParams generateLayoutParams(final AttributeSet set) {
        return (ViewGroup$LayoutParams)new l(this.getContext(), set);
    }
    
    protected ViewGroup$LayoutParams generateLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (viewGroup$LayoutParams instanceof l) {
            return (ViewGroup$LayoutParams)new l((l)viewGroup$LayoutParams);
        }
        if (viewGroup$LayoutParams instanceof ViewGroup$MarginLayoutParams) {
            return (ViewGroup$LayoutParams)new l((ViewGroup$MarginLayoutParams)viewGroup$LayoutParams);
        }
        return (ViewGroup$LayoutParams)new l(viewGroup$LayoutParams);
    }
    
    final void h(final View view, final float lm) {
        final l l = (l)view.getLayoutParams();
        if (lm != l.lm) {
            l.lm = lm;
            if (this.lb != null) {
                this.lb.i(view, lm);
            }
        }
    }
    
    public final void i(final CharSequence charSequence) {
        final int absoluteGravity = v.getAbsoluteGravity(8388611, ad.m((View)this));
        if (absoluteGravity == 3) {
            this.lf = charSequence;
        }
        else if (absoluteGravity == 5) {
            this.lg = charSequence;
        }
    }
    
    public final void j(final Object lh, final boolean li) {
        this.lh = lh;
        this.li = li;
        this.setWillNotDraw(!li && this.getBackground() == null);
        this.requestLayout();
    }
    
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.jc = true;
    }
    
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.jc = true;
    }
    
    public void onDraw(final Canvas canvas) {
        super.onDraw(canvas);
        if (this.li && this.le != null) {
            final int c = DrawerLayout.lj.C(this.lh);
            if (c > 0) {
                this.le.setBounds(0, 0, this.getWidth(), c);
                this.le.draw(canvas);
            }
        }
    }
    
    public boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        final int a = P.a(motionEvent);
        final boolean b = this.kS.f(motionEvent) | this.kT.f(motionEvent);
        boolean b2 = false;
        Label_0059: {
            switch (a) {
                case 0: {
                    final float x = motionEvent.getX();
                    final float y = motionEvent.getY();
                    this.iS = x;
                    this.iT = y;
                    while (true) {
                        Label_0267: {
                            if (this.kQ <= 0.0f) {
                                break Label_0267;
                            }
                            final View m = this.kS.m((int)x, (int)y);
                            if (m == null || !I(m)) {
                                break Label_0267;
                            }
                            b2 = true;
                            this.kZ = false;
                            this.la = false;
                            break Label_0059;
                        }
                        b2 = false;
                        continue;
                    }
                }
                case 2: {
                    if (this.kS.cv()) {
                        this.kU.bS();
                        this.kV.bS();
                        b2 = false;
                        break Label_0059;
                    }
                    break;
                }
                case 1:
                case 3: {
                    this.f(true);
                    this.kZ = false;
                    this.la = false;
                    break;
                }
            }
            b2 = false;
        }
        if (!b && !b2) {
            final int childCount = this.getChildCount();
            int i = 0;
            while (true) {
                while (i < childCount) {
                    if (((l)this.getChildAt(i).getLayoutParams()).ln) {
                        final int n = 1;
                        if (n != 0) {
                            return true;
                        }
                        final boolean la = this.la;
                        final boolean b3 = false;
                        if (la) {
                            return true;
                        }
                        return b3;
                    }
                    else {
                        ++i;
                    }
                }
                final int n = 0;
                continue;
            }
        }
        return true;
    }
    
    public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        if (n == 4) {
            int n2;
            if (this.bO() != null) {
                n2 = 1;
            }
            else {
                n2 = 0;
            }
            if (n2 != 0) {
                A.c(keyEvent);
                return true;
            }
        }
        return super.onKeyDown(n, keyEvent);
    }
    
    public boolean onKeyUp(final int n, final KeyEvent keyEvent) {
        if (n == 4) {
            final View bo = this.bO();
            if (bo != null && this.F(bo) == 0) {
                this.f(false);
            }
            boolean b = false;
            if (bo != null) {
                b = true;
            }
            return b;
        }
        return super.onKeyUp(n, keyEvent);
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        this.aC = true;
        final int n5 = n3 - n;
        for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
            final View child = this.getChildAt(i);
            if (child.getVisibility() != 8) {
                final l l = (l)child.getLayoutParams();
                if (I(child)) {
                    child.layout(l.leftMargin, l.topMargin, l.leftMargin + child.getMeasuredWidth(), l.topMargin + child.getMeasuredHeight());
                }
                else {
                    final int measuredWidth = child.getMeasuredWidth();
                    final int measuredHeight = child.getMeasuredHeight();
                    int n6;
                    float n7;
                    if (this.f(child, 3)) {
                        n6 = -measuredWidth + (int)(measuredWidth * l.lm);
                        n7 = (measuredWidth + n6) / measuredWidth;
                    }
                    else {
                        n6 = n5 - (int)(measuredWidth * l.lm);
                        n7 = (n5 - n6) / measuredWidth;
                    }
                    int n8;
                    if (n7 != l.lm) {
                        n8 = 1;
                    }
                    else {
                        n8 = 0;
                    }
                    switch (0x70 & l.gravity) {
                        default: {
                            child.layout(n6, l.topMargin, measuredWidth + n6, measuredHeight + l.topMargin);
                            break;
                        }
                        case 80: {
                            final int n9 = n4 - n2;
                            child.layout(n6, n9 - l.bottomMargin - child.getMeasuredHeight(), measuredWidth + n6, n9 - l.bottomMargin);
                            break;
                        }
                        case 16: {
                            final int n10 = n4 - n2;
                            int topMargin = (n10 - measuredHeight) / 2;
                            if (topMargin < l.topMargin) {
                                topMargin = l.topMargin;
                            }
                            else if (topMargin + measuredHeight > n10 - l.bottomMargin) {
                                topMargin = n10 - l.bottomMargin - measuredHeight;
                            }
                            child.layout(n6, topMargin, measuredWidth + n6, measuredHeight + topMargin);
                            break;
                        }
                    }
                    if (n8 != 0) {
                        this.h(child, n7);
                    }
                    int visibility;
                    if (l.lm > 0.0f) {
                        visibility = 0;
                    }
                    else {
                        visibility = 4;
                    }
                    if (child.getVisibility() != visibility) {
                        child.setVisibility(visibility);
                    }
                }
            }
        }
        this.aC = false;
        this.jc = false;
    }
    
    protected void onMeasure(final int n, final int n2) {
        int n3 = 300;
        int i = 0;
        final int mode = View$MeasureSpec.getMode(n);
        final int mode2 = View$MeasureSpec.getMode(n2);
        int size = View$MeasureSpec.getSize(n);
        final int size2 = View$MeasureSpec.getSize(n2);
        while (true) {
            Label_0447: {
                if (mode == 1073741824 && mode2 == 1073741824) {
                    break Label_0447;
                }
                if (!this.isInEditMode()) {
                    throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
                }
                if (mode != Integer.MIN_VALUE && mode == 0) {
                    size = n3;
                }
                if (mode2 == Integer.MIN_VALUE || mode2 != 0) {
                    break Label_0447;
                }
                this.setMeasuredDimension(size, n3);
                int n4;
                if (this.lh != null && ad.w((View)this)) {
                    n4 = 1;
                }
                else {
                    n4 = 0;
                }
                final int m = ad.m((View)this);
                while (i < this.getChildCount()) {
                    final View child = this.getChildAt(i);
                    if (child.getVisibility() != 8) {
                        final l l = (l)child.getLayoutParams();
                        if (n4 != 0) {
                            final int absoluteGravity = v.getAbsoluteGravity(l.gravity, m);
                            if (ad.w(child)) {
                                DrawerLayout.lj.a(child, this.lh, absoluteGravity);
                            }
                            else {
                                DrawerLayout.lj.a(l, this.lh, absoluteGravity);
                            }
                        }
                        if (I(child)) {
                            child.measure(View$MeasureSpec.makeMeasureSpec(size - l.leftMargin - l.rightMargin, 1073741824), View$MeasureSpec.makeMeasureSpec(n3 - l.topMargin - l.bottomMargin, 1073741824));
                        }
                        else {
                            if (!J(child)) {
                                throw new IllegalStateException("Child " + child + " at index " + i + " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY");
                            }
                            final int n5 = 0x7 & this.H(child);
                            if ((n5 & 0x0) != 0x0) {
                                throw new IllegalStateException("Child drawer has absolute gravity " + O(n5) + " but this DrawerLayout already has a drawer view along that edge");
                            }
                            child.measure(getChildMeasureSpec(n, this.kO + l.leftMargin + l.rightMargin, l.width), getChildMeasureSpec(n2, l.topMargin + l.bottomMargin, l.height));
                        }
                    }
                    ++i;
                }
                return;
            }
            n3 = size2;
            continue;
        }
    }
    
    protected void onRestoreInstanceState(final Parcelable parcelable) {
        final DrawerLayout$SavedState drawerLayout$SavedState = (DrawerLayout$SavedState)parcelable;
        super.onRestoreInstanceState(drawerLayout$SavedState.getSuperState());
        if (drawerLayout$SavedState.lp != 0) {
            final View n = this.N(drawerLayout$SavedState.lp);
            if (n != null) {
                this.K(n);
            }
        }
        this.f(drawerLayout$SavedState.lq, 3);
        this.f(drawerLayout$SavedState.lr, 5);
    }
    
    protected Parcelable onSaveInstanceState() {
        final DrawerLayout$SavedState drawerLayout$SavedState = new DrawerLayout$SavedState(super.onSaveInstanceState());
        final View bh = this.bH();
        if (bh != null) {
            drawerLayout$SavedState.lp = ((l)bh.getLayoutParams()).gravity;
        }
        drawerLayout$SavedState.lq = this.kX;
        drawerLayout$SavedState.lr = this.kY;
        return (Parcelable)drawerLayout$SavedState;
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        this.kS.g(motionEvent);
        this.kT.g(motionEvent);
        switch (0xFF & motionEvent.getAction()) {
            default: {
                return true;
            }
            case 0: {
                final float x = motionEvent.getX();
                final float y = motionEvent.getY();
                this.iS = x;
                this.iT = y;
                this.kZ = false;
                this.la = false;
                return true;
            }
            case 1: {
                final float x2 = motionEvent.getX();
                final float y2 = motionEvent.getY();
                final View m = this.kS.m((int)x2, (int)y2);
                while (true) {
                    Label_0236: {
                        if (m == null || !I(m)) {
                            break Label_0236;
                        }
                        final float n = x2 - this.iS;
                        final float n2 = y2 - this.iT;
                        final int touchSlop = this.kS.getTouchSlop();
                        if (n * n + n2 * n2 >= touchSlop * touchSlop) {
                            break Label_0236;
                        }
                        final View bh = this.bH();
                        if (bh == null) {
                            break Label_0236;
                        }
                        final boolean b = this.F(bh) == 2;
                        this.f(b);
                        this.kZ = false;
                        return true;
                    }
                    final boolean b = true;
                    continue;
                }
            }
            case 3: {
                this.f(true);
                this.kZ = false;
                this.la = false;
                return true;
            }
        }
    }
    
    public void requestDisallowInterceptTouchEvent(final boolean kz) {
        super.requestDisallowInterceptTouchEvent(kz);
        this.kZ = kz;
        if (kz) {
            this.f(true);
        }
    }
    
    public void requestLayout() {
        if (!this.aC) {
            super.requestLayout();
        }
    }
}
