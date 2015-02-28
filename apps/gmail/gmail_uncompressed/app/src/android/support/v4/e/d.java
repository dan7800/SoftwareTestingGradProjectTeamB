package android.support.v4.e;

import android.os.*;

public final class d
{
    private static final e gm;
    
    static {
        if (Build$VERSION.SDK_INT >= 14) {
            gm = new g();
            return;
        }
        gm = new f();
    }
    
    public static String i(final String s) {
        return d.gm.i(s);
    }
    
    public static String j(final String s) {
        return d.gm.j(s);
    }
}
