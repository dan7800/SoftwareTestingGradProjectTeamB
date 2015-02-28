package com.android.mail.utils;

import com.google.common.collect.*;
import java.util.*;
import android.os.*;
import java.io.*;
import org.owasp.html.*;

public final class t
{
    private static final i aPq;
    private static final p aPr;
    private static final p aPs;
    private static final b aPt;
    private static final b aPu;
    private static final b aPv;
    private static final U aPw;
    private static final String mW;
    
    static {
        mW = D.AU();
        aPq = i.i(ImmutableSet.t("float", "display"));
        aPr = new u();
        aPs = new v();
        aPt = new org.owasp.html.v(ImmutableList.q("http", "https"));
        aPu = new org.owasp.html.v(ImmutableList.a("mailto", "http", "https"));
        aPv = new org.owasp.html.v(ImmutableList.a("cid", "http", "https"));
        aPw = new G().J("dir").a(true, ImmutableSet.j(new String[] { "ltr", "rtl" })).acg().K("cid", "http", "https", "mailto").a(i.a(i.cGL, t.aPq)).I("applet", "frameset", "object", "script", "style", "title").H("a").J("coords", "name", "shape").L("a").J("href").a(t.aPu).L("a").H("abbr").J("title").L("abbr").H("acronym").J("title").L("acronym").H("address").H("area").J("alt", "coords", "nohref", "name", "shape").L("area").J("href").a(t.aPt).L("area").H("article").H("aside").H("b").H("base").J("href").a(t.aPt).L("base").H("bdi").J("dir").L("bdi").H("bdo").J("dir").L("bdo").H("big").H("blockquote").J("cite").L("blockquote").a(t.aPr, "body").H("br").J("clear").L("br").H("button").J("autofocus", "disabled", "form", "formaction", "formenctype", "formmethod", "formnovalidate", "formtarget", "name", "type", "value").L("button").H("canvas").J("width", "height").L("canvas").H("caption").J("align").L("caption").H("center").H("cite").H("code").H("col").J("align", "bgcolor", "char", "charoff", "span", "valign", "width").L("col").H("colgroup").J("align", "char", "charoff", "span", "valign", "width").L("colgroup").H("datalist").H("dd").H("del").J("cite", "datetime").L("del").H("details").H("dfn").H("dir").J("compact").L("dir").a(t.aPs, "div").J("align", "background", "class", "id").L("div").H("dl").H("dt").H("em").H("fieldset").J("disabled", "form", "name").L("fieldset").H("figcaption").H("figure").H("font").J("color", "face", "size").L("font").H("footer").H("form").J("accept", "action", "accept-charset", "autocomplete", "enctype", "method", "name", "novalidate", "target").L("form").H("header").H("h1").J("align").L("h1").H("h2").J("align").L("h2").H("h3").J("align").L("h3").H("h4").J("align").L("h4").H("h5").J("align").L("h5").H("h6").J("align").L("h6").H("hr").J("align", "noshade", "size", "width").L("hr").H("i").H("img").J("src").a(t.aPv).L("img").J("longdesc").a(t.aPt).L("img").J("align", "alt", "border", "crossorigin", "height", "hspace", "ismap", "usemap", "vspace", "width").L("img").H("input").J("src").a(t.aPt).L("input").J("formaction").a(t.aPt).L("input").J("accept", "align", "alt", "autocomplete", "autofocus", "checked", "disabled", "form", "formenctype", "formmethod", "formnovalidate", "formtarget", "height", "list", "max", "maxlength", "min", "multiple", "name", "pattern", "placeholder", "readonly", "required", "size", "step", "type", "value", "width").L("input").H("ins").J("cite").a(t.aPt).L("ins").J("datetime").L("ins").H("kbd").H("keygen").J("autofocus", "challenge", "disabled", "form", "keytype", "name").L("keygen").H("label").J("form").L("label").H("legend").J("align").L("legend").H("li").J("type", "value").L("li").H("main").H("map").J("name").L("map").H("mark").H("menu").J("label", "type").L("menu").H("menuitem").J("icon").a(t.aPt).L("menuitem").J("checked", "command", "default", "disabled", "label", "type", "radiogroup").L("menuitem").H("meter").J("form", "high", "low", "max", "min", "optimum", "value").L("meter").H("nav").H("ol").J("compact", "reversed", "start", "type").L("ol").H("optgroup").J("disabled", "label").L("optgroup").H("option").J("disabled", "label", "selected", "value").L("option").H("output").J("form", "name").L("output").H("p").J("align").L("p").H("pre").J("width").L("pre").H("progress").J("max", "value").L("progress").H("q").J("cite").a(t.aPt).L("q").H("rp").H("rt").H("ruby").H("s").H("samp").H("section").H("select").J("autofocus", "disabled", "form", "multiple", "name", "required", "size").L("select").H("small").H("span").H("strike").H("strong").H("sub").H("summary").H("sup").H("table").J("align", "bgcolor", "border", "cellpadding", "cellspacing", "frame", "rules", "sortable", "summary", "width").L("table").H("tbody").J("align", "char", "charoff", "valign").L("tbody").H("td").J("abbr", "align", "axis", "bgcolor", "char", "charoff", "colspan", "height", "nowrap", "rowspan", "scope", "valign", "width").L("td").H("textarea").J("autofocus", "cols", "disabled", "form", "maxlength", "name", "placeholder", "readonly", "required", "rows", "wrap").L("textarea").H("tfoot").J("align", "char", "charoff", "valign").L("tfoot").H("th").J("abbr", "align", "axis", "bgcolor", "char", "charoff", "colspan", "height", "nowrap", "rowspan", "scope", "sorted", "valign", "width").L("th").H("thead").J("align", "char", "charoff", "valign").L("thead").H("time").J("datetime").L("time").H("tr").J("align", "bgcolor", "char", "charoff", "valign").L("tr").H("tt").H("u").H("ul").J("compact", "type").L("ul").H("var").H("wbr").ace();
    }
    
    public static String cv(final String s) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IllegalStateException("sanitizing email should not occur on the main thread");
        }
        if (s == null) {
            return null;
        }
        final StringBuilder sb = new StringBuilder(s.length());
        final M apply = t.aPw.apply((N)O.a(sb, w.cIg, new com.android.mail.utils.w()));
        com.android.mail.f.b.tg();
        try {
            K.a(s, apply);
            com.android.mail.f.b.th();
            return sb.toString();
        }
        finally {
            com.android.mail.f.b.th();
        }
    }
}
