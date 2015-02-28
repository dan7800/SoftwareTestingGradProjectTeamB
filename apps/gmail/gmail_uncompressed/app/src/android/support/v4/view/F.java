package android.support.v4.view;

import android.view.accessibility.*;
import android.support.v4.view.a.*;
import android.view.*;
import android.os.*;

final class f implements m
{
    final /* synthetic */ a hp;
    final /* synthetic */ e hr;
    
    f(final e hr, final a hp) {
        this.hr = hr;
        this.hp = hp;
    }
    
    @Override
    public final void a(final View view, final Object o) {
        this.hp.a(view, new i(o));
    }
    
    @Override
    public final boolean dispatchPopulateAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        return this.hp.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }
    
    @Override
    public final Object f(final View view) {
        final q e = this.hp.e(view);
        if (e != null) {
            return e.bu();
        }
        return null;
    }
    
    @Override
    public final void onInitializeAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        this.hp.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }
    
    @Override
    public final void onPopulateAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        final a hp = this.hp;
        a.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }
    
    @Override
    public final boolean onRequestSendAccessibilityEvent(final ViewGroup viewGroup, final View view, final AccessibilityEvent accessibilityEvent) {
        return this.hp.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }
    
    @Override
    public final boolean performAccessibilityAction(final View view, final int n, final Bundle bundle) {
        return this.hp.performAccessibilityAction(view, n, bundle);
    }
    
    @Override
    public final void sendAccessibilityEvent(final View view, final int n) {
        final a hp = this.hp;
        a.sendAccessibilityEvent(view, n);
    }
    
    @Override
    public final void sendAccessibilityEventUnchecked(final View view, final AccessibilityEvent accessibilityEvent) {
        final a hp = this.hp;
        a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }
}
