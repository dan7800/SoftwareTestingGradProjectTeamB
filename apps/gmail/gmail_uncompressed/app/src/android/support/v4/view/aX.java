package android.support.v4.view;

import android.os.*;
import android.view.*;

public final class ax
{
    static final aB il;
    
    static {
        final int sdk_INT = Build$VERSION.SDK_INT;
        if (sdk_INT >= 21) {
            il = new ay();
            return;
        }
        if (sdk_INT >= 18) {
            il = new aC();
            return;
        }
        if (sdk_INT >= 14) {
            il = new aA();
            return;
        }
        if (sdk_INT >= 11) {
            il = new az();
            return;
        }
        il = new aD();
    }
    
    public static void b(final ViewGroup viewGroup) {
        ax.il.b(viewGroup, false);
    }
    
    public static int c(final ViewGroup viewGroup) {
        return ax.il.c(viewGroup);
    }
}
