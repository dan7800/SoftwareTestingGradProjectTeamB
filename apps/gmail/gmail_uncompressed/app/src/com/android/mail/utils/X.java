package com.android.mail.utils;

import android.text.*;
import com.android.mail.a.*;
import com.google.android.mail.common.html.parser.*;

public final class x
{
    static final String mW;
    
    static {
        mW = D.AU();
    }
    
    public static Spanned a(final String s, final t t) {
        c.os().bb("compose_html_to_span");
        final HtmlTree ch = ag.cH(s);
        ch.a(t);
        final Spanned wn = ch.Wn();
        c.os().a("compose_html_to_span", true, "compose", "html_to_span");
        E.d(x.mW, "htmlToSpan completed, input: %d, result: %d", s.length(), wn.length());
        return wn;
    }
}
