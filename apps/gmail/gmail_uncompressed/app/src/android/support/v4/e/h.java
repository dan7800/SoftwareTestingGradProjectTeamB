package android.support.v4.e;

import android.util.*;
import java.lang.reflect.*;

final class h
{
    private static Method gn;
    private static Method go;
    
    static {
        try {
            final Class<?> forName = Class.forName("libcore.icu.ICU");
            if (forName != null) {
                h.gn = forName.getMethod("getScript", String.class);
                h.go = forName.getMethod("addLikelySubtags", String.class);
            }
        }
        catch (Exception ex) {
            Log.w("ICUCompatIcs", (Throwable)ex);
        }
    }
    
    public static String i(final String s) {
        try {
            if (h.gn != null) {
                return (String)h.gn.invoke(null, s);
            }
            goto Label_0041;
        }
        catch (IllegalAccessException ex) {
            Log.w("ICUCompatIcs", (Throwable)ex);
        }
        catch (InvocationTargetException ex2) {
            Log.w("ICUCompatIcs", (Throwable)ex2);
            goto Label_0041;
        }
    }
    
    public static String j(final String s) {
        try {
            if (h.go != null) {
                return (String)h.go.invoke(null, s);
            }
            goto Label_0041;
        }
        catch (IllegalAccessException ex) {
            Log.w("ICUCompatIcs", (Throwable)ex);
        }
        catch (InvocationTargetException ex2) {
            Log.w("ICUCompatIcs", (Throwable)ex2);
            goto Label_0041;
        }
    }
}
