package android.support.v4.view;

import android.view.accessibility.*;
import android.view.*;
import android.os.*;

public interface m
{
    void a(View p0, Object p1);
    
    boolean dispatchPopulateAccessibilityEvent(View p0, AccessibilityEvent p1);
    
    Object f(View p0);
    
    void onInitializeAccessibilityEvent(View p0, AccessibilityEvent p1);
    
    void onPopulateAccessibilityEvent(View p0, AccessibilityEvent p1);
    
    boolean onRequestSendAccessibilityEvent(ViewGroup p0, View p1, AccessibilityEvent p2);
    
    boolean performAccessibilityAction(View p0, int p1, Bundle p2);
    
    void sendAccessibilityEvent(View p0, int p1);
    
    void sendAccessibilityEventUnchecked(View p0, AccessibilityEvent p1);
}
