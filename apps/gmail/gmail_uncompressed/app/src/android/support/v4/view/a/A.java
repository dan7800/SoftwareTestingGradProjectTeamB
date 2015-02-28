package android.support.v4.view.a;

import android.os.*;
import android.view.accessibility.*;

public final class a
{
    private static final d jP;
    
    static {
        if (Build$VERSION.SDK_INT >= 14) {
            jP = new b();
            return;
        }
        jP = new c();
    }
    
    public static D a(final AccessibilityEvent accessibilityEvent) {
        return new D(accessibilityEvent);
    }
}
