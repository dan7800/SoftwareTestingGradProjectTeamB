package com.android.mail.browse;

import android.database.*;
import android.content.*;
import android.util.*;
import android.support.v4.view.*;
import android.view.*;
import com.android.mail.utils.*;
import java.util.*;
import android.graphics.*;

public class ConversationContainer extends ViewGroup implements aN
{
    private static final int[] alr;
    private static final int[] als;
    private float IQ;
    private boolean alA;
    private int alB;
    private boolean alC;
    private boolean alD;
    private final j<Integer, View> alE;
    private final SparseArray<s> alF;
    private boolean alG;
    private final A alH;
    private final DataSetObserver alI;
    private int alJ;
    private boolean alK;
    private View alL;
    private boolean alM;
    private int alN;
    private final t alO;
    private m alu;
    private aa alv;
    private r[] alw;
    private ConversationWebView alx;
    private aU aly;
    private final List<View> alz;
    private final int iP;
    private float iR;
    private int iU;
    private int yy;
    
    static {
        alr = new int[] { 2131558780 };
        als = new int[] { 2131558781 };
    }
    
    public ConversationContainer(final Context context) {
        this(context, null);
    }
    
    public ConversationContainer(final Context context, final AttributeSet set) {
        super(context, set);
        this.alz = new ArrayList<View>();
        this.alC = false;
        this.alE = new j<Integer, View>();
        this.alI = new o(this, (byte)0);
        this.alO = new t(this, (byte)0);
        this.alF = (SparseArray<s>)new SparseArray();
        this.alH = new A(context);
        this.iP = ViewConfiguration.get(context).getScaledTouchSlop();
        this.setMotionEventSplittingEnabled(false);
    }
    
    private static r a(final V v, int n, final int n2, int gravity) {
        if (v.getHeight() == 0) {
            if (gravity != 48) {
                n = n2;
            }
            return new r(n, n);
        }
        if (gravity == 0) {
            gravity = v.getGravity();
        }
        final int n3 = gravity & 0x70;
        switch (n3) {
            default: {
                throw new UnsupportedOperationException("unsupported gravity: " + n3);
            }
            case 80: {
                return new r(n2 - v.getHeight(), n2);
            }
            case 48: {
                return new r(n, n + v.getHeight());
            }
        }
    }
    
    private void a(final int n, final s s, final int n2, final int n3) {
        this.alF.remove(n);
        this.a(s, false);
        this.f(s.view, n2, n3);
    }
    
    private void a(final s s, final boolean b) {
        if (b) {
            this.removeViewInLayout(s.view);
        }
        this.alE.d(s.alR, s.view);
        if (s.view instanceof q) {
            ((q)s.view).oU();
        }
    }
    
    private void a(final String s, final Object... array) {
        if (this.alG) {
            return;
        }
        E.c("ConvLayout", s, array);
    }
    
    private void aq(final View view) {
        ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams)view.getLayoutParams();
        if (viewGroup$MarginLayoutParams == null) {
            viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams)this.generateDefaultLayoutParams();
        }
        final int childMeasureSpec = ViewGroup.getChildMeasureSpec(this.yy, this.getPaddingLeft() + this.getPaddingRight() + viewGroup$MarginLayoutParams.leftMargin + viewGroup$MarginLayoutParams.rightMargin, viewGroup$MarginLayoutParams.width);
        final int height = viewGroup$MarginLayoutParams.height;
        int n;
        if (height > 0) {
            n = View$MeasureSpec.makeMeasureSpec(height, 1073741824);
        }
        else {
            n = View$MeasureSpec.makeMeasureSpec(0, 0);
        }
        view.measure(childMeasureSpec, n);
    }
    
    private int bR(final int n) {
        return (int)(n * this.IQ);
    }
    
    private void c(final int n, final int top, int alN, final boolean b) {
        final s s = (s)this.alF.get(n);
        final V cd = this.alv.cd(n);
        cd.setTop(top);
        if (top != alN && alN > this.alB && top < this.alB + this.getHeight()) {
            View view;
            if (s != null) {
                view = s.view;
            }
            else {
                view = null;
            }
            if (view == null) {
                final int itemViewType = this.alv.getItemViewType(n);
                final View view2 = this.alE.S(itemViewType);
                final View view3 = this.alv.getView(n, view2, this);
                this.alF.put(n, (Object)new s(view3, itemViewType));
                if (view2 == view3) {
                    E.c("ConvLayout", "want to REUSE scrolled-in view: index=%d obj=%s", n, view3);
                }
                else {
                    E.c("ConvLayout", "want to CREATE scrolled-in view: index=%d obj=%s", n, view3);
                }
                if (view3.getParent() == null) {
                    this.g(view3, b);
                }
                else {
                    view3.postInvalidate();
                }
                ad.d(view3, ad.m((View)this));
                this.aq(view3);
                cd.qr();
                this.a("show/measure overlay %d", n);
                view = view3;
            }
            else {
                this.a("move overlay %d", n);
                if (!cd.qq()) {
                    cd.av(view);
                    this.aq(view);
                    cd.qr();
                    this.a("and (re)measure overlay %d, old/new heights=%d/%d", n, view.getHeight(), view.getMeasuredHeight());
                }
            }
            this.a("laying out overlay %d with h=%d", n, view.getMeasuredHeight());
            final int n2 = top + view.getMeasuredHeight();
            this.f(view, top, n2);
            int alN2;
            if (n2 > this.alN) {
                alN2 = n2;
            }
            else {
                alN2 = this.alN;
            }
            this.alN = alN2;
        }
        else {
            if (s != null) {
                this.a("hide overlay %d", n);
                this.a(n, s, top, alN);
            }
            else {
                this.a("ignore non-visible overlay %d", n);
            }
            if (alN <= this.alN) {
                alN = this.alN;
            }
            this.alN = alN;
        }
        if (top <= this.alB && cd.qu()) {
            if (this.alJ == -1) {
                this.alJ = n;
            }
            else if (n > this.alJ) {
                this.alJ = n;
            }
        }
    }
    
    private void f(final View view, final int n, final int n2) {
        final int n3 = n - this.alB;
        final int n4 = n2 - this.alB;
        final int n5 = this.getPaddingLeft() + ((ViewGroup$MarginLayoutParams)view.getLayoutParams()).leftMargin;
        view.layout(n5, n3, n5 + view.getMeasuredWidth(), n4);
    }
    
    private void g(final int alB, final boolean b) {
        this.alB = alB;
        if (this.alA) {
            this.IQ = this.alx.getScale();
        }
        else if (this.IQ == 0.0f) {
            this.IQ = this.alx.qZ();
        }
        this.a("in positionOverlays, raw scale=%f, effective scale=%f", this.alx.getScale(), this.IQ);
        if (this.alw != null && this.alv != null) {
            this.a("IN positionOverlays, spacerCount=%d overlayCount=%d", this.alw.length, this.alv.getCount());
            this.alJ = -1;
            this.alN = 0;
            for (int n = -1 + this.alv.getCount(), n2 = -1 + this.alw.length; n2 >= 0 && n >= 0; --n2) {
                final int br = this.bR(this.alw[n2].top);
                final int br2 = this.bR(this.alw[n2].bottom);
                int n3;
                int n4;
                boolean b2;
                if (n2 == 0) {
                    n3 = 48;
                    n4 = n;
                    b2 = true;
                }
                else {
                    n3 = 0;
                    n4 = 0;
                    b2 = false;
                }
                int n5;
                if (b2) {
                    n5 = n4 - n;
                }
                else {
                    n5 = n;
                }
                final V cd = this.alv.cd(n5);
                final r a = a(cd, br, br2, n3);
                this.a("in loop, spacer=%d overlay=%d t/b=%d/%d (%s)", n2, n5, a.top, a.bottom, cd);
                this.c(n5, a.top, a.bottom, b);
                r r = a;
                while (--n >= 0) {
                    int n6;
                    if (b2) {
                        n6 = n4 - n;
                    }
                    else {
                        n6 = n;
                    }
                    final V cd2 = this.alv.cd(n6);
                    if (n2 > 0 && !cd2.qn()) {
                        break;
                    }
                    int bottom;
                    if (b2) {
                        bottom = r.bottom;
                    }
                    else {
                        bottom = br;
                    }
                    int top;
                    if (b2) {
                        top = br2;
                    }
                    else {
                        top = r.top;
                    }
                    final r a2 = a(cd2, bottom, top, n3);
                    this.a("in contig loop, spacer=%d overlay=%d t/b=%d/%d (%s)", n2, n6, a2.top, a2.bottom, cd2);
                    this.c(n6, a2.top, a2.bottom, b);
                    r = a2;
                }
            }
            final int alJ = this.alJ;
            while (true) {
                Label_0940: {
                    if (!this.alK || alJ == -1) {
                        break Label_0940;
                    }
                    final V cd3 = this.alv.cd(alJ);
                    if (!cd3.qt()) {
                        break Label_0940;
                    }
                    Label_0619: {
                        if (cd3 != null) {
                            cd3.i((View)this.aly, false);
                            this.aly.setVisibility(0);
                            final int n7 = alJ + 1;
                            while (true) {
                                for (int count = this.alv.getCount(), i = n7; i < count; ++i) {
                                    final V cd4 = this.alv.cd(i);
                                    if (cd4.qu()) {
                                        int min = 0;
                                        if (cd4 != null) {
                                            min = Math.min(0, cd4.getTop() - this.aly.getHeight() - this.alB);
                                            if (min < 0) {
                                                final Float at = this.alH.AT();
                                                if (at != null && at > 600.0f) {
                                                    min = 0;
                                                }
                                            }
                                        }
                                        this.aly.setTranslationY((float)min);
                                        break Label_0619;
                                    }
                                }
                                final V cd4 = null;
                                continue;
                            }
                        }
                        this.aly.setVisibility(8);
                        this.aly.ov();
                    }
                    final int alN = this.alN;
                    final int br3 = this.bR(this.alx.getContentHeight());
                    final int height = br3 - alN;
                    if (height > 0) {
                        if (this.alL == null) {
                            this.alL = this.alv.getLayoutInflater().inflate(2130968691, (ViewGroup)this, false);
                        }
                        final ViewGroup$LayoutParams layoutParams = this.alL.getLayoutParams();
                        layoutParams.height = height;
                        this.alL.setLayoutParams(layoutParams);
                        if (!this.alM) {
                            this.g(this.alL, b);
                            this.alM = true;
                        }
                        this.aq(this.alL);
                        this.f(this.alL, alN, br3);
                        return;
                    }
                    if (this.alL != null && this.alM) {
                        if (b) {
                            this.post((Runnable)this.alO);
                        }
                        else {
                            this.alO.run();
                        }
                        this.alM = false;
                        return;
                    }
                    return;
                }
                final V cd3 = null;
                continue;
            }
        }
    }
    
    private void g(final MotionEvent motionEvent, final int action) {
        final MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setAction(action);
        this.alx.onTouchEvent(obtain);
        E.b("ConvLayout", "in Container.OnTouch. fake: action=%d x/y=%f/%f pointers=%d", obtain.getActionMasked(), obtain.getX(), obtain.getY(), obtain.getPointerCount());
    }
    
    private void g(final View view, final boolean b) {
        final p p2 = new p(this, view);
        if (b) {
            this.post((Runnable)p2);
            return;
        }
        p2.run();
    }
    
    private void oQ() {
        for (int size = this.alF.size(), i = 0; i < size; ++i) {
            this.a((s)this.alF.valueAt(i), true);
        }
        this.alF.clear();
    }
    
    public final void a(final aa alv) {
        if (this.alv != null) {
            this.alv.unregisterDataSetObserver(this.alI);
            this.oQ();
        }
        this.alv = alv;
        if (this.alv != null) {
            this.alv.registerDataSetObserver(this.alI);
        }
    }
    
    public final void a(final m alu) {
        this.alu = alu;
        this.alK = false;
    }
    
    public final void a(final r[] alw) {
        this.a("*** got overlay spacer positions:", new Object[0]);
        for (final r r : alw) {
            this.a("top=%d bottom=%d", r.top, r.bottom);
        }
        this.alw = alw;
        this.g(this.alB, false);
    }
    
    public final int ap(final View view) {
        this.aq(view);
        return view.getMeasuredHeight();
    }
    
    public final void bP(final int n) {
        this.alH.dr(n);
        this.g(n, this.alG = true);
        this.alG = false;
    }
    
    public final View bQ(final int n) {
        return this.alE.T(n);
    }
    
    public final void bS(final int n) {
        final int alB = this.alB;
        this.alB = 0;
        final s s = (s)this.alF.get(n);
        if (s != null) {
            final int height = this.getHeight();
            this.a(n, s, height, height + s.view.getHeight());
            E.d("ConvLayout", "footer scrolled off. container height=%s, measuredHeight=%s", height, this.getMeasuredHeight());
        }
        else {
            E.d("ConvLayout", "footer not found with adapterIndex=%s", n);
            for (int size = this.alF.size(), i = 0; i < size; ++i) {
                final int key = this.alF.keyAt(i);
                final s s2 = (s)this.alF.valueAt(i);
                E.d("ConvLayout", "OverlayView: adapterIndex=%s, itemType=%s, view=%s", key, s2.alR, s2.view);
            }
            for (int count = this.alv.getCount(), j = 0; j < count; ++j) {
                E.d("ConvLayout", "adapter item: index=%s, item=%s", j, this.alv.cd(j));
            }
        }
        this.alB = alB;
    }
    
    public final void c(final int n, final View view) {
        this.alE.d(n, view);
        this.g(view, false);
    }
    
    protected boolean checkLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams instanceof ViewGroup$MarginLayoutParams;
    }
    
    protected ViewGroup$LayoutParams generateDefaultLayoutParams() {
        return (ViewGroup$LayoutParams)new ViewGroup$MarginLayoutParams(-1, -2);
    }
    
    public ViewGroup$LayoutParams generateLayoutParams(final AttributeSet set) {
        return (ViewGroup$LayoutParams)new ViewGroup$MarginLayoutParams(this.getContext(), set);
    }
    
    protected ViewGroup$LayoutParams generateLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return (ViewGroup$LayoutParams)new ViewGroup$MarginLayoutParams(viewGroup$LayoutParams);
    }
    
    public final View h(final View view, final boolean b) {
        final HashSet<View> set = new HashSet<View>();
        this.alE.a(new n(this, set));
        return this.alv.a(view, b, set);
    }
    
    public final void j(final List<Integer> list) {
        for (final Integer n : list) {
            final V cd = this.alv.cd(n);
            final s s = (s)this.alF.get((int)n);
            if (s != null && s.view != null && cd != null) {
                cd.au(s.view);
            }
            if (n == this.alJ && this.aly.c(cd)) {
                this.aly.refresh();
            }
        }
    }
    
    public final void oO() {
        (this.aly = (aU)this.findViewById(2131558629)).rJ();
    }
    
    public final aU oP() {
        return this.aly;
    }
    
    public final void oR() {
        this.alw = null;
    }
    
    public final void oS() {
        this.alv.qI();
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        (this.alx = (ConversationWebView)this.findViewById(2131558780)).a(this);
        final int[] alr = ConversationContainer.alr;
        for (int length = alr.length, i = 0; i < length; ++i) {
            this.alz.add(this.findViewById(alr[i]));
        }
        final int[] als = ConversationContainer.als;
        for (int length2 = als.length, j = 0; j < length2; ++j) {
            this.alz.add(this.findViewById(als[j]));
        }
    }
    
    public boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        boolean b = true;
        if (!this.alA) {
            this.alA = b;
        }
        if (this.alx.qX()) {
            return false;
        }
        switch (motionEvent.getActionMasked()) {
            case 5: {
                E.c("ConvLayout", "Container is intercepting non-primary touch!", new Object[0]);
                this.requestDisallowInterceptTouchEvent(this.alD = b);
                return b;
            }
            case 0: {
                this.iR = motionEvent.getY();
                this.iU = motionEvent.getPointerId(0);
                b = false;
                return b;
            }
            case 2: {
                final float y = motionEvent.getY(motionEvent.findPointerIndex(this.iU));
                if ((int)Math.abs(y - this.iR) > this.iP) {
                    this.iR = y;
                    return b;
                }
                break;
            }
        }
        b = false;
        return b;
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        E.c("ConvLayout", "*** IN header container onLayout", new Object[0]);
        for (final View view : this.alz) {
            if (view.getVisibility() != 8) {
                final int measuredWidth = view.getMeasuredWidth();
                final int measuredHeight = view.getMeasuredHeight();
                final ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams)view.getLayoutParams();
                final int leftMargin = viewGroup$MarginLayoutParams.leftMargin;
                final int topMargin = viewGroup$MarginLayoutParams.topMargin;
                view.layout(leftMargin, topMargin, measuredWidth + leftMargin, measuredHeight + topMargin);
            }
        }
        if (this.alv != null) {
            for (int count = this.alv.getCount(), i = 0; i < count; ++i) {
                this.alv.cd(i).qs();
            }
        }
        this.g(this.alB, false);
    }
    
    protected void onMeasure(final int yy, final int n) {
        super.onMeasure(yy, n);
        if (E.isLoggable("ConvLayout", 3)) {
            E.c("ConvLayout", "*** IN header container onMeasure spec for w/h=%s/%s", View$MeasureSpec.toString(yy), View$MeasureSpec.toString(n));
        }
        for (final View view : this.alz) {
            if (view.getVisibility() != 8) {
                this.measureChildWithMargins(view, yy, 0, n, 0);
            }
        }
        this.yy = yy;
    }
    
    protected boolean onRequestFocusInDescendants(final int n, final Rect rect) {
        return this.alv != null && this.alv.qI();
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        final int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 3) {
            this.alC = false;
        }
        else if (!this.alC && (actionMasked == 2 || actionMasked == 5)) {
            this.g(motionEvent, 0);
            if (this.alD) {
                this.g(motionEvent, 5);
                this.alD = false;
            }
            this.alC = true;
        }
        return this.alx.onTouchEvent(motionEvent);
    }
}
