package com.android.email;

import android.content.*;

public final class o
{
    private static n LS;
    
    static {
        o.LS = new p();
    }
    
    public static void a(final n ls) {
        o.LS = ls;
    }
    
    public static m r(final Context context) {
        return o.LS.r(context);
    }
}
