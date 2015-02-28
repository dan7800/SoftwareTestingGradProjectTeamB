package android.support.v4.view;

import android.view.accessibility.*;
import android.view.*;

final class i extends View$AccessibilityDelegate
{
    final /* synthetic */ j hs;
    
    i(final j hs) {
        this.hs = hs;
    }
    
    public final boolean dispatchPopulateAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        return this.hs.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }
    
    public final void onInitializeAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        this.hs.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }
    
    public final void onInitializeAccessibilityNodeInfo(final View view, final AccessibilityNodeInfo accessibilityNodeInfo) {
        this.hs.a(view, accessibilityNodeInfo);
    }
    
    public final void onPopulateAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        this.hs.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }
    
    public final boolean onRequestSendAccessibilityEvent(final ViewGroup viewGroup, final View view, final AccessibilityEvent accessibilityEvent) {
        return this.hs.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }
    
    public final void sendAccessibilityEvent(final View view, final int n) {
        this.hs.sendAccessibilityEvent(view, n);
    }
    
    public final void sendAccessibilityEventUnchecked(final View view, final AccessibilityEvent accessibilityEvent) {
        this.hs.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }
}
