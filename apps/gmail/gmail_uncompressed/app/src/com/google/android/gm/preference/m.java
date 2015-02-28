package com.google.android.gm.preference;

import android.content.*;
import com.google.android.gm.persistence.*;
import com.android.mail.i.*;
import com.google.android.gm.*;
import android.text.*;
import com.google.android.gm.provider.*;
import java.util.*;

public final class m extends d
{
    @Override
    protected final void j(final Context context, final int n) {
        final List<String> b = com.google.android.gm.persistence.b.DD().b(context, false);
        final b dd = com.google.android.gm.persistence.b.DD();
        final g ao = g.ao(context);
        if (n <= 0) {
            if (dd.bu(context)) {
                ao.aZ(dd.bv(context));
            }
            final String bg = dd.bG(context);
            if ("delete".equals(bg)) {
                ao.bF("delete");
            }
            else if ("disabled".equals(bg)) {
                ao.tA();
            }
            for (final String s : b) {
                final i i = new i(context, s);
                if (dd.C(context, s)) {
                    i.aW(dd.D(context, s));
                }
                i.commit();
                final U c = Y.c(context, s, false);
                for (int j = 0; j < c.size(); ++j) {
                    final T dp = c.dP(j);
                    final Set<String> p2 = dd.p(context, s, dp.getCanonicalName());
                    if (p2 != null) {
                        final j k = new j(context, s, ay.i(context, s, dp.getCanonicalName()), false);
                        final String a = com.google.android.gm.persistence.b.a(p2, com.google.android.gm.persistence.b.baS);
                        if (a != null) {
                            k.aW(Boolean.parseBoolean(a));
                        }
                        final String a2 = com.google.android.gm.persistence.b.a(p2, com.google.android.gm.persistence.b.baT);
                        if (a2 != null) {
                            k.bE(a2);
                        }
                        k.aX(com.google.android.gm.persistence.b.a(context, p2));
                        final String a3 = com.google.android.gm.persistence.b.a(p2, com.google.android.gm.persistence.b.baV);
                        if (a3 != null) {
                            k.aY(!Boolean.parseBoolean(a3));
                        }
                        k.commit();
                    }
                }
            }
        }
        if (n < 2) {
            ao.f(dd.bx(context));
            ao.g(dd.by(context));
        }
        if (n < 3) {
            ao.bc(dd.bt(context));
        }
        if (n < 4) {
            ao.be(dd.bK(context));
            ao.bd(dd.bL(context));
            ao.bf(dd.bM(context));
            int n2;
            if (dd.bw(context)) {
                if (dd.bI(context)) {
                    n2 = 2;
                }
                else if (dd.bH(context)) {
                    n2 = 1;
                }
                else {
                    n2 = 3;
                }
            }
            else {
                n2 = 0;
            }
            ao.cu(n2);
            ao.bg(dd.bD(context));
            final String bc = dd.bC(context);
            final int[] array = { 0, 1, 2 };
            final String[] array2 = { "always", "portrait", "never" };
            while (true) {
                for (int l = 0; l < array2.length; ++l) {
                    if (TextUtils.equals((CharSequence)bc, (CharSequence)array2[l])) {
                        int n3;
                        if (l != -1) {
                            n3 = array[l];
                        }
                        else {
                            n3 = 0;
                        }
                        ao.cv(n3);
                        return;
                    }
                }
                int l = -1;
                continue;
            }
        }
    }
}
