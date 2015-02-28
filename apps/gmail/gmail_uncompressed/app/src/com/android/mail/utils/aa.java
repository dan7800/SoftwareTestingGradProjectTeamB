package com.android.mail.utils;

import android.content.*;

public final class aa
{
    private static boolean aQy;
    private static ab aQz;
    
    static {
        aa.aQy = false;
        aa.aQz = null;
    }
    
    public static void a(final ab aQz) {
        aa.aQz = aQz;
        if (aa.aQy) {
            aa.aQz.ks();
        }
    }
    
    public static void aE(final Context context) {
        bG(context.registerReceiver((BroadcastReceiver)null, new IntentFilter("android.intent.action.DEVICE_STORAGE_LOW")) != null);
    }
    
    public static void bG(final boolean aQy) {
        if (aa.aQy != aQy) {
            aa.aQy = aQy;
            if (aa.aQz != null) {
                if (aQy) {
                    aa.aQz.ks();
                    return;
                }
                aa.aQz.kt();
            }
        }
    }
}
