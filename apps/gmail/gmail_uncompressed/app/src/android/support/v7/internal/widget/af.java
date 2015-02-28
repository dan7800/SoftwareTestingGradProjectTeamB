package android.support.v7.internal.widget;

import android.os.*;
import android.view.*;
import android.graphics.*;
import android.util.*;
import android.support.v4.view.*;
import java.lang.reflect.*;

public final class af
{
    private static Method BF;
    
    static {
        if (Build$VERSION.SDK_INT < 18) {
            return;
        }
        try {
            if (!(af.BF = View.class.getDeclaredMethod("computeFitSystemWindows", Rect.class, Rect.class)).isAccessible()) {
                af.BF.setAccessible(true);
            }
        }
        catch (NoSuchMethodException ex) {
            Log.d("ViewUtils", "Could not find method computeFitSystemWindows. Oh well.");
        }
    }
    
    public static void a(final View view, final Rect rect, final Rect rect2) {
        if (af.BF == null) {
            return;
        }
        try {
            af.BF.invoke(view, rect, rect2);
        }
        catch (Exception ex) {
            Log.d("ViewUtils", "Could not invoke computeFitSystemWindows", (Throwable)ex);
        }
    }
    
    public static boolean af(final View view) {
        return ad.m(view) == 1;
    }
    
    public static void ag(final View view) {
        if (Build$VERSION.SDK_INT < 16) {
            return;
        }
        try {
            final Method method = view.getClass().getMethod("makeOptionalFitsSystemWindows", (Class<?>[])new Class[0]);
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            method.invoke(view, new Object[0]);
        }
        catch (NoSuchMethodException ex3) {
            Log.d("ViewUtils", "Could not find method makeOptionalFitsSystemWindows. Oh well...");
        }
        catch (InvocationTargetException ex) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", (Throwable)ex);
        }
        catch (IllegalAccessException ex2) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", (Throwable)ex2);
        }
    }
    
    public static int combineMeasuredStates(final int n, final int n2) {
        return n | n2;
    }
}
