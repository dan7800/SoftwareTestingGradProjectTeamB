package android.support.v4.view;

import android.support.v4.view.a.*;
import android.view.*;
import android.view.accessibility.*;
import java.util.*;

class aj extends ai
{
    static boolean ih;
    
    static {
        aj.ih = false;
    }
    
    @Override
    public final void a(final View view, final i i) {
        view.onInitializeAccessibilityNodeInfo((AccessibilityNodeInfo)i.br());
    }
    
    @Override
    public final void a(final View view, final a a) {
        view.setAccessibilityDelegate((View$AccessibilityDelegate)a.aT());
    }
    
    @Override
    public final boolean b(final View view, final int n) {
        return view.canScrollHorizontally(n);
    }
    
    @Override
    public final boolean e(final View view, final int n) {
        return view.canScrollVertically(-1);
    }
    
    @Override
    public final void onInitializeAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        view.onInitializeAccessibilityEvent(accessibilityEvent);
    }
    
    @Override
    public final aV s(final View view) {
        if (this.ig == null) {
            this.ig = new WeakHashMap<View, aV>();
        }
        aV av = this.ig.get(view);
        if (av == null) {
            av = new aV(view);
            this.ig.put(view, av);
        }
        return av;
    }
}
