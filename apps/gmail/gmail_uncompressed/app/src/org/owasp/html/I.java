package org.owasp.html;

import com.google.common.collect.*;
import java.util.*;

public final class i
{
    static final j cGH;
    static final ImmutableMap<String, j> cGJ;
    static final ImmutableSet<String> cGK;
    public static final i cGL;
    private final ImmutableMap<String, j> cGI;
    
    static {
        cGH = new j(0, ImmutableSet.Zw(), ImmutableMap.Zu(), (byte)0);
        final ImmutableMap<Object, Object> zu = ImmutableMap.Zu();
        final y<String, j> zv = ImmutableMap.Zv();
        final ImmutableSet<String> ag = ImmutableSet.aG("/");
        final ImmutableSet<String> ag2 = ImmutableSet.aG("inherit");
        final ImmutableSet<String> a = ImmutableSet.a("aliceblue", "antiquewhite", "aqua", "aquamarine", "azure", "beige", "bisque", "black", "blanchedalmond", "blue", "blueviolet", "brown", "burlywood", "cadetblue", "chartreuse", "chocolate", "coral", "cornflowerblue", "cornsilk", "crimson", "cyan", "darkblue", "darkcyan", "darkgoldenrod", "darkgray", "darkgreen", "darkkhaki", "darkmagenta", "darkolivegreen", "darkorange", "darkorchid", "darkred", "darksalmon", "darkseagreen", "darkslateblue", "darkslategray", "darkturquoise", "darkviolet", "deeppink", "deepskyblue", "dimgray", "dodgerblue", "firebrick", "floralwhite", "forestgreen", "fuchsia", "gainsboro", "ghostwhite", "gold", "goldenrod", "gray", "green", "greenyellow", "honeydew", "hotpink", "indianred", "indigo", "ivory", "khaki", "lavender", "lavenderblush", "lawngreen", "lemonchiffon", "lightblue", "lightcoral", "lightcyan", "lightgoldenrodyellow", "lightgreen", "lightgrey", "lightpink", "lightsalmon", "lightseagreen", "lightskyblue", "lightslategray", "lightsteelblue", "lightyellow", "lime", "limegreen", "linen", "magenta", "maroon", "mediumaquamarine", "mediumblue", "mediumorchid", "mediumpurple", "mediumseagreen", "mediumslateblue", "mediumspringgreen", "mediumturquoise", "mediumvioletred", "midnightblue", "mintcream", "mistyrose", "moccasin", "navajowhite", "navy", "oldlace", "olive", "olivedrab", "orange", "orangered", "orchid", "palegoldenrod", "palegreen", "paleturquoise", "palevioletred", "papayawhip", "peachpuff", "peru", "pink", "plum", "powderblue", "purple", "red", "rosybrown", "royalblue", "saddlebrown", "salmon", "sandybrown", "seagreen", "seashell", "sienna", "silver", "skyblue", "slateblue", "slategray", "snow", "springgreen", "steelblue", "tan", "teal", "thistle", "tomato", "turquoise", "violet", "wheat", "white", "whitesmoke", "yellow", "yellowgreen");
        final ImmutableSet<String> a2 = ImmutableSet.a("dashed", "dotted", "double", "groove", "outset", "ridge", "solid");
        final ImmutableSet<String> t = ImmutableSet.t("thick", "thin");
        final ImmutableSet<String> a3 = ImmutableSet.a("hidden", "inherit", "inset", "invert", "medium", "none", new String[0]);
        final ImmutableMap<String, String> a4 = ImmutableMap.a("rgb(", "rgb()", "rgba(", "rgba()");
        final ImmutableSet<String> t2 = ImmutableSet.t("inherit", "invert");
        final ImmutableSet<String> b = ImmutableSet.b("hidden", "inherit", "inset", "none");
        final ImmutableSet<String> t3 = ImmutableSet.t("inherit", "medium");
        final ImmutableSet<String> t4 = ImmutableSet.t("clip", "ellipsis");
        final ImmutableSet<String> a5 = ImmutableSet.a("behind", "center-left", "center-right", "far-left", "far-right", "left-side", "leftwards", "right-side", "rightwards");
        final ImmutableSet<String> t5 = ImmutableSet.t("left", "right");
        final ImmutableSet<String> t6 = ImmutableSet.t("center", "inherit");
        final ImmutableSet<String> a6 = ImmutableSet.a("border-box", "contain", "content-box", "cover", "padding-box");
        final ImmutableSet<String> a7 = ImmutableSet.a("no-repeat", "repeat-x", "repeat-y", "round", "space");
        final ImmutableSet<String> t7 = ImmutableSet.t("bottom", "top");
        final ImmutableSet<String> a8 = ImmutableSet.a(",", "/", "auto", "center", "fixed", "inherit", "local", "none", "repeat", "scroll", "transparent");
        final ImmutableMap<String, String> zo = ImmutableMap.Zv().p("image(", "image()").p("linear-gradient(", "linear-gradient()").p("radial-gradient(", "radial-gradient()").p("repeating-linear-gradient(", "repeating-linear-gradient()").p("repeating-radial-gradient(", "repeating-radial-gradient()").p("rgb(", "rgb()").p("rgba(", "rgba()").Zo();
        final ImmutableSet<String> b2 = ImmutableSet.b(",", "fixed", "local", "scroll");
        final ImmutableSet<String> t8 = ImmutableSet.t("inherit", "transparent");
        final ImmutableSet<String> t9 = ImmutableSet.t(",", "none");
        final ImmutableMap<String, String> a9 = ImmutableMap.a("image(", "image()", "linear-gradient(", "linear-gradient()", "radial-gradient(", "radial-gradient()", "repeating-linear-gradient(", "repeating-linear-gradient()", "repeating-radial-gradient(", "repeating-radial-gradient()");
        final ImmutableSet<String> t10 = ImmutableSet.t(",", "center");
        final ImmutableSet<String> t11 = ImmutableSet.t(",", "repeat");
        final ImmutableSet<String> a10 = ImmutableSet.a("hidden", "inherit", "inset", "medium", "none", "transparent", new String[0]);
        final ImmutableSet<String> b3 = ImmutableSet.b("collapse", "inherit", "separate");
        final ImmutableSet<String> t12 = ImmutableSet.t("auto", "inherit");
        final ImmutableSet<String> b4 = ImmutableSet.b(",", "inset", "none");
        final ImmutableSet<String> b5 = ImmutableSet.b("both", "inherit", "none");
        final ImmutableMap<String, String> r = ImmutableMap.r("rect(", "rect()");
        final ImmutableSet<String> t13 = ImmutableSet.t("none", "normal");
        final ImmutableSet<String> t14 = ImmutableSet.t("inherit", "none");
        final ImmutableSet<String> a11 = ImmutableSet.a("all-scroll", "col-resize", "crosshair", "default", "e-resize", "hand", "help", "move", "n-resize", "ne-resize", "no-drop", "not-allowed", "nw-resize", "pointer", "progress", "row-resize", "s-resize", "se-resize", "sw-resize", "text", "vertical-text", "w-resize", "wait");
        final ImmutableSet<String> b6 = ImmutableSet.b(",", "auto", "inherit");
        final ImmutableSet<String> t15 = ImmutableSet.t("ltr", "rtl");
        final ImmutableSet<String> a12 = ImmutableSet.a("-moz-inline-box", "-moz-inline-stack", "block", "inline", "inline-block", "inline-table", "list-item", "run-in", "table", "table-caption", "table-cell", "table-column", "table-column-group", "table-footer-group", "table-header-group", "table-row", "table-row-group");
        final ImmutableSet<String> a13 = ImmutableSet.a("above", "below", "higher", "level", "lower");
        final ImmutableSet<String> t16 = ImmutableSet.t("hide", "show");
        final ImmutableSet<String> a14 = ImmutableSet.a("100", "200", "300", "400", "500", "600", "700", "800", "900", "bold", "bolder", "lighter");
        final ImmutableSet<String> a15 = ImmutableSet.a("large", "larger", "small", "smaller", "x-large", "x-small", "xx-large", "xx-small");
        final ImmutableSet<String> a16 = ImmutableSet.a("caption", "icon", "menu", "message-box", "small-caption", "status-bar", new String[0]);
        final ImmutableSet<String> a17 = ImmutableSet.a("cursive", "fantasy", "monospace", "sans-serif", "serif");
        final ImmutableSet<String> t17 = ImmutableSet.t("italic", "oblique");
        final ImmutableSet<String> a18 = ImmutableSet.a(",", "/", "inherit", "medium", "normal", "small-caps", new String[0]);
        final ImmutableSet<String> t18 = ImmutableSet.t(",", "inherit");
        final ImmutableSet<String> a19 = ImmutableSet.a("condensed", "expanded", "extra-condensed", "extra-expanded", "narrower", "semi-condensed", "semi-expanded", "ultra-condensed", "ultra-expanded", "wider");
        final ImmutableSet<String> ag3 = ImmutableSet.aG("normal");
        final ImmutableSet<String> t19 = ImmutableSet.t("inherit", "normal");
        final ImmutableSet<String> b7 = ImmutableSet.b("inherit", "normal", "small-caps");
        final ImmutableSet<String> a20 = ImmutableSet.a("armenian", "cjk-decimal", "decimal", "decimal-leading-zero", "disc", "disclosure-closed", "disclosure-open", "ethiopic-numeric", "georgian", "hebrew", "hiragana", "hiragana-iroha", "japanese-formal", "japanese-informal", "katakana", "katakana-iroha", "korean-hangul-formal", "korean-hanja-formal", "korean-hanja-informal", "lower-alpha", "lower-greek", "lower-latin", "lower-roman", "simp-chinese-formal", "simp-chinese-informal", "square", "trad-chinese-formal", "trad-chinese-informal", "upper-alpha", "upper-latin", "upper-roman");
        final ImmutableSet<String> t20 = ImmutableSet.t("inside", "outside");
        final ImmutableSet<String> b8 = ImmutableSet.b("circle", "inherit", "none");
        final ImmutableSet<String> b9 = ImmutableSet.b("auto", "inherit", "none");
        final ImmutableSet<String> a21 = ImmutableSet.a("auto", "hidden", "inherit", "scroll", "visible");
        final ImmutableSet<String> t21 = ImmutableSet.t("no-content", "no-display");
        final ImmutableSet<String> b10 = ImmutableSet.b("auto", "hidden", "scroll", "visible");
        final ImmutableSet<String> b11 = ImmutableSet.b("always", "auto", "avoid", "inherit");
        final ImmutableSet<String> b12 = ImmutableSet.b("auto", "avoid", "inherit");
        final ImmutableSet<String> b13 = ImmutableSet.b("high", "low", "x-high", "x-low");
        final ImmutableSet<String> a22 = ImmutableSet.a("auto", "inherit", "mix", "none", "repeat");
        final ImmutableSet<String> b14 = ImmutableSet.b("absolute", "relative", "static");
        final ImmutableSet<String> b15 = ImmutableSet.b("inherit", "none", "normal", "spell-out");
        final ImmutableSet<String> b16 = ImmutableSet.b("always", "inherit", "once");
        final ImmutableSet<String> t22 = ImmutableSet.t("continuous", "digits");
        final ImmutableSet<String> b17 = ImmutableSet.b("code", "inherit", "none");
        final ImmutableSet<String> a23 = ImmutableSet.a("fast", "faster", "slow", "slower", "x-fast", "x-slow", new String[0]);
        final ImmutableSet<String> b18 = ImmutableSet.b("auto", "fixed", "inherit");
        final ImmutableSet<String> b19 = ImmutableSet.b("center", "inherit", "justify");
        final ImmutableSet<String> b20 = ImmutableSet.b("blink", "line-through", "overline", "underline");
        final ImmutableSet<String> b21 = ImmutableSet.b("capitalize", "lowercase", "uppercase");
        final ImmutableSet<String> t23 = ImmutableSet.t("suppress", "unrestricted");
        final ImmutableSet<String> t24 = ImmutableSet.t("bidi-override", "embed");
        final ImmutableSet<String> a24 = ImmutableSet.a("baseline", "middle", "sub", "super", "text-bottom", "text-top", new String[0]);
        final ImmutableSet<String> b22 = ImmutableSet.b("collapse", "hidden", "inherit", "visible");
        final ImmutableSet<String> b23 = ImmutableSet.b("child", "female", "male");
        final ImmutableSet<String> a25 = ImmutableSet.a("loud", "silent", "soft", "x-loud", "x-soft");
        final ImmutableSet<String> a26 = ImmutableSet.a("-moz-pre-wrap", "-o-pre-wrap", "-pre-wrap", "nowrap", "pre", "pre-line", "pre-wrap");
        final ImmutableSet<String> t25 = ImmutableSet.t("break-word", "normal");
        final ImmutableSet<String> ag4 = ImmutableSet.aG(",");
        final ImmutableSet<String> t26 = ImmutableSet.t(",", "to");
        final ImmutableSet<String> a27 = ImmutableSet.a("at", "closest-corner", "closest-side", "ellipse", "farthest-corner", "farthest-side", new String[0]);
        final ImmutableSet<String> b24 = ImmutableSet.b(",", "center", "circle");
        final ImmutableSet<String> t27 = ImmutableSet.t(",", "auto");
        final j j = new j(5, ag, zu, (byte)0);
        zv.p("-moz-border-radius", j);
        final j i = new j(5, ImmutableSet.Zw(), zu, (byte)0);
        zv.p("-moz-border-radius-bottomleft", i);
        zv.p("-moz-opacity", new j(1, ag2, zu, (byte)0));
        final j k = new j(7, a((ImmutableSet<Object>[])new ImmutableSet[] { a, a2, t, a3 }), a4, (byte)0);
        zv.p("-moz-outline", k);
        final j l = new j(2, a((ImmutableSet<Object>[])new ImmutableSet[] { t2, a }), a4, (byte)0);
        zv.p("-moz-outline-color", l);
        final j m = new j(0, a((ImmutableSet<Object>[])new ImmutableSet[] { a2, b }), zu, (byte)0);
        zv.p("-moz-outline-style", m);
        final j j2 = new j(5, a((ImmutableSet<Object>[])new ImmutableSet[] { t, t3 }), zu, (byte)0);
        zv.p("-moz-outline-width", j2);
        final j j3 = new j(0, t4, zu, (byte)0);
        zv.p("-o-text-overflow", j3);
        zv.p("azimuth", new j(5, a((ImmutableSet<Object>[])new ImmutableSet[] { a5, t5, t6 }), zu, (byte)0));
        zv.p("background", new j(23, a((ImmutableSet<Object>[])new ImmutableSet[] { t5, a6, a7, t7, a8, a }), zo, (byte)0));
        zv.p("background-attachment", new j(0, b2, zu, (byte)0));
        zv.p("background-color", new j(258, a((ImmutableSet<Object>[])new ImmutableSet[] { t8, a }), a4, (byte)0));
        zv.p("background-image", new j(16, t9, a9, (byte)0));
        zv.p("background-position", new j(5, a((ImmutableSet<Object>[])new ImmutableSet[] { t5, t7, t10 }), zu, (byte)0));
        zv.p("background-repeat", new j(0, a((ImmutableSet<Object>[])new ImmutableSet[] { a7, t11 }), zu, (byte)0));
        final j j4 = new j(7, a((ImmutableSet<Object>[])new ImmutableSet[] { a10, a, a2, t }), a4, (byte)0);
        zv.p("border", j4);
        final j j5 = new j(2, a((ImmutableSet<Object>[])new ImmutableSet[] { t8, a }), a4, (byte)0);
        zv.p("border-bottom-color", j5);
        zv.p("border-collapse", new j(0, b3, zu, (byte)0));
        final j j6 = new j(5, ag2, zu, (byte)0);
        zv.p("border-spacing", j6);
        final j j7 = new j(5, t12, zu, (byte)0);
        zv.p("bottom", j7);
        final j j8 = new j(7, a((ImmutableSet<Object>[])new ImmutableSet[] { b4, a }), a4, (byte)0);
        zv.p("box-shadow", j8);
        zv.p("caption-side", new j(0, a((ImmutableSet<Object>[])new ImmutableSet[] { t7, ag2 }), zu, (byte)0));
        zv.p("clear", new j(0, a((ImmutableSet<Object>[])new ImmutableSet[] { t5, b5 }), zu, (byte)0));
        zv.p("clip", new j(0, t12, r, (byte)0));
        zv.p("color", new j(258, a((ImmutableSet<Object>[])new ImmutableSet[] { ag2, a }), a4, (byte)0));
        zv.p("content", new j(8, t13, zu, (byte)0));
        final j j9 = new j(16, t14, zu, (byte)0);
        zv.p("cue", j9);
        zv.p("cursor", new j(272, a((ImmutableSet<Object>[])new ImmutableSet[] { a11, b6 }), zu, (byte)0));
        zv.p("direction", new j(0, a((ImmutableSet<Object>[])new ImmutableSet[] { t15, ag2 }), zu, (byte)0));
        zv.p("display", new j(0, a((ImmutableSet<Object>[])new ImmutableSet[] { t14, a12 }), zu, (byte)0));
        zv.p("elevation", new j(5, a((ImmutableSet<Object>[])new ImmutableSet[] { a13, ag2 }), zu, (byte)0));
        zv.p("empty-cells", new j(0, a((ImmutableSet<Object>[])new ImmutableSet[] { t16, ag2 }), zu, (byte)0));
        zv.p("float", new j(0, a((ImmutableSet<Object>[])new ImmutableSet[] { t5, t14 }), zu, (byte)0));
        zv.p("font", new j(73, a((ImmutableSet<Object>[])new ImmutableSet[] { a14, a15, a16, a17, t17, a18 }), zu, (byte)0));
        zv.p("font-family", new j(72, a((ImmutableSet<Object>[])new ImmutableSet[] { t18, a17 }), zu, (byte)0));
        zv.p("font-size", new j(1, a((ImmutableSet<Object>[])new ImmutableSet[] { a15, t3 }), zu, (byte)0));
        zv.p("font-stretch", new j(0, a((ImmutableSet<Object>[])new ImmutableSet[] { a19, ag3 }), zu, (byte)0));
        zv.p("font-style", new j(0, a((ImmutableSet<Object>[])new ImmutableSet[] { t17, t19 }), zu, (byte)0));
        zv.p("font-variant", new j(0, b7, zu, (byte)0));
        zv.p("font-weight", new j(0, a((ImmutableSet<Object>[])new ImmutableSet[] { a14, t19 }), zu, (byte)0));
        final j j10 = new j(5, t12, zu, (byte)0);
        zv.p("height", j10);
        final j j11 = new j(5, t19, zu, (byte)0);
        zv.p("letter-spacing", j11);
        zv.p("line-height", new j(1, t19, zu, (byte)0));
        zv.p("list-style", new j(16, a((ImmutableSet<Object>[])new ImmutableSet[] { a20, t20, b8 }), a9, (byte)0));
        zv.p("list-style-image", new j(16, t14, a9, (byte)0));
        zv.p("list-style-position", new j(0, a((ImmutableSet<Object>[])new ImmutableSet[] { t20, ag2 }), zu, (byte)0));
        zv.p("list-style-type", new j(0, a((ImmutableSet<Object>[])new ImmutableSet[] { a20, b8 }), zu, (byte)0));
        final j j12 = new j(1, t12, zu, (byte)0);
        zv.p("margin", j12);
        final j j13 = new j(1, b9, zu, (byte)0);
        zv.p("max-height", j13);
        zv.p("opacity", new j(1, ag2, zu, (byte)0));
        zv.p("overflow", new j(0, a21, zu, (byte)0));
        final j j14 = new j(0, a((ImmutableSet<Object>[])new ImmutableSet[] { t21, b10 }), zu, (byte)0);
        zv.p("overflow-x", j14);
        final j j15 = new j(1, ag2, zu, (byte)0);
        zv.p("padding", j15);
        final j j16 = new j(0, a((ImmutableSet<Object>[])new ImmutableSet[] { t5, b11 }), zu, (byte)0);
        zv.p("page-break-after", j16);
        zv.p("page-break-inside", new j(0, b12, zu, (byte)0));
        zv.p("pitch", new j(5, a((ImmutableSet<Object>[])new ImmutableSet[] { t3, b13 }), zu, (byte)0));
        zv.p("play-during", new j(16, a22, zu, (byte)0));
        zv.p("position", new j(0, a((ImmutableSet<Object>[])new ImmutableSet[] { ag2, b14 }), zu, (byte)0));
        zv.p("quotes", new j(8, t14, zu, (byte)0));
        zv.p("speak", new j(0, b15, zu, (byte)0));
        zv.p("speak-header", new j(0, b16, zu, (byte)0));
        zv.p("speak-numeral", new j(0, a((ImmutableSet<Object>[])new ImmutableSet[] { ag2, t22 }), zu, (byte)0));
        zv.p("speak-punctuation", new j(0, b17, zu, (byte)0));
        zv.p("speech-rate", new j(5, a((ImmutableSet<Object>[])new ImmutableSet[] { t3, a23 }), zu, (byte)0));
        zv.p("table-layout", new j(0, b18, zu, (byte)0));
        zv.p("text-align", new j(0, a((ImmutableSet<Object>[])new ImmutableSet[] { t5, b19 }), zu, (byte)0));
        zv.p("text-decoration", new j(0, a((ImmutableSet<Object>[])new ImmutableSet[] { t14, b20 }), zu, (byte)0));
        zv.p("text-transform", new j(0, a((ImmutableSet<Object>[])new ImmutableSet[] { t14, b21 }), zu, (byte)0));
        zv.p("text-wrap", new j(0, a((ImmutableSet<Object>[])new ImmutableSet[] { t13, t23 }), zu, (byte)0));
        zv.p("unicode-bidi", new j(0, a((ImmutableSet<Object>[])new ImmutableSet[] { t19, t24 }), zu, (byte)0));
        zv.p("vertical-align", new j(5, a((ImmutableSet<Object>[])new ImmutableSet[] { t7, ag2, a24 }), zu, (byte)0));
        zv.p("visibility", new j(0, b22, zu, (byte)0));
        zv.p("voice-family", new j(8, a((ImmutableSet<Object>[])new ImmutableSet[] { t18, b23 }), zu, (byte)0));
        zv.p("volume", new j(1, a((ImmutableSet<Object>[])new ImmutableSet[] { t3, a25 }), zu, (byte)0));
        zv.p("white-space", new j(0, a((ImmutableSet<Object>[])new ImmutableSet[] { t19, a26 }), zu, (byte)0));
        zv.p("word-wrap", new j(0, t25, zu, (byte)0));
        zv.p("zoom", new j(1, ag3, zu, (byte)0));
        final j j17 = new j(1, ag4, zu, (byte)0);
        zv.p("rgb()", j17);
        zv.p("image()", new j(18, a((ImmutableSet<Object>[])new ImmutableSet[] { a, ag4 }), a4, (byte)0));
        final j j18 = new j(7, a((ImmutableSet<Object>[])new ImmutableSet[] { t5, t7, t26, a }), a4, (byte)0);
        zv.p("linear-gradient()", j18);
        final j j19 = new j(7, a((ImmutableSet<Object>[])new ImmutableSet[] { t5, t7, a, a27, b24 }), a4, (byte)0);
        zv.p("radial-gradient()", j19);
        zv.p("rect()", new j(5, t27, zu, (byte)0));
        zv.p("-moz-border-radius-bottomright", i);
        zv.p("-moz-border-radius-topleft", i);
        zv.p("-moz-border-radius-topright", i);
        zv.p("-moz-box-shadow", j8);
        zv.p("-webkit-border-bottom-left-radius", i);
        zv.p("-webkit-border-bottom-right-radius", i);
        zv.p("-webkit-border-radius", j);
        zv.p("-webkit-border-radius-bottom-left", i);
        zv.p("-webkit-border-radius-bottom-right", i);
        zv.p("-webkit-border-radius-top-left", i);
        zv.p("-webkit-border-radius-top-right", i);
        zv.p("-webkit-border-top-left-radius", i);
        zv.p("-webkit-border-top-right-radius", i);
        zv.p("-webkit-box-shadow", j8);
        zv.p("border-bottom", j4);
        zv.p("border-bottom-left-radius", i);
        zv.p("border-bottom-right-radius", i);
        zv.p("border-bottom-style", m);
        zv.p("border-bottom-width", j2);
        zv.p("border-color", j5);
        zv.p("border-left", j4);
        zv.p("border-left-color", j5);
        zv.p("border-left-style", m);
        zv.p("border-left-width", j2);
        zv.p("border-radius", j);
        zv.p("border-right", j4);
        zv.p("border-right-color", j5);
        zv.p("border-right-style", m);
        zv.p("border-right-width", j2);
        zv.p("border-style", m);
        zv.p("border-top", j4);
        zv.p("border-top-color", j5);
        zv.p("border-top-left-radius", i);
        zv.p("border-top-right-radius", i);
        zv.p("border-top-style", m);
        zv.p("border-top-width", j2);
        zv.p("border-width", j2);
        zv.p("cue-after", j9);
        zv.p("cue-before", j9);
        zv.p("left", j10);
        zv.p("margin-bottom", j12);
        zv.p("margin-left", j12);
        zv.p("margin-right", j12);
        zv.p("margin-top", j12);
        zv.p("max-width", j13);
        zv.p("min-height", j12);
        zv.p("min-width", j12);
        zv.p("outline", k);
        zv.p("outline-color", l);
        zv.p("outline-style", m);
        zv.p("outline-width", j2);
        zv.p("overflow-y", j14);
        zv.p("padding-bottom", j15);
        zv.p("padding-left", j15);
        zv.p("padding-right", j15);
        zv.p("padding-top", j15);
        zv.p("page-break-before", j16);
        zv.p("pause", j6);
        zv.p("pause-after", j6);
        zv.p("pause-before", j6);
        zv.p("pitch-range", j6);
        zv.p("richness", j6);
        zv.p("right", j10);
        zv.p("stress", j6);
        zv.p("text-indent", j6);
        zv.p("text-overflow", j3);
        zv.p("text-shadow", j8);
        zv.p("top", j10);
        zv.p("width", j12);
        zv.p("word-spacing", j11);
        zv.p("z-index", j7);
        zv.p("rgba()", j17);
        zv.p("repeating-linear-gradient()", j18);
        zv.p("repeating-radial-gradient()", j19);
        cGJ = zv.Zo();
        cGL = i(cGK = ImmutableSet.a("-moz-border-radius", "-moz-border-radius-bottomleft", "-moz-border-radius-bottomright", "-moz-border-radius-topleft", "-moz-border-radius-topright", "-moz-box-shadow", "-moz-outline", "-moz-outline-color", "-moz-outline-style", "-moz-outline-width", "-o-text-overflow", "-webkit-border-bottom-left-radius", "-webkit-border-bottom-right-radius", "-webkit-border-radius", "-webkit-border-radius-bottom-left", "-webkit-border-radius-bottom-right", "-webkit-border-radius-top-left", "-webkit-border-radius-top-right", "-webkit-border-top-left-radius", "-webkit-border-top-right-radius", "-webkit-box-shadow", "azimuth", "background", "background-attachment", "background-color", "background-image", "background-position", "background-repeat", "border", "border-bottom", "border-bottom-color", "border-bottom-left-radius", "border-bottom-right-radius", "border-bottom-style", "border-bottom-width", "border-collapse", "border-color", "border-left", "border-left-color", "border-left-style", "border-left-width", "border-radius", "border-right", "border-right-color", "border-right-style", "border-right-width", "border-spacing", "border-style", "border-top", "border-top-color", "border-top-left-radius", "border-top-right-radius", "border-top-style", "border-top-width", "border-width", "box-shadow", "caption-side", "color", "cue", "cue-after", "cue-before", "direction", "elevation", "empty-cells", "font", "font-family", "font-size", "font-stretch", "font-style", "font-variant", "font-weight", "height", "image()", "letter-spacing", "line-height", "linear-gradient()", "list-style", "list-style-image", "list-style-position", "list-style-type", "margin", "margin-bottom", "margin-left", "margin-right", "margin-top", "max-height", "max-width", "min-height", "min-width", "outline", "outline-color", "outline-style", "outline-width", "padding", "padding-bottom", "padding-left", "padding-right", "padding-top", "pause", "pause-after", "pause-before", "pitch", "pitch-range", "quotes", "radial-gradient()", "rect()", "repeating-linear-gradient()", "repeating-radial-gradient()", "rgb()", "rgba()", "richness", "speak", "speak-header", "speak-numeral", "speak-punctuation", "speech-rate", "stress", "table-layout", "text-align", "text-decoration", "text-indent", "text-overflow", "text-shadow", "text-transform", "text-wrap", "unicode-bidi", "vertical-align", "voice-family", "volume", "white-space", "width", "word-spacing", "word-wrap"));
    }
    
    private i(final ImmutableMap<String, j> cgi) {
        if (cgi == null) {
            throw new NullPointerException();
        }
        this.cGI = cgi;
    }
    
    private static <T> ImmutableSet<T> a(final ImmutableSet<T>... array) {
        final z<T> zx = ImmutableSet.Zx();
        for (int length = array.length, i = 0; i < length; ++i) {
            zx.e((Iterable<? extends T>)array[i]);
        }
        return zx.Zy();
    }
    
    public static i a(final i... array) {
        int i = 0;
        if (array.length == 1) {
            return array[0];
        }
        final LinkedHashMap<Object, Object> aao = Maps.aao();
        while (i < array.length) {
            aao.putAll(array[i].cGI);
            ++i;
        }
        return new i(ImmutableMap.q((Map<? extends String, ? extends j>)aao));
    }
    
    public static i i(final Iterable<? extends String> iterable) {
        final y<String, j> zv = ImmutableMap.Zv();
        for (final String s : iterable) {
            final j j = i.cGJ.get(s);
            if (j == null) {
                throw new IllegalArgumentException(s);
            }
            zv.p(s, j);
        }
        return new i(zv.Zo());
    }
    
    final j im(final String s) {
        final String hl = W.hL(s);
        j j = this.cGI.get(hl);
        if (j == null) {
            if (hl.length() != 0 && hl.charAt(0) == '-') {
                int n = 0;
                Label_0083: {
                    switch (hl.charAt(1)) {
                        case 'm': {
                            if (hl.startsWith("-ms-")) {
                                n = 4;
                                break Label_0083;
                            }
                            if (hl.startsWith("-moz-")) {
                                n = 5;
                                break Label_0083;
                            }
                            break;
                        }
                        case 'o': {
                            if (hl.startsWith("-o-")) {
                                n = 3;
                                break Label_0083;
                            }
                            break;
                        }
                        case 'w': {
                            if (hl.startsWith("-webkit-")) {
                                n = 8;
                                break Label_0083;
                            }
                            break;
                        }
                    }
                    n = 0;
                }
                Object substring;
                if (n == 0) {
                    substring = null;
                }
                else {
                    substring = hl.substring(n);
                }
                j = this.cGI.get(substring);
                if (j != null) {
                    return j;
                }
            }
            return i.cGH;
        }
        return j;
    }
}
