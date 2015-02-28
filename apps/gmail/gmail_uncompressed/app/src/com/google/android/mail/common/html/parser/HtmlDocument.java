package com.google.android.mail.common.html.parser;

import com.google.android.mail.common.base.*;
import java.util.*;
import java.io.*;

public final class HtmlDocument
{
    private final List<i> cub;
    
    public HtmlDocument(final List<i> cub) {
        this.cub = cub;
    }
    
    public static HtmlDocument$Tag a(final HTML$Element html$Element, final List<j> list, final String s, final String s2) {
        return new HtmlDocument$Tag(html$Element, list, false, s, s2, (byte)0);
    }
    
    public static g a(final HTML$Element html$Element, final String s) {
        return new g(html$Element, s, (byte)0);
    }
    
    public static j a(final a a, final String s, final String s2) {
        M.assertTrue(a != null);
        return new j(a, s, s2, (byte)0);
    }
    
    public static k au(final String s, final String s2) {
        return new l(s, s2, (byte)0);
    }
    
    public static k av(final String s, final String s2) {
        return new h(s, s2, (byte)0);
    }
    
    public static HtmlDocument$Tag b(final HTML$Element html$Element, final List<j> list, final String s, final String s2) {
        return new HtmlDocument$Tag(html$Element, list, true, s, s2, (byte)0);
    }
    
    public final void a(final m m) {
        m.start();
        final Iterator<i> iterator = this.cub.iterator();
        while (iterator.hasNext()) {
            iterator.next().a(m);
        }
        m.finish();
    }
    
    @Override
    public final String toString() {
        final StringWriter stringWriter = new StringWriter();
        this.a(new f(new PrintWriter(stringWriter)));
        return stringWriter.toString();
    }
}
