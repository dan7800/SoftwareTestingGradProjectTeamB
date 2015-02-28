package android.support.v4.a.a;

import android.os.*;
import android.graphics.drawable.*;
import android.content.res.*;
import android.graphics.*;

public final class a
{
    static final c fr;
    
    static {
        final int sdk_INT = Build$VERSION.SDK_INT;
        if (sdk_INT >= 21) {
            fr = new f();
            return;
        }
        if (sdk_INT >= 19) {
            fr = new e();
            return;
        }
        if (sdk_INT >= 11) {
            fr = new d();
            return;
        }
        fr = new b();
    }
    
    public static void a(final Drawable drawable) {
        a.fr.a(drawable);
    }
    
    public static void a(final Drawable drawable, final float n, final float n2) {
        a.fr.a(drawable, n, n2);
    }
    
    public static void a(final Drawable drawable, final int n) {
        a.fr.a(drawable, n);
    }
    
    public static void a(final Drawable drawable, final int n, final int n2, final int n3, final int n4) {
        a.fr.a(drawable, n, n2, n3, n4);
    }
    
    public static void a(final Drawable drawable, final ColorStateList list) {
        a.fr.a(drawable, list);
    }
    
    public static void a(final Drawable drawable, final PorterDuff$Mode porterDuff$Mode) {
        a.fr.a(drawable, porterDuff$Mode);
    }
    
    public static void a(final Drawable drawable, final boolean b) {
        a.fr.a(drawable, b);
    }
    
    public static boolean b(final Drawable drawable) {
        return a.fr.b(drawable);
    }
}
