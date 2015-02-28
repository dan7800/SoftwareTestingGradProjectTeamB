package android.support.v4.view;

import android.os.*;
import android.view.*;

public final class ar
{
    static final aw ik;
    
    static {
        if (Build$VERSION.SDK_INT >= 14) {
            ik = new av();
            return;
        }
        if (Build$VERSION.SDK_INT >= 11) {
            ik = new au();
            return;
        }
        if (Build$VERSION.SDK_INT >= 8) {
            ik = new at();
            return;
        }
        ik = new as();
    }
    
    public static int a(final ViewConfiguration viewConfiguration) {
        return ar.ik.a(viewConfiguration);
    }
    
    public static boolean b(final ViewConfiguration viewConfiguration) {
        return ar.ik.b(viewConfiguration);
    }
}
