package android.support.v4.view.a;

import android.os.*;
import android.view.accessibility.*;

public final class e
{
    private static final h jQ;
    
    static {
        if (Build$VERSION.SDK_INT >= 14) {
            jQ = new f();
            return;
        }
        jQ = new g();
    }
    
    public static boolean a(final AccessibilityManager accessibilityManager) {
        return e.jQ.a(accessibilityManager);
    }
}
