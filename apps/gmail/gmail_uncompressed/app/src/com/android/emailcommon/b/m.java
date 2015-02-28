package com.android.emailcommon.b;

import com.android.mail.utils.*;

public final class m
{
    private static boolean abw;
    
    static {
        m.abw = false;
    }
    
    public static void mh() {
        synchronized (m.class) {
            E.c(E.TAG, "migration started", new Object[0]);
            m.abw = true;
        }
    }
    
    public static void mi() {
        synchronized (m.class) {
            E.c(E.TAG, "migration finished", new Object[0]);
            m.abw = false;
        }
    }
    
    public static boolean mj() {
        synchronized (m.class) {
            return m.abw;
        }
    }
}
