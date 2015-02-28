package org.apache.james.mime4j.b;

import java.nio.charset.*;
import org.apache.james.mime4j.*;
import java.util.*;
import java.io.*;

public class a
{
    public static final Charset ISO_8859_1;
    public static final Charset US_ASCII;
    public static final Charset UTF_8;
    private static f cDh;
    private static b[] cGw;
    private static TreeSet<String> cGx;
    private static TreeSet<String> cGy;
    private static HashMap<String, b> cGz;
    
    static {
        a.cDh = new f();
        a.cGw = new b[] { new b("ISO8859_1", "ISO-8859-1", new String[] { "ISO_8859-1:1987", "iso-ir-100", "ISO_8859-1", "latin1", "l1", "IBM819", "CP819", "csISOLatin1", "8859_1", "819", "IBM-819", "ISO8859-1", "ISO_8859_1" }, (byte)0), new b("ISO8859_2", "ISO-8859-2", new String[] { "ISO_8859-2:1987", "iso-ir-101", "ISO_8859-2", "latin2", "l2", "csISOLatin2", "8859_2", "iso8859_2" }, (byte)0), new b("ISO8859_3", "ISO-8859-3", new String[] { "ISO_8859-3:1988", "iso-ir-109", "ISO_8859-3", "latin3", "l3", "csISOLatin3", "8859_3" }, (byte)0), new b("ISO8859_4", "ISO-8859-4", new String[] { "ISO_8859-4:1988", "iso-ir-110", "ISO_8859-4", "latin4", "l4", "csISOLatin4", "8859_4" }, (byte)0), new b("ISO8859_5", "ISO-8859-5", new String[] { "ISO_8859-5:1988", "iso-ir-144", "ISO_8859-5", "cyrillic", "csISOLatinCyrillic", "8859_5" }, (byte)0), new b("ISO8859_6", "ISO-8859-6", new String[] { "ISO_8859-6:1987", "iso-ir-127", "ISO_8859-6", "ECMA-114", "ASMO-708", "arabic", "csISOLatinArabic", "8859_6" }, (byte)0), new b("ISO8859_7", "ISO-8859-7", new String[] { "ISO_8859-7:1987", "iso-ir-126", "ISO_8859-7", "ELOT_928", "ECMA-118", "greek", "greek8", "csISOLatinGreek", "8859_7", "sun_eu_greek" }, (byte)0), new b("ISO8859_8", "ISO-8859-8", new String[] { "ISO_8859-8:1988", "iso-ir-138", "ISO_8859-8", "hebrew", "csISOLatinHebrew", "8859_8" }, (byte)0), new b("ISO8859_9", "ISO-8859-9", new String[] { "ISO_8859-9:1989", "iso-ir-148", "ISO_8859-9", "latin5", "l5", "csISOLatin5", "8859_9" }, (byte)0), new b("ISO8859_13", "ISO-8859-13", new String[0], (byte)0), new b("ISO8859_15", "ISO-8859-15", new String[] { "ISO_8859-15", "Latin-9", "8859_15", "csISOlatin9", "IBM923", "cp923", "923", "L9", "IBM-923", "ISO8859-15", "LATIN9", "LATIN0", "csISOlatin0", "ISO8859_15_FDIS" }, (byte)0), new b("KOI8_R", "KOI8-R", new String[] { "csKOI8R", "koi8" }, (byte)0), new b("ASCII", "US-ASCII", new String[] { "ANSI_X3.4-1968", "iso-ir-6", "ANSI_X3.4-1986", "ISO_646.irv:1991", "ISO646-US", "us", "IBM367", "cp367", "csASCII", "ascii7", "646", "iso_646.irv:1983" }, (byte)0), new b("UTF8", "UTF-8", new String[0], (byte)0), new b("UTF-16", "UTF-16", new String[] { "UTF_16" }, (byte)0), new b("UnicodeBigUnmarked", "UTF-16BE", new String[] { "X-UTF-16BE", "UTF_16BE", "ISO-10646-UCS-2" }, (byte)0), new b("UnicodeLittleUnmarked", "UTF-16LE", new String[] { "UTF_16LE", "X-UTF-16LE" }, (byte)0), new b("Big5", "Big5", new String[] { "csBig5", "CN-Big5", "BIG-FIVE", "BIGFIVE" }, (byte)0), new b("Big5_HKSCS", "Big5-HKSCS", new String[] { "big5hkscs" }, (byte)0), new b("EUC_JP", "EUC-JP", new String[] { "csEUCPkdFmtJapanese", "Extended_UNIX_Code_Packed_Format_for_Japanese", "eucjis", "x-eucjp", "eucjp", "x-euc-jp" }, (byte)0), new b("EUC_KR", "EUC-KR", new String[] { "csEUCKR", "ksc5601", "5601", "ksc5601_1987", "ksc_5601", "ksc5601-1987", "ks_c_5601-1987", "euckr" }, (byte)0), new b("GB18030", "GB18030", new String[] { "gb18030-2000" }, (byte)0), new b("EUC_CN", "GB2312", new String[] { "x-EUC-CN", "csGB2312", "euccn", "euc-cn", "gb2312-80", "gb2312-1980", "CN-GB", "CN-GB-ISOIR165" }, (byte)0), new b("GBK", "windows-936", new String[] { "CP936", "MS936", "ms_936", "x-mswin-936" }, (byte)0), new b("Cp037", "IBM037", new String[] { "ebcdic-cp-us", "ebcdic-cp-ca", "ebcdic-cp-wt", "ebcdic-cp-nl", "csIBM037" }, (byte)0), new b("Cp273", "IBM273", new String[] { "csIBM273" }, (byte)0), new b("Cp277", "IBM277", new String[] { "EBCDIC-CP-DK", "EBCDIC-CP-NO", "csIBM277" }, (byte)0), new b("Cp278", "IBM278", new String[] { "CP278", "ebcdic-cp-fi", "ebcdic-cp-se", "csIBM278" }, (byte)0), new b("Cp280", "IBM280", new String[] { "ebcdic-cp-it", "csIBM280" }, (byte)0), new b("Cp284", "IBM284", new String[] { "ebcdic-cp-es", "csIBM284" }, (byte)0), new b("Cp285", "IBM285", new String[] { "ebcdic-cp-gb", "csIBM285" }, (byte)0), new b("Cp297", "IBM297", new String[] { "ebcdic-cp-fr", "csIBM297" }, (byte)0), new b("Cp420", "IBM420", new String[] { "ebcdic-cp-ar1", "csIBM420" }, (byte)0), new b("Cp424", "IBM424", new String[] { "ebcdic-cp-he", "csIBM424" }, (byte)0), new b("Cp437", "IBM437", new String[] { "437", "csPC8CodePage437" }, (byte)0), new b("Cp500", "IBM500", new String[] { "ebcdic-cp-be", "ebcdic-cp-ch", "csIBM500" }, (byte)0), new b("Cp775", "IBM775", new String[] { "csPC775Baltic" }, (byte)0), new b("Cp838", "IBM-Thai", new String[0], (byte)0), new b("Cp850", "IBM850", new String[] { "850", "csPC850Multilingual" }, (byte)0), new b("Cp852", "IBM852", new String[] { "852", "csPCp852" }, (byte)0), new b("Cp855", "IBM855", new String[] { "855", "csIBM855" }, (byte)0), new b("Cp857", "IBM857", new String[] { "857", "csIBM857" }, (byte)0), new b("Cp858", "IBM00858", new String[] { "CCSID00858", "CP00858", "PC-Multilingual-850+euro" }, (byte)0), new b("Cp860", "IBM860", new String[] { "860", "csIBM860" }, (byte)0), new b("Cp861", "IBM861", new String[] { "861", "cp-is", "csIBM861" }, (byte)0), new b("Cp862", "IBM862", new String[] { "862", "csPC862LatinHebrew" }, (byte)0), new b("Cp863", "IBM863", new String[] { "863", "csIBM863" }, (byte)0), new b("Cp864", "IBM864", new String[] { "cp864", "csIBM864" }, (byte)0), new b("Cp865", "IBM865", new String[] { "865", "csIBM865" }, (byte)0), new b("Cp866", "IBM866", new String[] { "866", "csIBM866" }, (byte)0), new b("Cp868", "IBM868", new String[] { "cp-ar", "csIBM868" }, (byte)0), new b("Cp869", "IBM869", new String[] { "cp-gr", "csIBM869" }, (byte)0), new b("Cp870", "IBM870", new String[] { "ebcdic-cp-roece", "ebcdic-cp-yu", "csIBM870" }, (byte)0), new b("Cp871", "IBM871", new String[] { "ebcdic-cp-is", "csIBM871" }, (byte)0), new b("Cp918", "IBM918", new String[] { "ebcdic-cp-ar2", "csIBM918" }, (byte)0), new b("Cp1026", "IBM1026", new String[] { "csIBM1026" }, (byte)0), new b("Cp1047", "IBM1047", new String[] { "IBM-1047" }, (byte)0), new b("Cp1140", "IBM01140", new String[] { "CCSID01140", "CP01140", "ebcdic-us-37+euro" }, (byte)0), new b("Cp1141", "IBM01141", new String[] { "CCSID01141", "CP01141", "ebcdic-de-273+euro" }, (byte)0), new b("Cp1142", "IBM01142", new String[] { "CCSID01142", "CP01142", "ebcdic-dk-277+euro", "ebcdic-no-277+euro" }, (byte)0), new b("Cp1143", "IBM01143", new String[] { "CCSID01143", "CP01143", "ebcdic-fi-278+euro", "ebcdic-se-278+euro" }, (byte)0), new b("Cp1144", "IBM01144", new String[] { "CCSID01144", "CP01144", "ebcdic-it-280+euro" }, (byte)0), new b("Cp1145", "IBM01145", new String[] { "CCSID01145", "CP01145", "ebcdic-es-284+euro" }, (byte)0), new b("Cp1146", "IBM01146", new String[] { "CCSID01146", "CP01146", "ebcdic-gb-285+euro" }, (byte)0), new b("Cp1147", "IBM01147", new String[] { "CCSID01147", "CP01147", "ebcdic-fr-297+euro" }, (byte)0), new b("Cp1148", "IBM01148", new String[] { "CCSID01148", "CP01148", "ebcdic-international-500+euro" }, (byte)0), new b("Cp1149", "IBM01149", new String[] { "CCSID01149", "CP01149", "ebcdic-is-871+euro" }, (byte)0), new b("Cp1250", "windows-1250", new String[0], (byte)0), new b("Cp1251", "windows-1251", new String[0], (byte)0), new b("Cp1252", "windows-1252", new String[0], (byte)0), new b("Cp1253", "windows-1253", new String[0], (byte)0), new b("Cp1254", "windows-1254", new String[0], (byte)0), new b("Cp1255", "windows-1255", new String[0], (byte)0), new b("Cp1256", "windows-1256", new String[0], (byte)0), new b("Cp1257", "windows-1257", new String[0], (byte)0), new b("Cp1258", "windows-1258", new String[0], (byte)0), new b("ISO2022CN", "ISO-2022-CN", new String[0], (byte)0), new b("ISO2022JP", "ISO-2022-JP", new String[] { "csISO2022JP", "JIS", "jis_encoding", "csjisencoding" }, (byte)0), new b("ISO2022KR", "ISO-2022-KR", new String[] { "csISO2022KR" }, (byte)0), new b("JIS_X0201", "JIS_X0201", new String[] { "X0201", "JIS0201", "csHalfWidthKatakana" }, (byte)0), new b("JIS_X0212-1990", "JIS_X0212-1990", new String[] { "iso-ir-159", "x0212", "JIS0212", "csISO159JISX02121990" }, (byte)0), new b("JIS_C6626-1983", "JIS_C6626-1983", new String[] { "x-JIS0208", "JIS0208", "csISO87JISX0208", "x0208", "JIS_X0208-1983", "iso-ir-87" }, (byte)0), new b("SJIS", "Shift_JIS", new String[] { "MS_Kanji", "csShiftJIS", "shift-jis", "x-sjis", "pck" }, (byte)0), new b("TIS620", "TIS-620", new String[0], (byte)0), new b("MS932", "Windows-31J", new String[] { "windows-932", "csWindows31J", "x-ms-cp932" }, (byte)0), new b("EUC_TW", "EUC-TW", new String[] { "x-EUC-TW", "cns11643", "euctw" }, (byte)0), new b("x-Johab", "johab", new String[] { "johab", "cp1361", "ms1361", "ksc5601-1992", "ksc5601_1992" }, (byte)0), new b("MS950_HKSCS", "", new String[0], (byte)0), new b("MS874", "windows-874", new String[] { "cp874" }, (byte)0), new b("MS949", "windows-949", new String[] { "windows949", "ms_949", "x-windows-949" }, (byte)0), new b("MS950", "windows-950", new String[] { "x-windows-950" }, (byte)0), new b("Cp737", null, new String[0], (byte)0), new b("Cp856", null, new String[0], (byte)0), new b("Cp875", null, new String[0], (byte)0), new b("Cp921", null, new String[0], (byte)0), new b("Cp922", null, new String[0], (byte)0), new b("Cp930", null, new String[0], (byte)0), new b("Cp933", null, new String[0], (byte)0), new b("Cp935", null, new String[0], (byte)0), new b("Cp937", null, new String[0], (byte)0), new b("Cp939", null, new String[0], (byte)0), new b("Cp942", null, new String[0], (byte)0), new b("Cp942C", null, new String[0], (byte)0), new b("Cp943", null, new String[0], (byte)0), new b("Cp943C", null, new String[0], (byte)0), new b("Cp948", null, new String[0], (byte)0), new b("Cp949", null, new String[0], (byte)0), new b("Cp949C", null, new String[0], (byte)0), new b("Cp950", null, new String[0], (byte)0), new b("Cp964", null, new String[0], (byte)0), new b("Cp970", null, new String[0], (byte)0), new b("Cp1006", null, new String[0], (byte)0), new b("Cp1025", null, new String[0], (byte)0), new b("Cp1046", null, new String[0], (byte)0), new b("Cp1097", null, new String[0], (byte)0), new b("Cp1098", null, new String[0], (byte)0), new b("Cp1112", null, new String[0], (byte)0), new b("Cp1122", null, new String[0], (byte)0), new b("Cp1123", null, new String[0], (byte)0), new b("Cp1124", null, new String[0], (byte)0), new b("Cp1381", null, new String[0], (byte)0), new b("Cp1383", null, new String[0], (byte)0), new b("Cp33722", null, new String[0], (byte)0), new b("Big5_Solaris", null, new String[0], (byte)0), new b("EUC_JP_LINUX", null, new String[0], (byte)0), new b("EUC_JP_Solaris", null, new String[0], (byte)0), new b("ISCII91", null, new String[] { "x-ISCII91", "iscii" }, (byte)0), new b("ISO2022_CN_CNS", null, new String[0], (byte)0), new b("ISO2022_CN_GB", null, new String[0], (byte)0), new b("x-iso-8859-11", null, new String[0], (byte)0), new b("JISAutoDetect", null, new String[0], (byte)0), new b("MacArabic", null, new String[0], (byte)0), new b("MacCentralEurope", null, new String[0], (byte)0), new b("MacCroatian", null, new String[0], (byte)0), new b("MacCyrillic", null, new String[0], (byte)0), new b("MacDingbat", null, new String[0], (byte)0), new b("MacGreek", "MacGreek", new String[0], (byte)0), new b("MacHebrew", null, new String[0], (byte)0), new b("MacIceland", null, new String[0], (byte)0), new b("MacRoman", "MacRoman", new String[] { "Macintosh", "MAC", "csMacintosh" }, (byte)0), new b("MacRomania", null, new String[0], (byte)0), new b("MacSymbol", null, new String[0], (byte)0), new b("MacThai", null, new String[0], (byte)0), new b("MacTurkish", null, new String[0], (byte)0), new b("MacUkraine", null, new String[0], (byte)0), new b("UnicodeBig", null, new String[0], (byte)0), new b("UnicodeLittle", null, new String[0], (byte)0) };
        a.cGx = null;
        a.cGy = null;
        a.cGz = null;
        a.cGx = new TreeSet<String>();
        a.cGy = new TreeSet<String>();
        final byte[] array = { 100, 117, 109, 109, 121 };
        int n = 0;
    Label_4921_Outer:
        while (true) {
            Label_4963: {
                if (n >= a.cGw.length) {
                    break Label_4963;
                }
            Block_6_Outer:
                while (true) {
                    try {
                        new String(array, a.cGw[n].cGA);
                        a.cGx.add(a.cGw[n].cGA.toLowerCase(Locale.US));
                        try {
                            "dummy".getBytes(a.cGw[n].cGA);
                            a.cGy.add(a.cGw[n].cGA.toLowerCase(Locale.US));
                            ++n;
                            continue Label_4921_Outer;
                            // iftrue(Label_5095:, n2 >= a.cGw.length)
                            // iftrue(Label_5089:, n3 >= b.c(b).length)
                            // iftrue(Label_5038:, b.b(b) == null)
                            // iftrue(Label_5089:, b.c(b) == null)
                            while (true) {
                                b b = null;
                                int n2;
                                int n3;
                                Label_5038:Label_4975_Outer:
                                while (true) {
                                    a.cGz.put(b.cGB.toLowerCase(Locale.US), b);
                                    break Label_5038;
                                    Block_4: {
                                        while (true) {
                                            break Block_4;
                                            a.cGz = new HashMap<String, b>();
                                            n2 = 0;
                                            continue Block_6_Outer;
                                            Label_5089: {
                                                ++n2;
                                            }
                                            continue Block_6_Outer;
                                        }
                                        n3 = 0;
                                        while (true) {
                                            Label_5049: {
                                                break Label_5049;
                                                a.cGz.put(b.cGC[n3].toLowerCase(Locale.US), b);
                                                ++n3;
                                            }
                                            continue;
                                        }
                                    }
                                    b = a.cGw[n2];
                                    a.cGz.put(b.cGA.toLowerCase(Locale.US), b);
                                    continue Label_4975_Outer;
                                }
                                continue;
                            }
                            Label_5095: {
                                final f cDh = a.cDh;
                            }
                            f.isDebugEnabled();
                            US_ASCII = Charset.forName("US-ASCII");
                            ISO_8859_1 = Charset.forName("ISO-8859-1");
                            UTF_8 = Charset.forName("UTF-8");
                        }
                        catch (UnsupportedEncodingException ex) {}
                        catch (UnsupportedOperationException ex2) {}
                    }
                    catch (UnsupportedEncodingException ex3) {
                        continue;
                    }
                    catch (UnsupportedOperationException ex4) {
                        continue;
                    }
                    break;
                }
            }
        }
    }
    
    public static boolean ib(final String s) {
        if (s == null) {
            throw new IllegalArgumentException("String may not be null");
        }
        for (int length = s.length(), i = 0; i < length; ++i) {
            if (!isWhitespace(s.charAt(i))) {
                return false;
            }
        }
        return true;
    }
    
    public static boolean ic(final String s) {
        return a.cGx.contains(s.toLowerCase(Locale.US));
    }
    
    public static String id(final String s) {
        final b b = a.cGz.get(s.toLowerCase(Locale.US));
        if (b != null) {
            return b.cGB;
        }
        return null;
    }
    
    public static String ie(final String s) {
        final b b = a.cGz.get(s.toLowerCase(Locale.US));
        if (b != null) {
            return b.cGA;
        }
        return null;
    }
    
    public static boolean isWhitespace(final char c) {
        return c == ' ' || c == '\t' || c == '\r' || c == '\n';
    }
}
