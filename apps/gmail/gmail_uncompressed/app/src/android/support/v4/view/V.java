package android.support.v4.view;

import android.os.*;
import android.graphics.*;

public final class v
{
    static final w hW;
    
    static {
        if (Build$VERSION.SDK_INT >= 17) {
            hW = new y();
            return;
        }
        hW = new x();
    }
    
    public static void apply(final int n, final int n2, final int n3, final Rect rect, final int n4, final int n5, final Rect rect2, final int n6) {
        v.hW.apply(n, n2, n3, rect, n4, n5, rect2, n6);
    }
    
    public static void apply(final int n, final int n2, final int n3, final Rect rect, final Rect rect2, final int n4) {
        v.hW.apply(n, n2, n3, rect, rect2, n4);
    }
    
    public static int getAbsoluteGravity(final int n, final int n2) {
        return v.hW.getAbsoluteGravity(n, n2);
    }
}
