package android.support.v4.view.a;

import android.view.accessibility.*;
import java.util.*;
import android.os.*;

final class y extends AccessibilityNodeProvider
{
    final /* synthetic */ z jY;
    
    y(final z jy) {
        this.jY = jy;
    }
    
    public final AccessibilityNodeInfo createAccessibilityNodeInfo(final int n) {
        return (AccessibilityNodeInfo)this.jY.G(n);
    }
    
    public final List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(final String s, final int n) {
        return (List<AccessibilityNodeInfo>)this.jY.bv();
    }
    
    public final boolean performAction(final int n, final int n2, final Bundle bundle) {
        return this.jY.performAction(n, n2, bundle);
    }
}
