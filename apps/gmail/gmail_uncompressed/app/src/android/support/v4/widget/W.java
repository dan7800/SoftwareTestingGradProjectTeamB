package android.support.v4.widget;

import android.graphics.*;
import java.util.*;
import android.os.*;
import android.view.accessibility.*;
import android.view.*;
import android.support.v4.view.a.*;
import android.support.v4.view.*;

public abstract class w extends a
{
    private static final String ly;
    private final View aU;
    private final Rect lA;
    private final Rect lB;
    private final int[] lC;
    private final AccessibilityManager lD;
    private x lE;
    private int lF;
    private int lG;
    private final Rect lz;
    
    static {
        ly = View.class.getName();
    }
    
    public w(final View au) {
        this.lz = new Rect();
        this.lA = new Rect();
        this.lB = new Rect();
        this.lC = new int[2];
        this.lF = Integer.MIN_VALUE;
        this.lG = Integer.MIN_VALUE;
        if (au == null) {
            throw new IllegalArgumentException("View may not be null");
        }
        this.aU = au;
        this.lD = (AccessibilityManager)au.getContext().getSystemService("accessibility");
    }
    
    private void R(final int lg) {
        if (this.lG == lg) {
            return;
        }
        final int lg2 = this.lG;
        this.h(this.lG = lg, 128);
        this.h(lg2, 256);
    }
    
    private boolean S(final int n) {
        return this.lF == n;
    }
    
    private boolean a(final Rect rect) {
        if (rect == null || rect.isEmpty()) {
            return false;
        }
        if (this.aU.getWindowVisibility() != 0) {
            return false;
        }
        ViewParent viewParent;
        View view;
        for (viewParent = this.aU.getParent(); viewParent instanceof View; viewParent = view.getParent()) {
            view = (View)viewParent;
            if (ad.k(view) <= 0.0f || view.getVisibility() != 0) {
                return false;
            }
        }
        return viewParent != null && this.aU.getLocalVisibleRect(this.lB) && rect.intersect(this.lB);
    }
    
    protected abstract void a(final int p0, final i p1);
    
    protected abstract void a(final int p0, final AccessibilityEvent p1);
    
    protected abstract void b(final List<Integer> p0);
    
    public final void bW() {
        this.h(-1, 2048);
    }
    
    public final int bX() {
        return this.lF;
    }
    
    protected abstract int d(final float p0, final float p1);
    
    public final boolean dispatchHoverEvent(final MotionEvent motionEvent) {
        boolean b = true;
        if (!this.lD.isEnabled() || !e.a(this.lD)) {
            b = false;
        }
        else {
            switch (motionEvent.getAction()) {
                default: {
                    return false;
                }
                case 7:
                case 9: {
                    final int d = this.d(motionEvent.getX(), motionEvent.getY());
                    this.R(d);
                    if (d == Integer.MIN_VALUE) {
                        return false;
                    }
                    break;
                }
                case 10: {
                    if (this.lF != Integer.MIN_VALUE) {
                        this.R(Integer.MIN_VALUE);
                        return b;
                    }
                    return false;
                }
            }
        }
        return b;
    }
    
    @Override
    public final q e(final View view) {
        if (this.lE == null) {
            this.lE = new x(this, (byte)0);
        }
        return this.lE;
    }
    
    public final boolean h(final int n, final int n2) {
        if (n != Integer.MIN_VALUE && this.lD.isEnabled()) {
            final ViewParent parent = this.aU.getParent();
            if (parent != null) {
                AccessibilityEvent accessibilityEvent = null;
                switch (n) {
                    default: {
                        accessibilityEvent = AccessibilityEvent.obtain(n2);
                        accessibilityEvent.setEnabled(true);
                        accessibilityEvent.setClassName((CharSequence)w.ly);
                        this.a(n, accessibilityEvent);
                        if (accessibilityEvent.getText().isEmpty() && accessibilityEvent.getContentDescription() == null) {
                            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
                        }
                        accessibilityEvent.setPackageName((CharSequence)this.aU.getContext().getPackageName());
                        android.support.v4.view.a.a.a(accessibilityEvent).setSource(this.aU, n);
                        break;
                    }
                    case -1: {
                        accessibilityEvent = AccessibilityEvent.obtain(n2);
                        ad.onInitializeAccessibilityEvent(this.aU, accessibilityEvent);
                        break;
                    }
                }
                return aR.a(parent, this.aU, accessibilityEvent);
            }
        }
        return false;
    }
    
    protected abstract boolean i(final int p0, final int p1);
}
