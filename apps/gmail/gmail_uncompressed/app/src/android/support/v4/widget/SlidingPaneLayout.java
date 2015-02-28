package android.support.v4.widget;

import android.graphics.drawable.*;
import java.util.*;
import android.support.v4.view.*;
import android.graphics.*;
import android.util.*;
import android.view.*;
import android.os.*;

public final class SlidingPaneLayout extends ViewGroup
{
    static final S mM;
    private boolean iM;
    private float iS;
    private float iT;
    private boolean jc;
    private final Rect lk;
    private Drawable mA;
    private Drawable mB;
    private final int mC;
    private boolean mD;
    private View mE;
    private float mF;
    private float mG;
    private int mH;
    private int mI;
    private final ag mJ;
    private boolean mK;
    private final ArrayList<P> mL;
    private int my;
    private int mz;
    
    static {
        final int sdk_INT = Build$VERSION.SDK_INT;
        if (sdk_INT >= 17) {
            mM = new V();
            return;
        }
        if (sdk_INT >= 16) {
            mM = new U();
            return;
        }
        mM = new T();
    }
    
    private void W(final View view) {
        SlidingPaneLayout.mM.b(this, view);
    }
    
    private boolean X(final View view) {
        if (view == null) {
            return false;
        }
        final Q q = (Q)view.getLayoutParams();
        return this.mD && q.mR && this.mF > 0.0f;
    }
    
    private void a(final View view, final float n, final int n2) {
        final Q q = (Q)view.getLayoutParams();
        if (n > 0.0f && n2 != 0) {
            final int n3 = (int)(n * ((0xFF000000 & n2) >>> 24)) << 24 | (0xFFFFFF & n2);
            if (q.mS == null) {
                q.mS = new Paint();
            }
            q.mS.setColorFilter((ColorFilter)new PorterDuffColorFilter(n3, PorterDuff$Mode.SRC_OVER));
            if (ad.l(view) != 2) {
                ad.a(view, 2, q.mS);
            }
            this.W(view);
        }
        else if (ad.l(view) != 0) {
            if (q.mS != null) {
                q.mS.setColorFilter((ColorFilter)null);
            }
            final P p3 = new P(this, view);
            this.mL.add(p3);
            ad.a((View)this, p3);
        }
    }
    
    private boolean cl() {
        if (!this.jc) {
            final boolean l = this.l(0.0f);
            final boolean b = false;
            if (!l) {
                return b;
            }
        }
        this.mK = false;
        return true;
    }
    
    private boolean cm() {
        return ad.m((View)this) == 1;
    }
    
    private boolean l(final float n) {
        if (!this.mD) {
            return false;
        }
        final boolean cm = this.cm();
        final Q q = (Q)this.mE.getLayoutParams();
        int n2;
        if (cm) {
            n2 = (int)(this.getWidth() - (this.getPaddingRight() + q.rightMargin + n * this.mH + this.mE.getWidth()));
        }
        else {
            n2 = (int)(this.getPaddingLeft() + q.leftMargin + n * this.mH);
        }
        if (this.mJ.a(this.mE, n2, this.mE.getTop())) {
            for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
                final View child = this.getChildAt(i);
                if (child.getVisibility() == 4) {
                    child.setVisibility(0);
                }
            }
            ad.i((View)this);
            return true;
        }
        return false;
    }
    
    protected final boolean checkLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams instanceof Q && super.checkLayoutParams(viewGroup$LayoutParams);
    }
    
    public final void computeScroll() {
        if (this.mJ.cu()) {
            if (this.mD) {
                ad.i((View)this);
                return;
            }
            this.mJ.abort();
        }
    }
    
    public final void draw(final Canvas canvas) {
        super.draw(canvas);
        Drawable drawable;
        if (this.cm()) {
            drawable = this.mB;
        }
        else {
            drawable = this.mA;
        }
        View child;
        if (this.getChildCount() > 1) {
            child = this.getChildAt(1);
        }
        else {
            child = null;
        }
        if (child == null || drawable == null) {
            return;
        }
        final int top = child.getTop();
        final int bottom = child.getBottom();
        final int intrinsicWidth = drawable.getIntrinsicWidth();
        int right;
        int left;
        if (this.cm()) {
            right = child.getRight();
            left = right + intrinsicWidth;
        }
        else {
            left = child.getLeft();
            right = left - intrinsicWidth;
        }
        drawable.setBounds(right, top, left, bottom);
        drawable.draw(canvas);
    }
    
    protected final boolean drawChild(final Canvas canvas, final View view, final long n) {
        final Q q = (Q)view.getLayoutParams();
        final int save = canvas.save(2);
        if (this.mD && !q.mQ && this.mE != null) {
            canvas.getClipBounds(this.lk);
            if (this.cm()) {
                this.lk.left = Math.max(this.lk.left, this.mE.getRight());
            }
            else {
                this.lk.right = Math.min(this.lk.right, this.mE.getLeft());
            }
            canvas.clipRect(this.lk);
        }
        while (true) {
            Label_0225: {
                if (Build$VERSION.SDK_INT >= 11) {
                    break Label_0225;
                }
                final boolean drawChild;
                if (q.mR && this.mF > 0.0f) {
                    if (!view.isDrawingCacheEnabled()) {
                        view.setDrawingCacheEnabled(true);
                    }
                    final Bitmap drawingCache = view.getDrawingCache();
                    if (drawingCache == null) {
                        Log.e("SlidingPaneLayout", "drawChild: child view " + view + " returned null drawing cache");
                        break Label_0225;
                    }
                    canvas.drawBitmap(drawingCache, (float)view.getLeft(), (float)view.getTop(), q.mS);
                    drawChild = false;
                }
                else {
                    if (view.isDrawingCacheEnabled()) {
                        view.setDrawingCacheEnabled(false);
                    }
                    break Label_0225;
                }
                canvas.restoreToCount(save);
                return drawChild;
            }
            boolean drawChild = super.drawChild(canvas, view, n);
            continue;
        }
    }
    
    protected final ViewGroup$LayoutParams generateDefaultLayoutParams() {
        return (ViewGroup$LayoutParams)new Q();
    }
    
    public final ViewGroup$LayoutParams generateLayoutParams(final AttributeSet set) {
        return (ViewGroup$LayoutParams)new Q(this.getContext(), set);
    }
    
    protected final ViewGroup$LayoutParams generateLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (viewGroup$LayoutParams instanceof ViewGroup$MarginLayoutParams) {
            return (ViewGroup$LayoutParams)new Q((ViewGroup$MarginLayoutParams)viewGroup$LayoutParams);
        }
        return (ViewGroup$LayoutParams)new Q(viewGroup$LayoutParams);
    }
    
    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.jc = true;
    }
    
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.jc = true;
        for (int size = this.mL.size(), i = 0; i < size; ++i) {
            this.mL.get(i).run();
        }
        this.mL.clear();
    }
    
    public final boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        final int a = android.support.v4.view.P.a(motionEvent);
        if (!this.mD && a == 0 && this.getChildCount() > 1) {
            final View child = this.getChildAt(1);
            if (child != null) {
                final ag mj = this.mJ;
                this.mK = !ag.b(child, (int)motionEvent.getX(), (int)motionEvent.getY());
            }
        }
        boolean onInterceptTouchEvent;
        if (!this.mD || (this.iM && a != 0)) {
            this.mJ.cancel();
            onInterceptTouchEvent = super.onInterceptTouchEvent(motionEvent);
        }
        else {
            if (a == 3 || a == 1) {
                this.mJ.cancel();
                return false;
            }
            int n = 0;
            Label_0155: {
                switch (a) {
                    case 0: {
                        this.iM = false;
                        final float x = motionEvent.getX();
                        final float y = motionEvent.getY();
                        this.iS = x;
                        this.iT = y;
                        final ag mj2 = this.mJ;
                        if (ag.b(this.mE, (int)x, (int)y) && this.X(this.mE)) {
                            n = 1;
                            break Label_0155;
                        }
                        break;
                    }
                    case 2: {
                        final float x2 = motionEvent.getX();
                        final float y2 = motionEvent.getY();
                        final float abs = Math.abs(x2 - this.iS);
                        final float abs2 = Math.abs(y2 - this.iT);
                        if (abs > this.mJ.getTouchSlop() && abs2 > abs) {
                            this.mJ.cancel();
                            this.iM = true;
                            return false;
                        }
                        break;
                    }
                }
                n = 0;
            }
            if (!this.mJ.f(motionEvent)) {
                onInterceptTouchEvent = false;
                if (n == 0) {
                    return onInterceptTouchEvent;
                }
            }
            return true;
        }
        return onInterceptTouchEvent;
    }
    
    protected final void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        final boolean cm = this.cm();
        if (cm) {
            this.mJ.V(2);
        }
        else {
            this.mJ.V(1);
        }
        final int n5 = n3 - n;
        int n6;
        if (cm) {
            n6 = this.getPaddingRight();
        }
        else {
            n6 = this.getPaddingLeft();
        }
        int n7;
        if (cm) {
            n7 = this.getPaddingLeft();
        }
        else {
            n7 = this.getPaddingRight();
        }
        final int paddingTop = this.getPaddingTop();
        final int childCount = this.getChildCount();
        if (this.jc) {
            float mf;
            if (this.mD && this.mK) {
                mf = 1.0f;
            }
            else {
                mf = 0.0f;
            }
            this.mF = mf;
        }
        int i = 0;
        int n8 = n6;
        while (i < childCount) {
            final View child = this.getChildAt(i);
            int n16;
            int n17;
            if (child.getVisibility() != 8) {
                final Q q = (Q)child.getLayoutParams();
                final int measuredWidth = child.getMeasuredWidth();
                int n9 = 0;
                int n12;
                if (q.mQ) {
                    final int mh = Math.min(n6, n5 - n7 - this.mC) - n8 - (q.leftMargin + q.rightMargin);
                    this.mH = mh;
                    int n10;
                    if (cm) {
                        n10 = q.rightMargin;
                    }
                    else {
                        n10 = q.leftMargin;
                    }
                    q.mR = (mh + (n8 + n10) + measuredWidth / 2 > n5 - n7);
                    final int n11 = (int)(mh * this.mF);
                    n12 = n8 + (n10 + n11);
                    this.mF = n11 / this.mH;
                }
                else {
                    int n13;
                    if (this.mD && this.mI != 0) {
                        n13 = (int)((1.0f - this.mF) * this.mI);
                    }
                    else {
                        n13 = 0;
                    }
                    n9 = n13;
                    n12 = n6;
                }
                int n14;
                int n15;
                if (cm) {
                    n14 = n9 + (n5 - n12);
                    n15 = n14 - measuredWidth;
                }
                else {
                    n15 = n12 - n9;
                    n14 = n15 + measuredWidth;
                }
                child.layout(n15, paddingTop, n14, paddingTop + child.getMeasuredHeight());
                n16 = n6 + child.getWidth();
                n17 = n12;
            }
            else {
                n16 = n6;
                n17 = n8;
            }
            ++i;
            n6 = n16;
            n8 = n17;
        }
        Label_1082: {
            if (this.jc) {
                if (this.mD) {
                    Label_0668: {
                        if (this.mI != 0) {
                            final float mf2 = this.mF;
                            final boolean cm2 = this.cm();
                            final Q q2 = (Q)this.mE.getLayoutParams();
                            while (true) {
                                Label_0651: {
                                    if (!q2.mR) {
                                        break Label_0651;
                                    }
                                    int n18;
                                    if (cm2) {
                                        n18 = q2.rightMargin;
                                    }
                                    else {
                                        n18 = q2.leftMargin;
                                    }
                                    if (n18 > 0) {
                                        break Label_0651;
                                    }
                                    final int n19 = 1;
                                    for (int childCount2 = this.getChildCount(), j = 0; j < childCount2; ++j) {
                                        final View child2 = this.getChildAt(j);
                                        if (child2 != this.mE) {
                                            final int n20 = (int)((1.0f - this.mG) * this.mI);
                                            this.mG = mf2;
                                            int n21 = n20 - (int)((1.0f - mf2) * this.mI);
                                            if (cm2) {
                                                n21 = -n21;
                                            }
                                            child2.offsetLeftAndRight(n21);
                                            if (n19 != 0) {
                                                float n22;
                                                if (cm2) {
                                                    n22 = this.mG - 1.0f;
                                                }
                                                else {
                                                    n22 = 1.0f - this.mG;
                                                }
                                                this.a(child2, n22, this.mz);
                                            }
                                        }
                                    }
                                    break Label_0668;
                                }
                                final int n19 = 0;
                                continue;
                            }
                        }
                    }
                    if (((Q)this.mE.getLayoutParams()).mR) {
                        this.a(this.mE, this.mF, this.my);
                    }
                }
                else {
                    for (int k = 0; k < childCount; ++k) {
                        this.a(this.getChildAt(k), 0.0f, this.my);
                    }
                }
                final View me = this.mE;
                final boolean cm3 = this.cm();
                int paddingLeft;
                if (cm3) {
                    paddingLeft = this.getWidth() - this.getPaddingRight();
                }
                else {
                    paddingLeft = this.getPaddingLeft();
                }
                int paddingLeft2;
                if (cm3) {
                    paddingLeft2 = this.getPaddingLeft();
                }
                else {
                    paddingLeft2 = this.getWidth() - this.getPaddingRight();
                }
                final int paddingTop2 = this.getPaddingTop();
                final int n23 = this.getHeight() - this.getPaddingBottom();
                while (true) {
                    Label_1047: {
                        if (me == null) {
                            break Label_1047;
                        }
                        int n24 = 0;
                        Label_0772: {
                            if (ad.o(me)) {
                                n24 = 1;
                            }
                            else {
                                if (Build$VERSION.SDK_INT < 18) {
                                    final Drawable background = me.getBackground();
                                    if (background != null) {
                                        if (background.getOpacity() == -1) {
                                            n24 = 1;
                                            break Label_0772;
                                        }
                                        n24 = 0;
                                        break Label_0772;
                                    }
                                }
                                n24 = 0;
                            }
                        }
                        if (n24 == 0) {
                            break Label_1047;
                        }
                        final int left = me.getLeft();
                        final int right = me.getRight();
                        final int top = me.getTop();
                        final int bottom = me.getBottom();
                        for (int childCount3 = this.getChildCount(), l = 0; l < childCount3; ++l) {
                            final View child3 = this.getChildAt(l);
                            if (child3 == me) {
                                break;
                            }
                            int n25;
                            if (cm3) {
                                n25 = paddingLeft2;
                            }
                            else {
                                n25 = paddingLeft;
                            }
                            final int max = Math.max(n25, child3.getLeft());
                            final int max2 = Math.max(paddingTop2, child3.getTop());
                            int n26;
                            if (cm3) {
                                n26 = paddingLeft;
                            }
                            else {
                                n26 = paddingLeft2;
                            }
                            final int min = Math.min(n26, child3.getRight());
                            final int min2 = Math.min(n23, child3.getBottom());
                            int visibility;
                            if (max >= left && max2 >= top && min <= right && min2 <= bottom) {
                                visibility = 4;
                            }
                            else {
                                visibility = 0;
                            }
                            child3.setVisibility(visibility);
                        }
                        break Label_1082;
                    }
                    final int bottom = 0;
                    final int top = 0;
                    final int right = 0;
                    final int left = 0;
                    continue;
                }
            }
        }
        this.jc = false;
    }
    
    protected final void onMeasure(final int n, final int n2) {
        final int mode = View$MeasureSpec.getMode(n);
        final int size = View$MeasureSpec.getSize(n);
        final int mode2 = View$MeasureSpec.getMode(n2);
        final int size2 = View$MeasureSpec.getSize(n2);
        while (true) {
            Label_1111: {
                int n3;
                int n4;
                int n5;
                if (mode != 1073741824) {
                    if (!this.isInEditMode()) {
                        throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
                    }
                    if (mode == Integer.MIN_VALUE || mode != 0) {
                        break Label_1111;
                    }
                    n3 = mode2;
                    n4 = 300;
                    n5 = size2;
                }
                else {
                    if (mode2 != 0) {
                        break Label_1111;
                    }
                    if (!this.isInEditMode()) {
                        throw new IllegalStateException("Height must not be UNSPECIFIED");
                    }
                    if (mode2 != 0) {
                        break Label_1111;
                    }
                    n3 = Integer.MIN_VALUE;
                    n4 = size;
                    n5 = 300;
                }
                int n6 = 0;
                int n7 = 0;
                switch (n3) {
                    default: {
                        n6 = 0;
                        n7 = -1;
                        break;
                    }
                    case 1073741824: {
                        n6 = (n7 = n5 - this.getPaddingTop() - this.getPaddingBottom());
                        break;
                    }
                    case Integer.MIN_VALUE: {
                        n7 = n5 - this.getPaddingTop() - this.getPaddingBottom();
                        n6 = 0;
                        break;
                    }
                }
                boolean md = false;
                final int n8 = n4 - this.getPaddingLeft() - this.getPaddingRight();
                final int childCount = this.getChildCount();
                if (childCount > 2) {
                    Log.e("SlidingPaneLayout", "onMeasure: More than two child views are not supported.");
                }
                this.mE = null;
                int i = 0;
                int n9 = n8;
                int min = n6;
                float n10 = 0.0f;
                while (i < childCount) {
                    final View child = this.getChildAt(i);
                    final Q q = (Q)child.getLayoutParams();
                    int n11 = 0;
                    float n12 = 0.0f;
                    int n13 = 0;
                    boolean b = false;
                    Label_0209: {
                        if (child.getVisibility() == 8) {
                            q.mR = false;
                            n11 = n9;
                            n12 = n10;
                            n13 = min;
                            b = md;
                        }
                        else {
                            if (q.weight > 0.0f) {
                                n10 += q.weight;
                                if (q.width == 0) {
                                    n11 = n9;
                                    n12 = n10;
                                    n13 = min;
                                    b = md;
                                    break Label_0209;
                                }
                            }
                            final int n14 = q.leftMargin + q.rightMargin;
                            int n15;
                            if (q.width == -2) {
                                n15 = View$MeasureSpec.makeMeasureSpec(n8 - n14, Integer.MIN_VALUE);
                            }
                            else if (q.width == -1) {
                                n15 = View$MeasureSpec.makeMeasureSpec(n8 - n14, 1073741824);
                            }
                            else {
                                n15 = View$MeasureSpec.makeMeasureSpec(q.width, 1073741824);
                            }
                            int n16;
                            if (q.height == -2) {
                                n16 = View$MeasureSpec.makeMeasureSpec(n7, Integer.MIN_VALUE);
                            }
                            else if (q.height == -1) {
                                n16 = View$MeasureSpec.makeMeasureSpec(n7, 1073741824);
                            }
                            else {
                                n16 = View$MeasureSpec.makeMeasureSpec(q.height, 1073741824);
                            }
                            child.measure(n15, n16);
                            final int measuredWidth = child.getMeasuredWidth();
                            final int measuredHeight = child.getMeasuredHeight();
                            if (n3 == Integer.MIN_VALUE && measuredHeight > min) {
                                min = Math.min(measuredHeight, n7);
                            }
                            final int n17 = n9 - measuredWidth;
                            final boolean mq = n17 < 0;
                            q.mQ = mq;
                            final boolean b2 = mq | md;
                            if (q.mQ) {
                                this.mE = child;
                            }
                            n11 = n17;
                            n13 = min;
                            final float n18 = n10;
                            b = b2;
                            n12 = n18;
                        }
                    }
                    ++i;
                    md = b;
                    min = n13;
                    n10 = n12;
                    n9 = n11;
                }
                if (md || n10 > 0.0f) {
                    final int n19 = n8 - this.mC;
                    for (int j = 0; j < childCount; ++j) {
                        final View child2 = this.getChildAt(j);
                        if (child2.getVisibility() != 8) {
                            final Q q2 = (Q)child2.getLayoutParams();
                            if (child2.getVisibility() != 8) {
                                boolean b3;
                                if (q2.width == 0 && q2.weight > 0.0f) {
                                    b3 = true;
                                }
                                else {
                                    b3 = false;
                                }
                                int measuredWidth2;
                                if (b3) {
                                    measuredWidth2 = 0;
                                }
                                else {
                                    measuredWidth2 = child2.getMeasuredWidth();
                                }
                                if (md && child2 != this.mE) {
                                    if (q2.width < 0 && (measuredWidth2 > n19 || q2.weight > 0.0f)) {
                                        int n20;
                                        if (b3) {
                                            if (q2.height == -2) {
                                                n20 = View$MeasureSpec.makeMeasureSpec(n7, Integer.MIN_VALUE);
                                            }
                                            else if (q2.height == -1) {
                                                n20 = View$MeasureSpec.makeMeasureSpec(n7, 1073741824);
                                            }
                                            else {
                                                n20 = View$MeasureSpec.makeMeasureSpec(q2.height, 1073741824);
                                            }
                                        }
                                        else {
                                            n20 = View$MeasureSpec.makeMeasureSpec(child2.getMeasuredHeight(), 1073741824);
                                        }
                                        child2.measure(View$MeasureSpec.makeMeasureSpec(n19, 1073741824), n20);
                                    }
                                }
                                else if (q2.weight > 0.0f) {
                                    int n21;
                                    if (q2.width == 0) {
                                        if (q2.height == -2) {
                                            n21 = View$MeasureSpec.makeMeasureSpec(n7, Integer.MIN_VALUE);
                                        }
                                        else if (q2.height == -1) {
                                            n21 = View$MeasureSpec.makeMeasureSpec(n7, 1073741824);
                                        }
                                        else {
                                            n21 = View$MeasureSpec.makeMeasureSpec(q2.height, 1073741824);
                                        }
                                    }
                                    else {
                                        n21 = View$MeasureSpec.makeMeasureSpec(child2.getMeasuredHeight(), 1073741824);
                                    }
                                    if (md) {
                                        final int n22 = n8 - (q2.leftMargin + q2.rightMargin);
                                        final int measureSpec = View$MeasureSpec.makeMeasureSpec(n22, 1073741824);
                                        if (measuredWidth2 != n22) {
                                            child2.measure(measureSpec, n21);
                                        }
                                    }
                                    else {
                                        child2.measure(View$MeasureSpec.makeMeasureSpec(measuredWidth2 + (int)(q2.weight * Math.max(0, n9) / n10), 1073741824), n21);
                                    }
                                }
                            }
                        }
                    }
                }
                this.setMeasuredDimension(n4, min + this.getPaddingTop() + this.getPaddingBottom());
                this.mD = md;
                if (this.mJ.cr() != 0 && !md) {
                    this.mJ.abort();
                }
                return;
            }
            int n3 = mode2;
            int n4 = size;
            int n5 = size2;
            continue;
        }
    }
    
    protected final void onRestoreInstanceState(final Parcelable parcelable) {
        final SlidingPaneLayout$SavedState slidingPaneLayout$SavedState = (SlidingPaneLayout$SavedState)parcelable;
        super.onRestoreInstanceState(slidingPaneLayout$SavedState.getSuperState());
        if (slidingPaneLayout$SavedState.mT) {
            final View me = this.mE;
            if (this.jc || this.l(1.0f)) {
                this.mK = true;
            }
        }
        else {
            final View me2 = this.mE;
            this.cl();
        }
        this.mK = slidingPaneLayout$SavedState.mT;
    }
    
    protected final Parcelable onSaveInstanceState() {
        final SlidingPaneLayout$SavedState slidingPaneLayout$SavedState = new SlidingPaneLayout$SavedState(super.onSaveInstanceState());
        boolean mk;
        if (this.mD) {
            mk = (!this.mD || this.mF == 1.0f);
        }
        else {
            mk = this.mK;
        }
        slidingPaneLayout$SavedState.mT = mk;
        return (Parcelable)slidingPaneLayout$SavedState;
    }
    
    protected final void onSizeChanged(final int n, final int n2, final int n3, final int n4) {
        super.onSizeChanged(n, n2, n3, n4);
        if (n != n3) {
            this.jc = true;
        }
    }
    
    public final boolean onTouchEvent(final MotionEvent motionEvent) {
        if (!this.mD) {
            return super.onTouchEvent(motionEvent);
        }
        this.mJ.g(motionEvent);
        switch (0xFF & motionEvent.getAction()) {
            case 0: {
                final float x = motionEvent.getX();
                final float y = motionEvent.getY();
                this.iS = x;
                this.iT = y;
                break;
            }
            case 1: {
                if (!this.X(this.mE)) {
                    break;
                }
                final float x2 = motionEvent.getX();
                final float y2 = motionEvent.getY();
                final float n = x2 - this.iS;
                final float n2 = y2 - this.iT;
                final int touchSlop = this.mJ.getTouchSlop();
                if (n * n + n2 * n2 >= touchSlop * touchSlop) {
                    break;
                }
                final ag mj = this.mJ;
                if (ag.b(this.mE, (int)x2, (int)y2)) {
                    final View me = this.mE;
                    this.cl();
                    break;
                }
                break;
            }
        }
        return true;
    }
    
    public final void requestChildFocus(final View view, final View view2) {
        super.requestChildFocus(view, view2);
        if (!this.isInTouchMode() && !this.mD) {
            this.mK = (view == this.mE);
        }
    }
}
