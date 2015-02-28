package com.google.android.gms.d;

import android.content.*;
import android.os.*;
import com.google.android.gms.internal.*;
import com.google.android.gms.common.api.*;

public final class a
{
    private static boolean cgd;
    private static final q cge;
    
    static {
        a.cgd = true;
        cge = new b();
    }
    
    public static void a(final Context context, final Integer n, final Long n2, final Bundle bundle) {
        if (!a.cgd) {
            return;
        }
        final n ky = new o(context).c(a.cge).a(ay.bBK).Ky();
        ky.connect();
        ay.bUn.a(ky, n, n2, null, null, bundle).a(new c(ky));
    }
}
