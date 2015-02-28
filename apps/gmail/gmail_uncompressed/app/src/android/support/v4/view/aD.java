package android.support.v4.view;

import android.graphics.*;
import android.support.v4.view.a.*;
import android.view.*;
import android.view.accessibility.*;
import android.os.*;

public final class ad
{
    static final an if;
    
    static {
        final int sdk_INT = Build$VERSION.SDK_INT;
        if (sdk_INT >= 21) {
            if = new ae();
            return;
        }
        if (sdk_INT >= 19) {
            if = new am();
            return;
        }
        if (sdk_INT >= 17) {
            if = new al();
            return;
        }
        if (sdk_INT >= 16) {
            if = new ak();
            return;
        }
        if (sdk_INT >= 14) {
            if = new aj();
            return;
        }
        if (sdk_INT >= 11) {
            if = new ai();
            return;
        }
        if (sdk_INT >= 9) {
            if = new ah();
            return;
        }
        if (sdk_INT >= 7) {
            if = new ag();
            return;
        }
        if = new af();
    }
    
    public static void a(final View view, final float n) {
        ad.if.a(view, n);
    }
    
    public static void a(final View view, final int n, final int n2, final int n3, final int n4) {
        ad.if.a(view, n, n2, n3, n4);
    }
    
    public static void a(final View view, final int n, final Paint paint) {
        ad.if.a(view, n, paint);
    }
    
    public static void a(final View view, final Paint paint) {
        ad.if.a(view, paint);
    }
    
    public static void a(final View view, final T t) {
        ad.if.a(view, t);
    }
    
    public static void a(final View view, final i i) {
        ad.if.a(view, i);
    }
    
    public static void a(final View view, final a a) {
        ad.if.a(view, a);
    }
    
    public static void a(final View view, final Runnable runnable) {
        ad.if.a(view, runnable);
    }
    
    public static void a(final View view, final Runnable runnable, final long n) {
        ad.if.a(view, runnable, n);
    }
    
    public static void a(final ViewGroup viewGroup) {
        ad.if.a(viewGroup, true);
    }
    
    public static void b(final View view, final float n) {
        ad.if.b(view, n);
    }
    
    public static boolean b(final View view, final int n) {
        return ad.if.b(view, n);
    }
    
    public static void c(final View view, final float n) {
        ad.if.c(view, n);
    }
    
    public static void c(final View view, final int n) {
        ad.if.c(view, n);
    }
    
    public static void d(final View view, final float n) {
        ad.if.d(view, n);
    }
    
    public static void d(final View view, final int n) {
        ad.if.d(view, n);
    }
    
    public static void e(final View view, final float n) {
        ad.if.e(view, n);
    }
    
    public static void f(final View view, final float n) {
        ad.if.f(view, n);
    }
    
    public static boolean g(final View view) {
        return ad.if.e(view, -1);
    }
    
    public static int h(final View view) {
        return ad.if.h(view);
    }
    
    public static void i(final View view) {
        ad.if.i(view);
    }
    
    public static int j(final View view) {
        return ad.if.j(view);
    }
    
    public static float k(final View view) {
        return ad.if.k(view);
    }
    
    public static int l(final View view) {
        return ad.if.l(view);
    }
    
    public static int m(final View view) {
        return ad.if.m(view);
    }
    
    public static ViewParent n(final View view) {
        return ad.if.n(view);
    }
    
    public static boolean o(final View view) {
        return ad.if.o(view);
    }
    
    public static void onInitializeAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        ad.if.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }
    
    public static int p(final View view) {
        return ad.if.p(view);
    }
    
    public static boolean performAccessibilityAction(final View view, final int n, final Bundle bundle) {
        return ad.if.performAccessibilityAction(view, n, bundle);
    }
    
    public static float q(final View view) {
        return ad.if.q(view);
    }
    
    public static int r(final View view) {
        return ad.if.r(view);
    }
    
    public static int resolveSizeAndState(final int n, final int n2, final int n3) {
        return ad.if.resolveSizeAndState(n, n2, n3);
    }
    
    public static aV s(final View view) {
        return ad.if.s(view);
    }
    
    public static float t(final View view) {
        return ad.if.t(view);
    }
    
    public static int u(final View view) {
        return ad.if.u(view);
    }
    
    public static void v(final View view) {
        ad.if.v(view);
    }
    
    public static boolean w(final View view) {
        return ad.if.w(view);
    }
    
    public static void x(final View view) {
        ad.if.x(view);
    }
}
