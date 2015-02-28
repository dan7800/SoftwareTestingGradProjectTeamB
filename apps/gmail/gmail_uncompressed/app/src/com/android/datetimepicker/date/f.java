package com.android.datetimepicker.date;

import java.text.*;
import android.content.*;
import android.graphics.drawable.*;
import android.util.*;
import android.view.*;
import android.widget.*;
import android.view.accessibility.*;
import android.os.*;
import java.util.*;
import android.annotation.*;

public abstract class f extends ListView implements AbsListView$OnScrollListener, d
{
    private static SimpleDateFormat HM;
    public static int Io;
    private a IA;
    private boolean IB;
    protected h IC;
    protected int Ip;
    protected boolean Iq;
    protected int Ir;
    protected float Is;
    protected j It;
    protected i Iu;
    protected j Iv;
    protected int Iw;
    protected long Ix;
    protected int Iy;
    protected int Iz;
    protected Context mContext;
    protected Handler mHandler;
    
    static {
        f.Io = -1;
        f.HM = new SimpleDateFormat("yyyy", Locale.getDefault());
    }
    
    public f(final Context mContext, final a ia) {
        super(mContext);
        this.Ip = 6;
        this.Iq = false;
        this.Ir = 7;
        this.Is = 1.0f;
        this.It = new j();
        this.Iv = new j();
        this.Iy = 0;
        this.Iz = 0;
        this.IC = new h(this);
        this.mHandler = new Handler();
        this.setLayoutParams((ViewGroup$LayoutParams)new AbsListView$LayoutParams(-1, -1));
        this.setDrawSelectorOnTop(false);
        this.mContext = mContext;
        this.setCacheColorHint(0);
        this.setDivider((Drawable)null);
        this.setItemsCanFocus(true);
        this.setFastScrollEnabled(false);
        this.setVerticalScrollBarEnabled(false);
        this.setOnScrollListener((AbsListView$OnScrollListener)this);
        this.setFadingEdgeLength(0);
        this.setFriction(ViewConfiguration.getScrollFriction() * this.Is);
        (this.IA = ia).a(this);
        this.go();
        this.gm();
    }
    
    private boolean a(final j j, final boolean b, final boolean b2) {
        if (b2) {
            this.It.c(j);
        }
        this.Iv.c(j);
        final int n = 12 * (j.year - this.IA.gg()) + j.month;
        int n2 = 0;
        View child;
        while (true) {
            final int n3 = n2 + 1;
            child = this.getChildAt(n2);
            if (child == null) {
                break;
            }
            final int top = child.getTop();
            if (Log.isLoggable("MonthFragment", 3)) {
                Log.d("MonthFragment", "child at " + (n3 - 1) + " has top " + top);
            }
            if (top >= 0) {
                break;
            }
            n2 = n3;
        }
        if (child != null) {
            this.getPositionForView(child);
        }
        if (b2) {
            this.Iu.a(this.It);
        }
        if (Log.isLoggable("MonthFragment", 3)) {
            Log.d("MonthFragment", "GoTo position " + n);
        }
        this.Iw = this.Iv.month;
        this.invalidateViews();
        this.Iy = 2;
        if (b) {
            this.smoothScrollToPositionFromTop(n, f.Io, 250);
            return true;
        }
        this.aG(n);
        return false;
    }
    
    private void go() {
        if (this.Iu == null) {
            this.Iu = this.a(this.getContext(), this.IA);
        }
        else {
            this.Iu.a(this.It);
        }
        this.setAdapter((ListAdapter)this.Iu);
    }
    
    public abstract i a(final Context p0, final a p1);
    
    public final void aG(final int n) {
        this.clearFocus();
        this.post((Runnable)new g(this, n));
        this.onScrollStateChanged((AbsListView)this, 0);
    }
    
    public final void gm() {
        this.a(this.IA.gf(), false, true);
    }
    
    public final void gn() {
        this.go();
    }
    
    public final int gp() {
        final int firstVisiblePosition = this.getFirstVisiblePosition();
        final int height = this.getHeight();
        int i = 0;
        int n = 0;
        int n2 = 0;
        int n3 = 0;
        while (i < height) {
            final View child = this.getChildAt(n);
            if (child == null) {
                break;
            }
            final int bottom = child.getBottom();
            int n4 = Math.min(bottom, height) - Math.max(0, child.getTop());
            if (n4 > n3) {
                n2 = n;
            }
            else {
                n4 = n3;
            }
            ++n;
            n3 = n4;
            i = bottom;
        }
        return n2 + firstVisiblePosition;
    }
    
    protected void layoutChildren() {
        int i = 0;
        while (true) {
            for (int childCount = this.getChildCount(), j = 0; j < childCount; ++j) {
                final View child = this.getChildAt(j);
                if (child instanceof k) {
                    final j gt = ((k)child).gt();
                    if (gt != null) {
                        if (Build$VERSION.SDK_INT == 17) {
                            ((k)child).gu();
                        }
                        final j k = gt;
                        super.layoutChildren();
                        if (this.IB) {
                            this.IB = false;
                        }
                        else if (k != null) {
                            while (i < this.getChildCount()) {
                                final View child2 = this.getChildAt(i);
                                if (child2 instanceof k && ((k)child2).d(k)) {
                                    break;
                                }
                                ++i;
                            }
                        }
                        return;
                    }
                }
            }
            final j k = null;
            continue;
        }
    }
    
    public void onInitializeAccessibilityEvent(final AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setItemCount(-1);
    }
    
    public void onInitializeAccessibilityNodeInfo(final AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.addAction(4096);
        accessibilityNodeInfo.addAction(8192);
    }
    
    public void onScroll(final AbsListView absListView, final int n, final int n2, final int n3) {
        final k k = (k)absListView.getChildAt(0);
        if (k == null) {
            return;
        }
        this.Ix = absListView.getFirstVisiblePosition() * k.getHeight() - k.getBottom();
        this.Iy = this.Iz;
    }
    
    public void onScrollStateChanged(final AbsListView absListView, final int n) {
        this.IC.aH(n);
    }
    
    @SuppressLint({ "NewApi" })
    public boolean performAccessibilityAction(final int n, final Bundle bundle) {
        if (n != 4096 && n != 8192) {
            return super.performAccessibilityAction(n, bundle);
        }
        final int firstVisiblePosition = this.getFirstVisiblePosition();
        final j j = new j(firstVisiblePosition / 12 + this.IA.gg(), firstVisiblePosition % 12, 1);
        if (n == 4096) {
            ++j.month;
            if (j.month == 12) {
                j.month = 0;
                ++j.year;
            }
        }
        else if (n == 8192) {
            final View child = this.getChildAt(0);
            if (child != null && child.getTop() >= -1) {
                --j.month;
                if (j.month == -1) {
                    j.month = 11;
                    --j.year;
                }
            }
        }
        final Calendar instance = Calendar.getInstance();
        instance.set(j.year, j.month, j.IH);
        final StringBuffer sb = new StringBuffer();
        sb.append(instance.getDisplayName(2, 2, Locale.getDefault()));
        sb.append(" ");
        sb.append(f.HM.format(instance.getTime()));
        com.android.datetimepicker.i.a((View)this, sb.toString());
        this.a(j, true, false);
        return this.IB = true;
    }
}
