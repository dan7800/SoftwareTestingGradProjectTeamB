package org.owasp.html;

import com.google.common.collect.*;

public enum HtmlTextEscapingMode
{
    cJA, 
    cJB, 
    cJC, 
    cJD, 
    cJE;
    
    private static final ImmutableMap<String, HtmlTextEscapingMode> cJF;
    
    cJz;
    
    static {
        cJF = ImmutableMap.Zv().p("iframe", HtmlTextEscapingMode.cJA).p("listing", HtmlTextEscapingMode.cJB).p("xmp", HtmlTextEscapingMode.cJA).p("comment", HtmlTextEscapingMode.cJB).p("plaintext", HtmlTextEscapingMode.cJD).p("script", HtmlTextEscapingMode.cJA).p("style", HtmlTextEscapingMode.cJA).p("textarea", HtmlTextEscapingMode.cJC).p("title", HtmlTextEscapingMode.cJC).p("area", HtmlTextEscapingMode.cJE).p("base", HtmlTextEscapingMode.cJE).p("br", HtmlTextEscapingMode.cJE).p("col", HtmlTextEscapingMode.cJE).p("command", HtmlTextEscapingMode.cJE).p("embed", HtmlTextEscapingMode.cJE).p("hr", HtmlTextEscapingMode.cJE).p("img", HtmlTextEscapingMode.cJE).p("input", HtmlTextEscapingMode.cJE).p("keygen", HtmlTextEscapingMode.cJE).p("link", HtmlTextEscapingMode.cJE).p("meta", HtmlTextEscapingMode.cJE).p("param", HtmlTextEscapingMode.cJE).p("source", HtmlTextEscapingMode.cJE).p("track", HtmlTextEscapingMode.cJE).p("wbr", HtmlTextEscapingMode.cJE).p("basefont", HtmlTextEscapingMode.cJE).Zo();
    }
    
    public static boolean iA(final String s) {
        return ix(s) == HtmlTextEscapingMode.cJE;
    }
    
    public static HtmlTextEscapingMode ix(final String s) {
        final HtmlTextEscapingMode htmlTextEscapingMode = HtmlTextEscapingMode.cJF.get(s);
        if (htmlTextEscapingMode != null) {
            return htmlTextEscapingMode;
        }
        return HtmlTextEscapingMode.cJz;
    }
    
    public static boolean iy(final String s) {
        return "style".equals(s) || "script".equals(s) || "noembed".equals(s) || "noscript".equals(s) || "noframes".equals(s);
    }
    
    public static boolean iz(final String s) {
        final HtmlTextEscapingMode ix = ix(s);
        return ix != HtmlTextEscapingMode.cJz && ix != HtmlTextEscapingMode.cJE;
    }
}
