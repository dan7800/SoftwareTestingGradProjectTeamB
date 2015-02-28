package com.android.emailcommon.b;

import com.android.emailcommon.mail.*;
import com.android.emailcommon.a.*;
import android.text.*;
import java.util.*;

public final class c
{
    private static StringBuffer a(final StringBuffer sb, final String s) {
        if (s == null) {
            return sb;
        }
        if (sb == null) {
            return new StringBuffer(s);
        }
        if (sb.length() > 0) {
            sb.append('\n');
        }
        sb.append(s);
        return sb;
    }
    
    public static d b(final ArrayList<j> list) {
        final d d = new d();
        final Iterator<j> iterator = list.iterator();
        StringBuffer a = null;
        StringBuffer a2 = null;
        while (iterator.hasNext()) {
            final j j = iterator.next();
            final String b = i.b(j);
            if ("text/html".equalsIgnoreCase(j.getMimeType())) {
                a2 = a(a2, b);
            }
            else {
                a = a(a, b);
            }
        }
        if (!TextUtils.isEmpty((CharSequence)a)) {
            final String string = a.toString();
            d.abf = string;
            d.abh = r.aD(string);
        }
        if (!TextUtils.isEmpty((CharSequence)a2)) {
            final String string2 = a2.toString();
            d.abg = string2;
            if (d.abh == null) {
                d.abh = r.aC(string2);
            }
        }
        return d;
    }
}
