package android.support.v13.app;

import android.os.*;
import android.app.*;

public final class a
{
    static final c a;
    
    static {
        if (Build$VERSION.SDK_INT >= 15) {
            a = new e();
            return;
        }
        if (Build$VERSION.SDK_INT >= 14) {
            a = new d();
            return;
        }
        a = new b();
    }
    
    public static void a(final Fragment fragment, final boolean b) {
        android.support.v13.app.a.a.a(fragment, b);
    }
    
    public static void b(final Fragment fragment, final boolean b) {
        android.support.v13.app.a.a.b(fragment, b);
    }
}
