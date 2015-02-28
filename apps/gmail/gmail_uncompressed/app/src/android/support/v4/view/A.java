package android.support.v4.view;

import android.view.accessibility.*;
import android.support.v4.view.a.*;
import android.view.*;
import android.os.*;

public class a
{
    private static final d hm;
    private static final Object hn;
    final Object ho;
    
    static {
        if (Build$VERSION.SDK_INT >= 16) {
            hm = new e();
        }
        else if (Build$VERSION.SDK_INT >= 14) {
            hm = new b();
        }
        else {
            hm = new g();
        }
        hn = a.hm.aU();
    }
    
    public a() {
        this.ho = a.hm.a(this);
    }
    
    public static void onPopulateAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        a.hm.c(a.hn, view, accessibilityEvent);
    }
    
    public static void sendAccessibilityEvent(final View view, final int n) {
        a.hm.a(a.hn, view, n);
    }
    
    public static void sendAccessibilityEventUnchecked(final View view, final AccessibilityEvent accessibilityEvent) {
        a.hm.d(a.hn, view, accessibilityEvent);
    }
    
    public void a(final View view, final i i) {
        a.hm.a(a.hn, view, i);
    }
    
    final Object aT() {
        return this.ho;
    }
    
    public boolean dispatchPopulateAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        return a.hm.a(a.hn, view, accessibilityEvent);
    }
    
    public q e(final View view) {
        return a.hm.b(a.hn, view);
    }
    
    public void onInitializeAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        a.hm.b(a.hn, view, accessibilityEvent);
    }
    
    public boolean onRequestSendAccessibilityEvent(final ViewGroup viewGroup, final View view, final AccessibilityEvent accessibilityEvent) {
        return a.hm.a(a.hn, viewGroup, view, accessibilityEvent);
    }
    
    public boolean performAccessibilityAction(final View view, final int n, final Bundle bundle) {
        return a.hm.a(a.hn, view, n, bundle);
    }
}
