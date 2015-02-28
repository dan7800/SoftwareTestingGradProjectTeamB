package android.support.v4.view;

import android.view.accessibility.*;
import android.view.*;

class b extends g
{
    @Override
    public Object a(final a a) {
        return new i(new c(this, a));
    }
    
    @Override
    public final void a(final Object o, final View view, final int n) {
        ((View$AccessibilityDelegate)o).sendAccessibilityEvent(view, n);
    }
    
    @Override
    public final void a(final Object o, final View view, final android.support.v4.view.a.i i) {
        ((View$AccessibilityDelegate)o).onInitializeAccessibilityNodeInfo(view, (AccessibilityNodeInfo)i.br());
    }
    
    @Override
    public final boolean a(final Object o, final View view, final AccessibilityEvent accessibilityEvent) {
        return ((View$AccessibilityDelegate)o).dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }
    
    @Override
    public final boolean a(final Object o, final ViewGroup viewGroup, final View view, final AccessibilityEvent accessibilityEvent) {
        return ((View$AccessibilityDelegate)o).onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }
    
    @Override
    public final Object aU() {
        return new View$AccessibilityDelegate();
    }
    
    @Override
    public final void b(final Object o, final View view, final AccessibilityEvent accessibilityEvent) {
        ((View$AccessibilityDelegate)o).onInitializeAccessibilityEvent(view, accessibilityEvent);
    }
    
    @Override
    public final void c(final Object o, final View view, final AccessibilityEvent accessibilityEvent) {
        ((View$AccessibilityDelegate)o).onPopulateAccessibilityEvent(view, accessibilityEvent);
    }
    
    @Override
    public final void d(final Object o, final View view, final AccessibilityEvent accessibilityEvent) {
        ((View$AccessibilityDelegate)o).sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }
}
