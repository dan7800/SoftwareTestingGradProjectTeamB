package com.google.android.gms.internal;

import android.util.*;

public final class t
{
    public static boolean eF(final int n) {
        return (n >= 5 || Log.isLoggable("Ads", n)) && n != 2;
    }
    
    public static void gk(final String s) {
        if (eF(5)) {
            Log.w("Ads", s);
        }
    }
}
