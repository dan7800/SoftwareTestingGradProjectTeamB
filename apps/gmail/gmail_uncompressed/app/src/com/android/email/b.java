package com.android.email;

import com.android.mail.utils.*;
import com.android.emailcommon.b.*;
import android.content.*;
import com.android.email.service.*;

public final class b
{
    public static boolean DEBUG;
    public static boolean Lv;
    public static boolean Lw;
    public static final String mW;
    
    static {
        mW = D.AU();
    }
    
    public static void Q(final boolean b) {
        s.Q(b);
    }
    
    public static void g(final Context context) {
        final r s = r.s(context);
        b.DEBUG = s.gT();
        b.Lv = s.gU();
        b.Lw = s.gV();
        l(context);
        com.android.emailcommon.b.s.Q(s.gW());
    }
    
    public static void l(final Context context) {
        final r s = r.s(context);
        boolean b;
        if (s.gT()) {
            b = true;
        }
        else {
            b = false;
        }
        int n;
        if (s.gU()) {
            n = 2;
        }
        else {
            n = 0;
        }
        int n2;
        if (s.gV()) {
            n2 = 4;
        }
        else {
            n2 = 0;
        }
        final boolean gw = s.gW();
        int n3 = 0;
        if (gw) {
            n3 = 8;
        }
        com.android.email.service.n.f(context, n3 | (n2 | ((b ? 1 : 0) | n)));
    }
}
