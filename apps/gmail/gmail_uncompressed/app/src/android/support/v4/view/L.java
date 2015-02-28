package android.support.v4.view;

import android.view.accessibility.*;
import android.view.*;
import android.os.*;

final class l extends View$AccessibilityDelegate
{
    final /* synthetic */ m ht;
    
    l(final m ht) {
        this.ht = ht;
    }
    
    public final boolean dispatchPopulateAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        return this.ht.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }
    
    public final AccessibilityNodeProvider getAccessibilityNodeProvider(final View view) {
        return (AccessibilityNodeProvider)this.ht.f(view);
    }
    
    public final void onInitializeAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        this.ht.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }
    
    public final void onInitializeAccessibilityNodeInfo(final View view, final AccessibilityNodeInfo accessibilityNodeInfo) {
        this.ht.a(view, accessibilityNodeInfo);
    }
    
    public final void onPopulateAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        this.ht.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }
    
    public final boolean onRequestSendAccessibilityEvent(final ViewGroup viewGroup, final View view, final AccessibilityEvent accessibilityEvent) {
        return this.ht.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }
    
    public final boolean performAccessibilityAction(final View view, final int n, final Bundle bundle) {
        return this.ht.performAccessibilityAction(view, n, bundle);
    }
    
    public final void sendAccessibilityEvent(final View view, final int n) {
        this.ht.sendAccessibilityEvent(view, n);
    }
    
    public final void sendAccessibilityEventUnchecked(final View view, final AccessibilityEvent accessibilityEvent) {
        this.ht.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }
}
