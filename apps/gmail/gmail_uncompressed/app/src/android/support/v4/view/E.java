package android.support.v4.view;

import android.os.*;
import android.view.*;
import android.support.v4.view.a.*;
import android.view.accessibility.*;

final class e extends b
{
    @Override
    public final Object a(final a a) {
        return new l(new f(this, a));
    }
    
    @Override
    public final boolean a(final Object o, final View view, final int n, final Bundle bundle) {
        return ((View$AccessibilityDelegate)o).performAccessibilityAction(view, n, bundle);
    }
    
    @Override
    public final q b(final Object o, final View view) {
        final AccessibilityNodeProvider accessibilityNodeProvider = ((View$AccessibilityDelegate)o).getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return new q(accessibilityNodeProvider);
        }
        return null;
    }
}
