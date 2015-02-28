package android.support.v4.view;

import java.util.*;
import android.graphics.*;
import android.support.v4.view.a.*;
import android.view.*;
import android.graphics.drawable.*;
import android.view.accessibility.*;
import android.os.*;

class af implements an
{
    WeakHashMap<View, aV> ig;
    
    af() {
        this.ig = null;
    }
    
    @Override
    public void a(final View view, final float n) {
    }
    
    @Override
    public void a(final View view, final int n, final int n2, final int n3, final int n4) {
        view.invalidate(n, n2, n3, n4);
    }
    
    @Override
    public void a(final View view, final int n, final Paint paint) {
    }
    
    @Override
    public void a(final View view, final Paint paint) {
    }
    
    @Override
    public void a(final View view, final T t) {
    }
    
    @Override
    public void a(final View view, final i i) {
    }
    
    @Override
    public void a(final View view, final a a) {
    }
    
    @Override
    public void a(final View view, final Runnable runnable) {
        view.postDelayed(runnable, this.aZ());
    }
    
    @Override
    public void a(final View view, final Runnable runnable, final long n) {
        view.postDelayed(runnable, n + this.aZ());
    }
    
    @Override
    public void a(final ViewGroup viewGroup, final boolean b) {
    }
    
    long aZ() {
        return 10L;
    }
    
    @Override
    public void b(final View view, final float n) {
    }
    
    @Override
    public boolean b(final View view, final int n) {
        return false;
    }
    
    @Override
    public void c(final View view, final float n) {
    }
    
    @Override
    public void c(final View view, final int n) {
    }
    
    @Override
    public void d(final View view, final float n) {
    }
    
    @Override
    public void d(final View view, final int n) {
    }
    
    @Override
    public void e(final View view, final float n) {
    }
    
    @Override
    public boolean e(final View view, final int n) {
        return false;
    }
    
    @Override
    public void f(final View view, final float n) {
    }
    
    @Override
    public int h(final View view) {
        return 2;
    }
    
    @Override
    public void i(final View view) {
        view.invalidate();
    }
    
    @Override
    public int j(final View view) {
        return 0;
    }
    
    @Override
    public float k(final View view) {
        return 1.0f;
    }
    
    @Override
    public int l(final View view) {
        return 0;
    }
    
    @Override
    public int m(final View view) {
        return 0;
    }
    
    @Override
    public ViewParent n(final View view) {
        return view.getParent();
    }
    
    @Override
    public boolean o(final View view) {
        final Drawable background = view.getBackground();
        boolean b = false;
        if (background != null) {
            final int opacity = background.getOpacity();
            b = false;
            if (opacity == -1) {
                b = true;
            }
        }
        return b;
    }
    
    @Override
    public void onInitializeAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
    }
    
    @Override
    public int p(final View view) {
        return 0;
    }
    
    @Override
    public boolean performAccessibilityAction(final View view, final int n, final Bundle bundle) {
        return false;
    }
    
    @Override
    public float q(final View view) {
        return 0.0f;
    }
    
    @Override
    public int r(final View view) {
        return 0;
    }
    
    @Override
    public int resolveSizeAndState(final int n, final int n2, final int n3) {
        return View.resolveSize(n, n2);
    }
    
    @Override
    public aV s(final View view) {
        return new aV(view);
    }
    
    @Override
    public float t(final View view) {
        return 0.0f;
    }
    
    @Override
    public int u(final View view) {
        return 0;
    }
    
    @Override
    public void v(final View view) {
    }
    
    @Override
    public boolean w(final View view) {
        return false;
    }
    
    @Override
    public void x(final View view) {
    }
}
