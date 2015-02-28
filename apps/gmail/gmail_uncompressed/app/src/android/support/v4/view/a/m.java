package android.support.v4.view.a;

import android.view.accessibility.*;
import android.view.*;

class m extends k
{
    @Override
    public final boolean A(final Object o) {
        return ((AccessibilityNodeInfo)o).isAccessibilityFocused();
    }
    
    @Override
    public final void b(final Object o, final View view, final int n) {
        ((AccessibilityNodeInfo)o).setSource(view, n);
    }
    
    @Override
    public final void c(final Object o, final View view, final int n) {
        ((AccessibilityNodeInfo)o).addChild(view, n);
    }
    
    @Override
    public final void h(final Object o, final boolean visibleToUser) {
        ((AccessibilityNodeInfo)o).setVisibleToUser(visibleToUser);
    }
    
    @Override
    public final void i(final Object o, final boolean accessibilityFocused) {
        ((AccessibilityNodeInfo)o).setAccessibilityFocused(accessibilityFocused);
    }
    
    @Override
    public final boolean z(final Object o) {
        return ((AccessibilityNodeInfo)o).isVisibleToUser();
    }
}
