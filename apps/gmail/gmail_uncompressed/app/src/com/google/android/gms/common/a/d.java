package com.google.android.gms.common.a;

import java.util.regex.*;
import android.content.*;

public final class d
{
    private static Pattern bGf;
    
    static {
        d.bGf = null;
    }
    
    public static boolean cj(final Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.type.watch");
    }
    
    public static int eA(final int n) {
        return n / 1000;
    }
    
    public static boolean eB(final int n) {
        return n % 1000 / 100 == 3;
    }
}
