package com.android.emailcommon.b;

import java.util.*;
import android.text.*;

public final class r
{
    static final String abF;
    static final String[] abG;
    static final Map<String, Character> abH;
    
    static {
        abF = "#" + Integer.toHexString(16776960);
        abG = new String[] { "title", "script", "style", "applet", "head" };
        (abH = new HashMap<String, Character>(252)).put("&nbsp", ' ');
        r.abH.put("&iexcl", '¡');
        r.abH.put("&cent", '¢');
        r.abH.put("&pound", '£');
        r.abH.put("&curren", '¤');
        r.abH.put("&yen", '¥');
        r.abH.put("&brvbar", '¦');
        r.abH.put("&sect", '§');
        r.abH.put("&uml", '¨');
        r.abH.put("&copy", '©');
        r.abH.put("&ordf", 'ª');
        r.abH.put("&laquo", '«');
        r.abH.put("&not", '¬');
        r.abH.put("&shy", '\u00ad');
        r.abH.put("&reg", '®');
        r.abH.put("&macr", '¯');
        r.abH.put("&deg", '°');
        r.abH.put("&plusmn", '±');
        r.abH.put("&sup2", '²');
        r.abH.put("&sup3", '³');
        r.abH.put("&acute", '´');
        r.abH.put("&micro", 'µ');
        r.abH.put("&para", '¶');
        r.abH.put("&middot", '·');
        r.abH.put("&cedil", '¸');
        r.abH.put("&sup1", '¹');
        r.abH.put("&ordm", 'º');
        r.abH.put("&raquo", '»');
        r.abH.put("&frac14", '¼');
        r.abH.put("&frac12", '½');
        r.abH.put("&frac34", '¾');
        r.abH.put("&iquest", '¿');
        r.abH.put("&Agrave", '\u00c0');
        r.abH.put("&Aacute", '\u00c1');
        r.abH.put("&Acirc", '\u00c2');
        r.abH.put("&Atilde", '\u00c3');
        r.abH.put("&Auml", '\u00c4');
        r.abH.put("&Aring", '\u00c5');
        r.abH.put("&AElig", '\u00c6');
        r.abH.put("&Ccedil", '\u00c7');
        r.abH.put("&Egrave", '\u00c8');
        r.abH.put("&Eacute", '\u00c9');
        r.abH.put("&Ecirc", '\u00ca');
        r.abH.put("&Euml", '\u00cb');
        r.abH.put("&Igrave", '\u00cc');
        r.abH.put("&Iacute", '\u00cd');
        r.abH.put("&Icirc", '\u00ce');
        r.abH.put("&Iuml", '\u00cf');
        r.abH.put("&ETH", '\u00d0');
        r.abH.put("&Ntilde", '\u00d1');
        r.abH.put("&Ograve", '\u00d2');
        r.abH.put("&Oacute", '\u00d3');
        r.abH.put("&Ocirc", '\u00d4');
        r.abH.put("&Otilde", '\u00d5');
        r.abH.put("&Ouml", '\u00d6');
        r.abH.put("&times", '\u00d7');
        r.abH.put("&Oslash", '\u00d8');
        r.abH.put("&Ugrave", '\u00d9');
        r.abH.put("&Uacute", '\u00da');
        r.abH.put("&Ucirc", '\u00db');
        r.abH.put("&Uuml", '\u00dc');
        r.abH.put("&Yacute", '\u00dd');
        r.abH.put("&THORN", '\u00de');
        r.abH.put("&szlig", '\u00df');
        r.abH.put("&agrave", '\u00e0');
        r.abH.put("&aacute", '\u00e1');
        r.abH.put("&acirc", '\u00e2');
        r.abH.put("&atilde", '\u00e3');
        r.abH.put("&auml", '\u00e4');
        r.abH.put("&aring", '\u00e5');
        r.abH.put("&aelig", '\u00e6');
        r.abH.put("&ccedil", '\u00e7');
        r.abH.put("&egrave", '\u00e8');
        r.abH.put("&eacute", '\u00e9');
        r.abH.put("&ecirc", '\u00ea');
        r.abH.put("&euml", '\u00eb');
        r.abH.put("&igrave", '\u00ec');
        r.abH.put("&iacute", '\u00ed');
        r.abH.put("&icirc", '\u00ee');
        r.abH.put("&iuml", '\u00ef');
        r.abH.put("&eth", '\u00f0');
        r.abH.put("&ntilde", '\u00f1');
        r.abH.put("&ograve", '\u00f2');
        r.abH.put("&oacute", '\u00f3');
        r.abH.put("&ocirc", '\u00f4');
        r.abH.put("&otilde", '\u00f5');
        r.abH.put("&ouml", '\u00f6');
        r.abH.put("&divide", '\u00f7');
        r.abH.put("&oslash", '\u00f8');
        r.abH.put("&ugrave", '\u00f9');
        r.abH.put("&uacute", '\u00fa');
        r.abH.put("&ucirc", '\u00fb');
        r.abH.put("&uuml", '\u00fc');
        r.abH.put("&yacute", '\u00fd');
        r.abH.put("&thorn", '\u00fe');
        r.abH.put("&yuml", '\u00ff');
        r.abH.put("&fnof", '\u0192');
        r.abH.put("&Alpha", '\u0391');
        r.abH.put("&Beta", '\u0392');
        r.abH.put("&Gamma", '\u0393');
        r.abH.put("&Delta", '\u0394');
        r.abH.put("&Epsilon", '\u0395');
        r.abH.put("&Zeta", '\u0396');
        r.abH.put("&Eta", '\u0397');
        r.abH.put("&Theta", '\u0398');
        r.abH.put("&Iota", '\u0399');
        r.abH.put("&Kappa", '\u039a');
        r.abH.put("&Lambda", '\u039b');
        r.abH.put("&Mu", '\u039c');
        r.abH.put("&Nu", '\u039d');
        r.abH.put("&Xi", '\u039e');
        r.abH.put("&Omicron", '\u039f');
        r.abH.put("&Pi", '\u03a0');
        r.abH.put("&Rho", '\u03a1');
        r.abH.put("&Sigma", '\u03a3');
        r.abH.put("&Tau", '\u03a4');
        r.abH.put("&Upsilon", '\u03a5');
        r.abH.put("&Phi", '\u03a6');
        r.abH.put("&Chi", '\u03a7');
        r.abH.put("&Psi", '\u03a8');
        r.abH.put("&Omega", '\u03a9');
        r.abH.put("&alpha", '\u03b1');
        r.abH.put("&beta", '\u03b2');
        r.abH.put("&gamma", '\u03b3');
        r.abH.put("&delta", '\u03b4');
        r.abH.put("&epsilon", '\u03b5');
        r.abH.put("&zeta", '\u03b6');
        r.abH.put("&eta", '\u03b7');
        r.abH.put("&theta", '\u03b8');
        r.abH.put("&iota", '\u03b9');
        r.abH.put("&kappa", '\u03ba');
        r.abH.put("&lambda", '\u03bb');
        r.abH.put("&mu", '\u03bc');
        r.abH.put("&nu", '\u03bd');
        r.abH.put("&xi", '\u03be');
        r.abH.put("&omicron", '\u03bf');
        r.abH.put("&pi", '\u03c0');
        r.abH.put("&rho", '\u03c1');
        r.abH.put("&sigmaf", '\u03c2');
        r.abH.put("&sigma", '\u03c3');
        r.abH.put("&tau", '\u03c4');
        r.abH.put("&upsilon", '\u03c5');
        r.abH.put("&phi", '\u03c6');
        r.abH.put("&chi", '\u03c7');
        r.abH.put("&psi", '\u03c8');
        r.abH.put("&omega", '\u03c9');
        r.abH.put("&thetasym", '\u03d1');
        r.abH.put("&upsih", '\u03d2');
        r.abH.put("&piv", '\u03d6');
        r.abH.put("&bull", '\u2022');
        r.abH.put("&hellip", '\u2026');
        r.abH.put("&prime", '\u2032');
        r.abH.put("&Prime", '\u2033');
        r.abH.put("&oline", '\u203e');
        r.abH.put("&frasl", '\u2044');
        r.abH.put("&weierp", '\u2118');
        r.abH.put("&image", '\u2111');
        r.abH.put("&real", '\u211c');
        r.abH.put("&trade", '\u2122');
        r.abH.put("&alefsym", '\u2135');
        r.abH.put("&larr", '\u2190');
        r.abH.put("&uarr", '\u2191');
        r.abH.put("&rarr", '\u2192');
        r.abH.put("&darr", '\u2193');
        r.abH.put("&harr", '\u2194');
        r.abH.put("&crarr", '\u21b5');
        r.abH.put("&lArr", '\u21d0');
        r.abH.put("&uArr", '\u21d1');
        r.abH.put("&rArr", '\u21d2');
        r.abH.put("&dArr", '\u21d3');
        r.abH.put("&hArr", '\u21d4');
        r.abH.put("&forall", '\u2200');
        r.abH.put("&part", '\u2202');
        r.abH.put("&exist", '\u2203');
        r.abH.put("&empty", '\u2205');
        r.abH.put("&nabla", '\u2207');
        r.abH.put("&isin", '\u2208');
        r.abH.put("&notin", '\u2209');
        r.abH.put("&ni", '\u220b');
        r.abH.put("&prod", '\u220f');
        r.abH.put("&sum", '\u2211');
        r.abH.put("&minus", '\u2212');
        r.abH.put("&lowast", '\u2217');
        r.abH.put("&radic", '\u221a');
        r.abH.put("&prop", '\u221d');
        r.abH.put("&infin", '\u221e');
        r.abH.put("&ang", '\u2220');
        r.abH.put("&and", '\u2227');
        r.abH.put("&or", '\u2228');
        r.abH.put("&cap", '\u2229');
        r.abH.put("&cup", '\u222a');
        r.abH.put("&int", '\u222b');
        r.abH.put("&there4", '\u2234');
        r.abH.put("&sim", '\u223c');
        r.abH.put("&cong", '\u2245');
        r.abH.put("&asymp", '\u2248');
        r.abH.put("&ne", '\u2260');
        r.abH.put("&equiv", '\u2261');
        r.abH.put("&le", '\u2264');
        r.abH.put("&ge", '\u2265');
        r.abH.put("&sub", '\u2282');
        r.abH.put("&sup", '\u2283');
        r.abH.put("&nsub", '\u2284');
        r.abH.put("&sube", '\u2286');
        r.abH.put("&supe", '\u2287');
        r.abH.put("&oplus", '\u2295');
        r.abH.put("&otimes", '\u2297');
        r.abH.put("&perp", '\u22a5');
        r.abH.put("&sdot", '\u22c5');
        r.abH.put("&lceil", '\u2308');
        r.abH.put("&rceil", '\u2309');
        r.abH.put("&lfloor", '\u230a');
        r.abH.put("&rfloor", '\u230b');
        r.abH.put("&lang", '\u2329');
        r.abH.put("&rang", '\u232a');
        r.abH.put("&loz", '\u25ca');
        r.abH.put("&spades", '\u2660');
        r.abH.put("&clubs", '\u2663');
        r.abH.put("&hearts", '\u2665');
        r.abH.put("&diams", '\u2666');
        r.abH.put("&quot", '\"');
        r.abH.put("&amp", '&');
        r.abH.put("&lt", '<');
        r.abH.put("&gt", '>');
        r.abH.put("&OElig", '\u0152');
        r.abH.put("&oelig", '\u0153');
        r.abH.put("&Scaron", '\u0160');
        r.abH.put("&scaron", '\u0161');
        r.abH.put("&Yuml", '\u0178');
        r.abH.put("&circ", '\u02c6');
        r.abH.put("&tilde", '\u02dc');
        r.abH.put("&ensp", '\u2002');
        r.abH.put("&emsp", '\u2003');
        r.abH.put("&thinsp", '\u2009');
        r.abH.put("&zwnj", '\u200c');
        r.abH.put("&zwj", '\u200d');
        r.abH.put("&lrm", '\u200e');
        r.abH.put("&rlm", '\u200f');
        r.abH.put("&ndash", '\u2013');
        r.abH.put("&mdash", '\u2014');
        r.abH.put("&lsquo", '\u2018');
        r.abH.put("&rsquo", '\u2019');
        r.abH.put("&sbquo", '\u201a');
        r.abH.put("&ldquo", '\u201c');
        r.abH.put("&rdquo", '\u201d');
        r.abH.put("&bdquo", '\u201e');
        r.abH.put("&dagger", '\u2020');
        r.abH.put("&Dagger", '\u2021');
        r.abH.put("&permil", '\u2030');
        r.abH.put("&lsaquo", '\u2039');
        r.abH.put("&rsaquo", '\u203a');
        r.abH.put("&euro", '\u20ac');
    }
    
    private static char a(final String s, final int n, final int[] array) {
        final int length = s.length();
        array[0] = 0;
        final int n2 = n + 10;
        int n3 = n;
        while (true) {
            while (n3 < length && n3 < n2) {
                if (s.charAt(n3) == ';') {
                    final String substring = s.substring(n, n3);
                    if (substring == null) {
                        return '&';
                    }
                    final Character c = r.abH.get(substring);
                    final int length2 = substring.length();
                    if (c != null) {
                        array[0] = length2;
                        return c;
                    }
                    if (length2 > 2 && substring.charAt(1) == '#') {
                        char c2 = '?';
                        while (true) {
                            try {
                                int n4;
                                if (substring.charAt(2) == 'x' && length2 > 3) {
                                    n4 = Integer.parseInt(substring.substring(3), 16);
                                }
                                else {
                                    n4 = Integer.parseInt(substring.substring(2));
                                }
                                c2 = (char)n4;
                                array[0] = length2;
                                return c2;
                            }
                            catch (NumberFormatException ex) {
                                continue;
                            }
                            break;
                        }
                        break;
                    }
                    return '&';
                }
                else {
                    ++n3;
                }
            }
            final String substring = null;
            continue;
        }
    }
    
    public static String aC(final String s) {
        return h(s, true);
    }
    
    public static String aD(final String s) {
        return h(s, false);
    }
    
    private static String h(final String s, final boolean b) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            return "";
        }
        final int length = s.length();
        final char[] array = new char[200];
        final int[] array2 = { 0 };
        int n = 0;
        char c = ' ';
        int n2 = 0;
        int n3 = 0;
        char char1;
        char char2;
        String substring;
        String lowerCase;
        String[] abG;
        int length2;
        int i;
        String s2;
        String s3;
        int n4;
        int length3;
        int n5;
        int j;
        char char3;
        int index = 0;
        int n6 = 0;
        int n7;
        int n8;
        char c2 = '\0';
        int n9 = 0;
        char a;
        int n10;
        Label_0517:Label_0306_Outer:
        while (n3 < length && n < 200) {
            char1 = s.charAt(n3);
            while (true) {
                Label_0551: {
                    Label_0392: {
                        if (b && n2 == 0 && char1 == '<') {
                            if (n3 >= length - 1) {
                                break Label_0551;
                            }
                            char2 = s.charAt(n3 + 1);
                            Label_0298: {
                                if (char2 == '!' || char2 == '-' || char2 == '/' || Character.isLetter(char2)) {
                                    Label_0558: {
                                        if (n3 < length - 8) {
                                            substring = s.substring(n3 + 1, 1 + (n3 + 6));
                                            lowerCase = substring.toLowerCase();
                                            abG = r.abG;
                                            length2 = abG.length;
                                            i = 0;
                                            while (true) {
                                                while (i < length2) {
                                                    s2 = abG[i];
                                                    if (lowerCase.startsWith(s2)) {
                                                        s3 = substring.substring(0, s2.length());
                                                        n4 = 1;
                                                        if (n4 != 0) {
                                                            if (s3.endsWith(" ")) {
                                                                s3 = s3.substring(0, -1 + s3.length());
                                                            }
                                                            length3 = s.length();
                                                            n5 = 0;
                                                            j = n3;
                                                            while (true) {
                                                                while (j < length3) {
                                                                    char3 = s.charAt(j);
                                                                    if (char3 == '>') {
                                                                        if (n5 != 47) {
                                                                            break;
                                                                        }
                                                                        index = j - 1;
                                                                        if (index >= 0) {
                                                                            n6 = 1;
                                                                            break Label_0298;
                                                                        }
                                                                        break Label_0517;
                                                                    }
                                                                    else {
                                                                        ++j;
                                                                        n5 = char3;
                                                                    }
                                                                }
                                                                index = s.indexOf("/" + s3, n3);
                                                                continue Label_0306_Outer;
                                                            }
                                                        }
                                                        break Label_0558;
                                                    }
                                                    else {
                                                        ++i;
                                                    }
                                                }
                                                s3 = substring;
                                                n4 = 0;
                                                continue Label_0306_Outer;
                                            }
                                        }
                                    }
                                    index = n3;
                                    n6 = 1;
                                }
                                else {
                                    n7 = n3;
                                    n6 = n2;
                                    index = n7;
                                }
                            }
                            n8 = n6;
                            n3 = index;
                        }
                        else {
                            if (b && n2 != 0 && char1 == '>') {
                                c2 = c;
                                n9 = n;
                                n2 = 0;
                                break Label_0392;
                            }
                            break Label_0551;
                        }
                        Label_0502: {
                            if (n8 == 0) {
                                if (b && char1 == '&') {
                                    a = a(s, n3, array2);
                                    n3 += array2[0];
                                }
                                else {
                                    a = char1;
                                }
                                if (Character.isWhitespace(a) || a == ' ') {
                                    if (c == ' ') {
                                        break Label_0502;
                                    }
                                    a = ' ';
                                }
                                else if ((a == '-' || a == '=') && c == a) {
                                    break Label_0502;
                                }
                                n9 = n + 1;
                                array[n] = a;
                                n10 = n8;
                                c2 = a;
                                n2 = n10;
                                break Label_0392;
                            }
                        }
                        n2 = n8;
                        n9 = n;
                        c2 = c;
                    }
                    ++n3;
                    c = c2;
                    n = n9;
                    continue Label_0306_Outer;
                }
                n8 = n2;
                continue;
            }
        }
        if (n > 0 && c == ' ') {
            --n;
        }
        return new String(array, 0, n);
    }
    
    public static boolean v(final String s, final String s2) {
        return (s == null && s2 == null) || (s != null && s2 != null && s.equals(s2));
    }
}
