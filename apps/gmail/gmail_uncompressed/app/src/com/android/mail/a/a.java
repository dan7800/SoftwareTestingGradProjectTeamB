package com.android.mail.a;

import android.app.*;

public final class a
{
    private static d ake;
    
    public static void a(final d ake) {
        synchronized (a.class) {
            a.ake = ake;
        }
    }
    
    public static d oq() {
        synchronized (a.class) {
            if (a.ake == null) {
                a.ake = new b((byte)0);
            }
            return a.ake;
        }
    }
    
    public static boolean or() {
        return !ActivityManager.isUserAMonkey() && !ActivityManager.isRunningInTestHarness();
    }
}
