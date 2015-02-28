package org.apache.james.mime4j;

import com.android.mail.utils.*;
import android.util.*;

public final class f
{
    private static final String mW;
    
    static {
        mW = E.TAG;
    }
    
    private static String a(final Object o, final Throwable t) {
        String string;
        if (o == null) {
            string = "(null)";
        }
        else {
            string = o.toString();
        }
        if (t == null) {
            return string;
        }
        return string + " " + t.getMessage();
    }
    
    public static void error(final Object o) {
        Log.e(f.mW, a(o, null));
    }
    
    public static boolean isDebugEnabled() {
        return false;
    }
    
    public static boolean isWarnEnabled() {
        return true;
    }
    
    public static void warn(final Object o) {
        Log.w(f.mW, a(o, null));
    }
    
    public static void warn(final Object o, final Throwable t) {
        Log.w(f.mW, a(o, t));
    }
}
