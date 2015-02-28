package com.google.android.mail.common.base;

import java.util.regex.*;
import java.util.*;

public final class StringUtil
{
    static final Map<String, Character> abH;
    private static final a cpA;
    private static final Pattern cpB;
    private static final j cpC;
    private static final a cpD;
    private static final a cpE;
    private static final Pattern cpF;
    private static final Set<Character.UnicodeBlock> cpG;
    private static final char[] cpH;
    private static final char[] cpI;
    private static final Pattern cpJ;
    private static final Set<Integer> cpK;
    private static final Set<Integer> cpL;
    private static final Splitter cpv;
    private static final Splitter cpw;
    private static final j cpx;
    private static final j cpy;
    static final Set<Character> cpz;
    
    static {
        cpv = Splitter.Wa().Wb();
        cpw = Splitter.c(j.coK).Wb();
        cpx = j.x("\u0091\u0092\u2018\u2019");
        cpy = j.x("\u0093\u0094\u201c\u201d");
        (abH = new HashMap<String, Character>(252)).put("&nbsp", ' ');
        StringUtil.abH.put("&iexcl", '¡');
        StringUtil.abH.put("&cent", '¢');
        StringUtil.abH.put("&pound", '£');
        StringUtil.abH.put("&curren", '¤');
        StringUtil.abH.put("&yen", '¥');
        StringUtil.abH.put("&brvbar", '¦');
        StringUtil.abH.put("&sect", '§');
        StringUtil.abH.put("&uml", '¨');
        StringUtil.abH.put("&copy", '©');
        StringUtil.abH.put("&ordf", 'ª');
        StringUtil.abH.put("&laquo", '«');
        StringUtil.abH.put("&not", '¬');
        StringUtil.abH.put("&shy", '\u00ad');
        StringUtil.abH.put("&reg", '®');
        StringUtil.abH.put("&macr", '¯');
        StringUtil.abH.put("&deg", '°');
        StringUtil.abH.put("&plusmn", '±');
        StringUtil.abH.put("&sup2", '²');
        StringUtil.abH.put("&sup3", '³');
        StringUtil.abH.put("&acute", '´');
        StringUtil.abH.put("&micro", 'µ');
        StringUtil.abH.put("&para", '¶');
        StringUtil.abH.put("&middot", '·');
        StringUtil.abH.put("&cedil", '¸');
        StringUtil.abH.put("&sup1", '¹');
        StringUtil.abH.put("&ordm", 'º');
        StringUtil.abH.put("&raquo", '»');
        StringUtil.abH.put("&frac14", '¼');
        StringUtil.abH.put("&frac12", '½');
        StringUtil.abH.put("&frac34", '¾');
        StringUtil.abH.put("&iquest", '¿');
        StringUtil.abH.put("&Agrave", '\u00c0');
        StringUtil.abH.put("&Aacute", '\u00c1');
        StringUtil.abH.put("&Acirc", '\u00c2');
        StringUtil.abH.put("&Atilde", '\u00c3');
        StringUtil.abH.put("&Auml", '\u00c4');
        StringUtil.abH.put("&Aring", '\u00c5');
        StringUtil.abH.put("&AElig", '\u00c6');
        StringUtil.abH.put("&Ccedil", '\u00c7');
        StringUtil.abH.put("&Egrave", '\u00c8');
        StringUtil.abH.put("&Eacute", '\u00c9');
        StringUtil.abH.put("&Ecirc", '\u00ca');
        StringUtil.abH.put("&Euml", '\u00cb');
        StringUtil.abH.put("&Igrave", '\u00cc');
        StringUtil.abH.put("&Iacute", '\u00cd');
        StringUtil.abH.put("&Icirc", '\u00ce');
        StringUtil.abH.put("&Iuml", '\u00cf');
        StringUtil.abH.put("&ETH", '\u00d0');
        StringUtil.abH.put("&Ntilde", '\u00d1');
        StringUtil.abH.put("&Ograve", '\u00d2');
        StringUtil.abH.put("&Oacute", '\u00d3');
        StringUtil.abH.put("&Ocirc", '\u00d4');
        StringUtil.abH.put("&Otilde", '\u00d5');
        StringUtil.abH.put("&Ouml", '\u00d6');
        StringUtil.abH.put("&times", '\u00d7');
        StringUtil.abH.put("&Oslash", '\u00d8');
        StringUtil.abH.put("&Ugrave", '\u00d9');
        StringUtil.abH.put("&Uacute", '\u00da');
        StringUtil.abH.put("&Ucirc", '\u00db');
        StringUtil.abH.put("&Uuml", '\u00dc');
        StringUtil.abH.put("&Yacute", '\u00dd');
        StringUtil.abH.put("&THORN", '\u00de');
        StringUtil.abH.put("&szlig", '\u00df');
        StringUtil.abH.put("&agrave", '\u00e0');
        StringUtil.abH.put("&aacute", '\u00e1');
        StringUtil.abH.put("&acirc", '\u00e2');
        StringUtil.abH.put("&atilde", '\u00e3');
        StringUtil.abH.put("&auml", '\u00e4');
        StringUtil.abH.put("&aring", '\u00e5');
        StringUtil.abH.put("&aelig", '\u00e6');
        StringUtil.abH.put("&ccedil", '\u00e7');
        StringUtil.abH.put("&egrave", '\u00e8');
        StringUtil.abH.put("&eacute", '\u00e9');
        StringUtil.abH.put("&ecirc", '\u00ea');
        StringUtil.abH.put("&euml", '\u00eb');
        StringUtil.abH.put("&igrave", '\u00ec');
        StringUtil.abH.put("&iacute", '\u00ed');
        StringUtil.abH.put("&icirc", '\u00ee');
        StringUtil.abH.put("&iuml", '\u00ef');
        StringUtil.abH.put("&eth", '\u00f0');
        StringUtil.abH.put("&ntilde", '\u00f1');
        StringUtil.abH.put("&ograve", '\u00f2');
        StringUtil.abH.put("&oacute", '\u00f3');
        StringUtil.abH.put("&ocirc", '\u00f4');
        StringUtil.abH.put("&otilde", '\u00f5');
        StringUtil.abH.put("&ouml", '\u00f6');
        StringUtil.abH.put("&divide", '\u00f7');
        StringUtil.abH.put("&oslash", '\u00f8');
        StringUtil.abH.put("&ugrave", '\u00f9');
        StringUtil.abH.put("&uacute", '\u00fa');
        StringUtil.abH.put("&ucirc", '\u00fb');
        StringUtil.abH.put("&uuml", '\u00fc');
        StringUtil.abH.put("&yacute", '\u00fd');
        StringUtil.abH.put("&thorn", '\u00fe');
        StringUtil.abH.put("&yuml", '\u00ff');
        StringUtil.abH.put("&fnof", '\u0192');
        StringUtil.abH.put("&Alpha", '\u0391');
        StringUtil.abH.put("&Beta", '\u0392');
        StringUtil.abH.put("&Gamma", '\u0393');
        StringUtil.abH.put("&Delta", '\u0394');
        StringUtil.abH.put("&Epsilon", '\u0395');
        StringUtil.abH.put("&Zeta", '\u0396');
        StringUtil.abH.put("&Eta", '\u0397');
        StringUtil.abH.put("&Theta", '\u0398');
        StringUtil.abH.put("&Iota", '\u0399');
        StringUtil.abH.put("&Kappa", '\u039a');
        StringUtil.abH.put("&Lambda", '\u039b');
        StringUtil.abH.put("&Mu", '\u039c');
        StringUtil.abH.put("&Nu", '\u039d');
        StringUtil.abH.put("&Xi", '\u039e');
        StringUtil.abH.put("&Omicron", '\u039f');
        StringUtil.abH.put("&Pi", '\u03a0');
        StringUtil.abH.put("&Rho", '\u03a1');
        StringUtil.abH.put("&Sigma", '\u03a3');
        StringUtil.abH.put("&Tau", '\u03a4');
        StringUtil.abH.put("&Upsilon", '\u03a5');
        StringUtil.abH.put("&Phi", '\u03a6');
        StringUtil.abH.put("&Chi", '\u03a7');
        StringUtil.abH.put("&Psi", '\u03a8');
        StringUtil.abH.put("&Omega", '\u03a9');
        StringUtil.abH.put("&alpha", '\u03b1');
        StringUtil.abH.put("&beta", '\u03b2');
        StringUtil.abH.put("&gamma", '\u03b3');
        StringUtil.abH.put("&delta", '\u03b4');
        StringUtil.abH.put("&epsilon", '\u03b5');
        StringUtil.abH.put("&zeta", '\u03b6');
        StringUtil.abH.put("&eta", '\u03b7');
        StringUtil.abH.put("&theta", '\u03b8');
        StringUtil.abH.put("&iota", '\u03b9');
        StringUtil.abH.put("&kappa", '\u03ba');
        StringUtil.abH.put("&lambda", '\u03bb');
        StringUtil.abH.put("&mu", '\u03bc');
        StringUtil.abH.put("&nu", '\u03bd');
        StringUtil.abH.put("&xi", '\u03be');
        StringUtil.abH.put("&omicron", '\u03bf');
        StringUtil.abH.put("&pi", '\u03c0');
        StringUtil.abH.put("&rho", '\u03c1');
        StringUtil.abH.put("&sigmaf", '\u03c2');
        StringUtil.abH.put("&sigma", '\u03c3');
        StringUtil.abH.put("&tau", '\u03c4');
        StringUtil.abH.put("&upsilon", '\u03c5');
        StringUtil.abH.put("&phi", '\u03c6');
        StringUtil.abH.put("&chi", '\u03c7');
        StringUtil.abH.put("&psi", '\u03c8');
        StringUtil.abH.put("&omega", '\u03c9');
        StringUtil.abH.put("&thetasym", '\u03d1');
        StringUtil.abH.put("&upsih", '\u03d2');
        StringUtil.abH.put("&piv", '\u03d6');
        StringUtil.abH.put("&bull", '\u2022');
        StringUtil.abH.put("&hellip", '\u2026');
        StringUtil.abH.put("&prime", '\u2032');
        StringUtil.abH.put("&Prime", '\u2033');
        StringUtil.abH.put("&oline", '\u203e');
        StringUtil.abH.put("&frasl", '\u2044');
        StringUtil.abH.put("&weierp", '\u2118');
        StringUtil.abH.put("&image", '\u2111');
        StringUtil.abH.put("&real", '\u211c');
        StringUtil.abH.put("&trade", '\u2122');
        StringUtil.abH.put("&alefsym", '\u2135');
        StringUtil.abH.put("&larr", '\u2190');
        StringUtil.abH.put("&uarr", '\u2191');
        StringUtil.abH.put("&rarr", '\u2192');
        StringUtil.abH.put("&darr", '\u2193');
        StringUtil.abH.put("&harr", '\u2194');
        StringUtil.abH.put("&crarr", '\u21b5');
        StringUtil.abH.put("&lArr", '\u21d0');
        StringUtil.abH.put("&uArr", '\u21d1');
        StringUtil.abH.put("&rArr", '\u21d2');
        StringUtil.abH.put("&dArr", '\u21d3');
        StringUtil.abH.put("&hArr", '\u21d4');
        StringUtil.abH.put("&forall", '\u2200');
        StringUtil.abH.put("&part", '\u2202');
        StringUtil.abH.put("&exist", '\u2203');
        StringUtil.abH.put("&empty", '\u2205');
        StringUtil.abH.put("&nabla", '\u2207');
        StringUtil.abH.put("&isin", '\u2208');
        StringUtil.abH.put("&notin", '\u2209');
        StringUtil.abH.put("&ni", '\u220b');
        StringUtil.abH.put("&prod", '\u220f');
        StringUtil.abH.put("&sum", '\u2211');
        StringUtil.abH.put("&minus", '\u2212');
        StringUtil.abH.put("&lowast", '\u2217');
        StringUtil.abH.put("&radic", '\u221a');
        StringUtil.abH.put("&prop", '\u221d');
        StringUtil.abH.put("&infin", '\u221e');
        StringUtil.abH.put("&ang", '\u2220');
        StringUtil.abH.put("&and", '\u2227');
        StringUtil.abH.put("&or", '\u2228');
        StringUtil.abH.put("&cap", '\u2229');
        StringUtil.abH.put("&cup", '\u222a');
        StringUtil.abH.put("&int", '\u222b');
        StringUtil.abH.put("&there4", '\u2234');
        StringUtil.abH.put("&sim", '\u223c');
        StringUtil.abH.put("&cong", '\u2245');
        StringUtil.abH.put("&asymp", '\u2248');
        StringUtil.abH.put("&ne", '\u2260');
        StringUtil.abH.put("&equiv", '\u2261');
        StringUtil.abH.put("&le", '\u2264');
        StringUtil.abH.put("&ge", '\u2265');
        StringUtil.abH.put("&sub", '\u2282');
        StringUtil.abH.put("&sup", '\u2283');
        StringUtil.abH.put("&nsub", '\u2284');
        StringUtil.abH.put("&sube", '\u2286');
        StringUtil.abH.put("&supe", '\u2287');
        StringUtil.abH.put("&oplus", '\u2295');
        StringUtil.abH.put("&otimes", '\u2297');
        StringUtil.abH.put("&perp", '\u22a5');
        StringUtil.abH.put("&sdot", '\u22c5');
        StringUtil.abH.put("&lceil", '\u2308');
        StringUtil.abH.put("&rceil", '\u2309');
        StringUtil.abH.put("&lfloor", '\u230a');
        StringUtil.abH.put("&rfloor", '\u230b');
        StringUtil.abH.put("&lang", '\u2329');
        StringUtil.abH.put("&rang", '\u232a');
        StringUtil.abH.put("&loz", '\u25ca');
        StringUtil.abH.put("&spades", '\u2660');
        StringUtil.abH.put("&clubs", '\u2663');
        StringUtil.abH.put("&hearts", '\u2665');
        StringUtil.abH.put("&diams", '\u2666');
        StringUtil.abH.put("&quot", '\"');
        StringUtil.abH.put("&amp", '&');
        StringUtil.abH.put("&lt", '<');
        StringUtil.abH.put("&gt", '>');
        StringUtil.abH.put("&OElig", '\u0152');
        StringUtil.abH.put("&oelig", '\u0153');
        StringUtil.abH.put("&Scaron", '\u0160');
        StringUtil.abH.put("&scaron", '\u0161');
        StringUtil.abH.put("&Yuml", '\u0178');
        StringUtil.abH.put("&circ", '\u02c6');
        StringUtil.abH.put("&tilde", '\u02dc');
        StringUtil.abH.put("&ensp", '\u2002');
        StringUtil.abH.put("&emsp", '\u2003');
        StringUtil.abH.put("&thinsp", '\u2009');
        StringUtil.abH.put("&zwnj", '\u200c');
        StringUtil.abH.put("&zwj", '\u200d');
        StringUtil.abH.put("&lrm", '\u200e');
        StringUtil.abH.put("&rlm", '\u200f');
        StringUtil.abH.put("&ndash", '\u2013');
        StringUtil.abH.put("&mdash", '\u2014');
        StringUtil.abH.put("&lsquo", '\u2018');
        StringUtil.abH.put("&rsquo", '\u2019');
        StringUtil.abH.put("&sbquo", '\u201a');
        StringUtil.abH.put("&ldquo", '\u201c');
        StringUtil.abH.put("&rdquo", '\u201d');
        StringUtil.abH.put("&bdquo", '\u201e');
        StringUtil.abH.put("&dagger", '\u2020');
        StringUtil.abH.put("&Dagger", '\u2021');
        StringUtil.abH.put("&permil", '\u2030');
        StringUtil.abH.put("&lsaquo", '\u2039');
        StringUtil.abH.put("&rsaquo", '\u203a');
        StringUtil.abH.put("&euro", '\u20ac');
        (cpz = new HashSet<Character>(12)).add('a');
        StringUtil.cpz.add('A');
        StringUtil.cpz.add('b');
        StringUtil.cpz.add('B');
        StringUtil.cpz.add('c');
        StringUtil.cpz.add('C');
        StringUtil.cpz.add('d');
        StringUtil.cpz.add('D');
        StringUtil.cpz.add('e');
        StringUtil.cpz.add('E');
        StringUtil.cpz.add('f');
        StringUtil.cpz.add('F');
        cpA = new b().a('<', "&lt;").a('>', "&gt;").VS();
        cpB = Pattern.compile("</?[a-zA-Z][^>]*>");
        cpC = j.x("\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\b\u000b\f\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f\ufffe\uffff");
        cpD = new b().a('\n', "\\n").a('\r', "\\r").a('\t', "\\t").a('\\', "\\\\").a('\"', "\\\"").a('&', "&amp;").a('<', "&lt;").a('>', "&gt;").a('\'', "\\'").VS();
        cpE = new b().a('(', "\\(").a(')', "\\)").a('|', "\\|").a('*', "\\*").a('+', "\\+").a('?', "\\?").a('.', "\\.").a('{', "\\{").a('}', "\\}").a('[', "\\[").a(']', "\\]").a('$', "\\$").a('^', "\\^").a('\\', "\\\\").VS();
        cpF = Pattern.compile("&#?[a-zA-Z0-9]{1,8};");
        final HashSet<Character.UnicodeBlock> set = new HashSet<Character.UnicodeBlock>();
        set.add(Character.UnicodeBlock.HANGUL_JAMO);
        set.add(Character.UnicodeBlock.CJK_RADICALS_SUPPLEMENT);
        set.add(Character.UnicodeBlock.KANGXI_RADICALS);
        set.add(Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION);
        set.add(Character.UnicodeBlock.HIRAGANA);
        set.add(Character.UnicodeBlock.KATAKANA);
        set.add(Character.UnicodeBlock.BOPOMOFO);
        set.add(Character.UnicodeBlock.HANGUL_COMPATIBILITY_JAMO);
        set.add(Character.UnicodeBlock.KANBUN);
        set.add(Character.UnicodeBlock.BOPOMOFO_EXTENDED);
        set.add(Character.UnicodeBlock.KATAKANA_PHONETIC_EXTENSIONS);
        set.add(Character.UnicodeBlock.ENCLOSED_CJK_LETTERS_AND_MONTHS);
        set.add(Character.UnicodeBlock.CJK_COMPATIBILITY);
        set.add(Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A);
        set.add(Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS);
        set.add(Character.UnicodeBlock.HANGUL_SYLLABLES);
        set.add(Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS);
        set.add(Character.UnicodeBlock.CJK_COMPATIBILITY_FORMS);
        set.add(Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS);
        set.add(Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B);
        set.add(Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT);
        cpG = Collections.unmodifiableSet((Set<?>)set);
        cpI = (cpH = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' });
        cpJ = Pattern.compile("(.*)\\{(\\d+),(\\d+)\\}(.*)");
        cpK = new J((byte)0).eW(173).ae(1536, 1539).eW(1757).eW(1807).ae(6068, 6069).ae(8203, 8207).ae(8234, 8238).ae(8288, 8292).ae(8298, 8303).eW(65279).ae(65529, 65531).ae(119155, 119162).eW(917505).ae(917536, 917631).eW(0).eW(10).eW(13).ae(8232, 8233).eW(133).eW(Character.codePointAt("'", 0)).eW(Character.codePointAt("\"", 0)).eW(Character.codePointAt("&", 0)).eW(Character.codePointAt("<", 0)).eW(Character.codePointAt(">", 0)).eW(Character.codePointAt("=", 0)).eW(Character.codePointAt("\\", 0)).cpM;
        cpL = new J((byte)0).eW(Character.codePointAt("\"", 0)).eW(Character.codePointAt("\\", 0)).ae(0, 31).cpM;
    }
    
    public static final String gH(final String s) {
        return gI(s);
    }
    
    private static String gI(final String p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: bipush          38
        //     3: invokevirtual   java/lang/String.indexOf:(I)I
        //     6: istore_1       
        //     7: iload_1        
        //     8: iconst_m1      
        //     9: if_icmpne       14
        //    12: aload_0        
        //    13: areturn        
        //    14: aload_0        
        //    15: invokevirtual   java/lang/String.toCharArray:()[C
        //    18: astore_2       
        //    19: aload_2        
        //    20: arraylength    
        //    21: newarray        C
        //    23: astore_3       
        //    24: aload_2        
        //    25: iconst_0       
        //    26: aload_3        
        //    27: iconst_0       
        //    28: iload_1        
        //    29: invokestatic    java/lang/System.arraycopy:(Ljava/lang/Object;ILjava/lang/Object;II)V
        //    32: iload_1        
        //    33: istore          4
        //    35: iload_1        
        //    36: istore          5
        //    38: iload           4
        //    40: aload_2        
        //    41: arraylength    
        //    42: if_icmpge       660
        //    45: aload_2        
        //    46: iload           4
        //    48: caload         
        //    49: bipush          38
        //    51: if_icmpeq       85
        //    54: iload           5
        //    56: iconst_1       
        //    57: iadd           
        //    58: istore          39
        //    60: iload           4
        //    62: iconst_1       
        //    63: iadd           
        //    64: istore          40
        //    66: aload_3        
        //    67: iload           5
        //    69: aload_2        
        //    70: iload           4
        //    72: caload         
        //    73: castore        
        //    74: iload           40
        //    76: istore          4
        //    78: iload           39
        //    80: istore          5
        //    82: goto            38
        //    85: iload           4
        //    87: iconst_1       
        //    88: iadd           
        //    89: istore          6
        //    91: aload_2        
        //    92: arraylength    
        //    93: istore          7
        //    95: iconst_0       
        //    96: istore          8
        //    98: iload           6
        //   100: iload           7
        //   102: if_icmpge       127
        //   105: aload_2        
        //   106: iload           6
        //   108: caload         
        //   109: istore          38
        //   111: iconst_0       
        //   112: istore          8
        //   114: iload           38
        //   116: bipush          35
        //   118: if_icmpne       127
        //   121: iinc            6, 1
        //   124: iconst_1       
        //   125: istore          8
        //   127: iload           6
        //   129: aload_2        
        //   130: arraylength    
        //   131: if_icmpge       712
        //   134: aload_2        
        //   135: iload           6
        //   137: caload         
        //   138: bipush          120
        //   140: if_icmpeq       152
        //   143: aload_2        
        //   144: iload           6
        //   146: caload         
        //   147: bipush          88
        //   149: if_icmpne       712
        //   152: iload           6
        //   154: iconst_1       
        //   155: iadd           
        //   156: istore          9
        //   158: iconst_1       
        //   159: istore          10
        //   161: iload           9
        //   163: aload_2        
        //   164: arraylength    
        //   165: if_icmpge       241
        //   168: aload_2        
        //   169: iload           9
        //   171: caload         
        //   172: istore          36
        //   174: iload           36
        //   176: invokestatic    java/lang/Character.isDigit:(C)Z
        //   179: istore          37
        //   181: iload           8
        //   183: ifeq            222
        //   186: iload           10
        //   188: ifne            196
        //   191: iload           37
        //   193: ifeq            241
        //   196: iload           10
        //   198: ifeq            222
        //   201: iload           37
        //   203: ifne            222
        //   206: getstatic       com/google/android/mail/common/base/StringUtil.cpz:Ljava/util/Set;
        //   209: iload           36
        //   211: invokestatic    java/lang/Character.valueOf:(C)Ljava/lang/Character;
        //   214: invokeinterface java/util/Set.contains:(Ljava/lang/Object;)Z
        //   219: ifeq            241
        //   222: iload           37
        //   224: ifne            235
        //   227: iload           36
        //   229: invokestatic    java/lang/Character.isLetter:(C)Z
        //   232: ifeq            241
        //   235: iinc            9, 1
        //   238: goto            161
        //   241: aload_2        
        //   242: arraylength    
        //   243: istore          11
        //   245: iconst_0       
        //   246: istore          12
        //   248: iload           9
        //   250: iload           11
        //   252: if_icmpge       699
        //   255: aload_2        
        //   256: iload           9
        //   258: caload         
        //   259: istore          15
        //   261: iconst_0       
        //   262: istore          12
        //   264: iload           15
        //   266: bipush          59
        //   268: if_icmpne       699
        //   271: iload           4
        //   273: iconst_2       
        //   274: iadd           
        //   275: aload_2        
        //   276: arraylength    
        //   277: if_icmpge       595
        //   280: aload_0        
        //   281: iload           4
        //   283: iconst_1       
        //   284: iadd           
        //   285: invokevirtual   java/lang/String.charAt:(I)C
        //   288: bipush          35
        //   290: if_icmpne       595
        //   293: lconst_0       
        //   294: lstore          19
        //   296: iload           4
        //   298: iconst_2       
        //   299: iadd           
        //   300: istore          21
        //   302: aload_0        
        //   303: iload           21
        //   305: invokevirtual   java/lang/String.charAt:(I)C
        //   308: istore          23
        //   310: iload           10
        //   312: ifeq            467
        //   315: new             Ljava/lang/String;
        //   318: dup            
        //   319: aload_2        
        //   320: iload           4
        //   322: iconst_3       
        //   323: iadd           
        //   324: bipush          -3
        //   326: iload           9
        //   328: iload           4
        //   330: isub           
        //   331: iadd           
        //   332: invokespecial   java/lang/String.<init>:([CII)V
        //   335: bipush          16
        //   337: invokestatic    java/lang/Long.parseLong:(Ljava/lang/String;I)J
        //   340: lstore          24
        //   342: lload           24
        //   344: lstore          19
        //   346: lload           19
        //   348: lconst_0       
        //   349: lcmp           
        //   350: ifle            362
        //   353: lload           19
        //   355: ldc2_w          55296
        //   358: lcmp           
        //   359: iflt            380
        //   362: lload           19
        //   364: ldc2_w          57343
        //   367: lcmp           
        //   368: ifle            507
        //   371: lload           19
        //   373: ldc2_w          65534
        //   376: lcmp           
        //   377: ifge            507
        //   380: iload           5
        //   382: iconst_1       
        //   383: iadd           
        //   384: istore          27
        //   386: lload           19
        //   388: l2i            
        //   389: i2c            
        //   390: istore          33
        //   392: aload_3        
        //   393: iload           5
        //   395: iload           33
        //   397: castore        
        //   398: iconst_1       
        //   399: istore          12
        //   401: iload           27
        //   403: istore          5
        //   405: iload           9
        //   407: aload_2        
        //   408: arraylength    
        //   409: if_icmpge       699
        //   412: aload_2        
        //   413: iload           9
        //   415: caload         
        //   416: bipush          59
        //   418: if_icmpne       699
        //   421: iload           9
        //   423: iconst_1       
        //   424: iadd           
        //   425: istore          13
        //   427: iload           12
        //   429: ifne            692
        //   432: aload_2        
        //   433: iload           4
        //   435: aload_3        
        //   436: iload           5
        //   438: iload           13
        //   440: iload           4
        //   442: isub           
        //   443: invokestatic    java/lang/System.arraycopy:(Ljava/lang/Object;ILjava/lang/Object;II)V
        //   446: iload           5
        //   448: iload           13
        //   450: iload           4
        //   452: isub           
        //   453: iadd           
        //   454: istore          14
        //   456: iload           14
        //   458: istore          5
        //   460: iload           13
        //   462: istore          4
        //   464: goto            38
        //   467: iload           23
        //   469: invokestatic    java/lang/Character.isDigit:(C)Z
        //   472: ifeq            346
        //   475: new             Ljava/lang/String;
        //   478: dup            
        //   479: aload_2        
        //   480: iload           4
        //   482: iconst_2       
        //   483: iadd           
        //   484: bipush          -2
        //   486: iload           9
        //   488: iload           4
        //   490: isub           
        //   491: iadd           
        //   492: invokespecial   java/lang/String.<init>:([CII)V
        //   495: invokestatic    java/lang/Long.parseLong:(Ljava/lang/String;)J
        //   498: lstore          34
        //   500: lload           34
        //   502: lstore          19
        //   504: goto            346
        //   507: lload           19
        //   509: ldc2_w          65536
        //   512: lcmp           
        //   513: iflt            706
        //   516: lload           19
        //   518: ldc2_w          1114112
        //   521: lcmp           
        //   522: ifge            706
        //   525: iload           5
        //   527: iconst_1       
        //   528: iadd           
        //   529: istore          27
        //   531: lload           19
        //   533: ldc2_w          65536
        //   536: lsub           
        //   537: lstore          28
        //   539: aload_3        
        //   540: iload           5
        //   542: ldc2_w          55296
        //   545: lload           28
        //   547: ldc2_w          1024
        //   550: ldiv           
        //   551: ladd           
        //   552: l2i            
        //   553: i2c            
        //   554: castore        
        //   555: iload           27
        //   557: iconst_1       
        //   558: iadd           
        //   559: istore          5
        //   561: lload           19
        //   563: ldc2_w          65536
        //   566: lsub           
        //   567: lstore          31
        //   569: aload_3        
        //   570: iload           27
        //   572: ldc2_w          56320
        //   575: lload           31
        //   577: ldc2_w          1024
        //   580: lrem           
        //   581: ladd           
        //   582: l2i            
        //   583: i2c            
        //   584: castore        
        //   585: iconst_1       
        //   586: istore          26
        //   588: iload           26
        //   590: istore          12
        //   592: goto            405
        //   595: new             Ljava/lang/String;
        //   598: dup            
        //   599: aload_2        
        //   600: iload           4
        //   602: iload           9
        //   604: iload           4
        //   606: isub           
        //   607: invokespecial   java/lang/String.<init>:([CII)V
        //   610: astore          16
        //   612: getstatic       com/google/android/mail/common/base/StringUtil.abH:Ljava/util/Map;
        //   615: aload           16
        //   617: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   622: checkcast       Ljava/lang/Character;
        //   625: astore          17
        //   627: iconst_0       
        //   628: istore          12
        //   630: aload           17
        //   632: ifnull          405
        //   635: iload           5
        //   637: iconst_1       
        //   638: iadd           
        //   639: istore          18
        //   641: aload_3        
        //   642: iload           5
        //   644: aload           17
        //   646: invokevirtual   java/lang/Character.charValue:()C
        //   649: castore        
        //   650: iconst_1       
        //   651: istore          12
        //   653: iload           18
        //   655: istore          5
        //   657: goto            405
        //   660: new             Ljava/lang/String;
        //   663: dup            
        //   664: aload_3        
        //   665: iconst_0       
        //   666: iload           5
        //   668: invokespecial   java/lang/String.<init>:([CII)V
        //   671: areturn        
        //   672: astore          22
        //   674: iconst_0       
        //   675: istore          12
        //   677: goto            405
        //   680: astore          30
        //   682: iload           27
        //   684: istore          5
        //   686: iconst_0       
        //   687: istore          12
        //   689: goto            405
        //   692: iload           5
        //   694: istore          14
        //   696: goto            456
        //   699: iload           9
        //   701: istore          13
        //   703: goto            427
        //   706: iconst_0       
        //   707: istore          26
        //   709: goto            588
        //   712: iload           6
        //   714: istore          9
        //   716: iconst_0       
        //   717: istore          10
        //   719: goto            161
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                             
        //  -----  -----  -----  -----  ---------------------------------
        //  302    310    672    680    Ljava/lang/NumberFormatException;
        //  315    342    672    680    Ljava/lang/NumberFormatException;
        //  392    398    680    692    Ljava/lang/NumberFormatException;
        //  467    500    672    680    Ljava/lang/NumberFormatException;
        //  539    555    680    692    Ljava/lang/NumberFormatException;
        //  569    585    672    680    Ljava/lang/NumberFormatException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0405:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
}
