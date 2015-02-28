package com.android.mail.utils;

import java.util.regex.*;
import android.text.*;
import android.util.*;
import android.net.*;
import java.util.*;

public class E
{
    public static final String TAG;
    private static Boolean aPG;
    private static final Pattern abK;
    
    static {
        TAG = D.AU();
        abK = Pattern.compile("GMT([-+]\\d{4})$");
        E.aPG = null;
    }
    
    public static String A(final Uri uri) {
        return c(E.TAG, uri);
    }
    
    public static String B(final String s, final String s2) {
        if (TextUtils.isEmpty((CharSequence)s2)) {
            return "";
        }
        return String.valueOf(s2.hashCode());
    }
    
    public static int a(final String s, final Throwable t, final String s2, final Object... array) {
        if (isLoggable(s, 2)) {
            return Log.v(s, String.format(s2, array), t);
        }
        return 0;
    }
    
    public static int b(final String s, final String s2, final Object... array) {
        if (isLoggable(s, 2)) {
            return Log.v(s, String.format(s2, array));
        }
        return 0;
    }
    
    public static int b(final String s, final Throwable t, final String s2, final Object... array) {
        if (isLoggable(s, 3)) {
            return Log.d(s, String.format(s2, array), t);
        }
        return 0;
    }
    
    public static int c(final String s, final String s2, final Object... array) {
        if (isLoggable(s, 3)) {
            return Log.d(s, String.format(s2, array));
        }
        return 0;
    }
    
    public static int c(final String s, final Throwable t, final String s2, final Object... array) {
        if (isLoggable(s, 4)) {
            return Log.i(s, String.format(s2, array), t);
        }
        return 0;
    }
    
    public static String c(final String s, final Uri uri) {
        final List pathSegments = uri.getPathSegments();
        final Uri$Builder appendPath = new Uri$Builder().scheme(uri.getScheme()).authority(uri.getAuthority()).query(uri.getQuery()).fragment(uri.getFragment()).appendPath(cx(pathSegments.get(0)));
        for (int i = 1; i < pathSegments.size(); ++i) {
            appendPath.appendPath((String)pathSegments.get(i));
        }
        return appendPath.toString();
    }
    
    public static String cx(final String s) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            return "";
        }
        return "account:" + B(E.TAG, s);
    }
    
    public static String cy(final String s) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            return s;
        }
        return E.abK.matcher(s).replaceFirst("$1");
    }
    
    public static int d(final String s, final String s2, final Object... array) {
        if (isLoggable(s, 4)) {
            return Log.i(s, String.format(s2, array));
        }
        return 0;
    }
    
    public static int d(final String s, final Throwable t, final String s2, final Object... array) {
        if (isLoggable(s, 5)) {
            return Log.w(s, String.format(s2, array), t);
        }
        return 0;
    }
    
    public static int e(final String s, final String s2, final Object... array) {
        if (isLoggable(s, 5)) {
            return Log.w(s, String.format(s2, array));
        }
        return 0;
    }
    
    public static int e(final String s, final Throwable t, final String s2, final Object... array) {
        if (isLoggable(s, 6)) {
            return Log.e(s, String.format(s2, array), t);
        }
        return 0;
    }
    
    public static int f(final String s, final String s2, final Object... array) {
        if (isLoggable(s, 6)) {
            return Log.e(s, String.format(s2, array));
        }
        return 0;
    }
    
    public static int f(final String s, final Throwable t, final String s2, final Object... array) {
        return Log.wtf(s, String.format(s2, array), t);
    }
    
    public static int g(final String s, final String s2, final Object... array) {
        return Log.wtf(s, String.format(s2, array), (Throwable)new Error());
    }
    
    public static boolean isLoggable(final String s, final int n) {
        return 3 <= n && (Log.isLoggable(s, n) || Log.isLoggable(E.TAG, n));
    }
}
