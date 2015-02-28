package com.google.android.gms.common.a;

import android.os.*;

public final class g
{
    public static boolean LO() {
        return eC(11);
    }
    
    public static boolean LP() {
        return eC(13);
    }
    
    public static boolean LQ() {
        return eC(14);
    }
    
    public static boolean LR() {
        return eC(16);
    }
    
    private static boolean eC(final int n) {
        return Build$VERSION.SDK_INT >= n;
    }
}
