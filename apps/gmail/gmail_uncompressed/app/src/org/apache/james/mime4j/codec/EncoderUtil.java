package org.apache.james.mime4j.codec;

import java.util.*;
import java.nio.charset.*;
import java.nio.*;
import org.apache.james.mime4j.b.*;

public final class EncoderUtil
{
    static final byte[] cDH;
    private static final BitSet cDI;
    private static final BitSet cDJ;
    private static final BitSet cDK;
    private static final BitSet cDL;
    
    static {
        cDH = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
        cDI = hQ("=_?");
        cDJ = hQ("=_?\"#$%&'(),.:;<>@[\\]^`{|}~");
        cDK = hQ("()<>@,;:\\\"/[]?=");
        cDL = hQ("()<>@.,;:\\\"[]");
    }
    
    private static String a(final String s, final String s2, final int n, final Charset charset, final byte[] array) {
        if (2 + (4 * ((2 + array.length) / 3) + s.length()) <= 75 - n) {
            return s + q(array) + "?=";
        }
        final int offsetByCodePoints = s2.offsetByCodePoints(s2.length() / 2, -1);
        final String substring = s2.substring(0, offsetByCodePoints);
        final String a = a(s, substring, n, charset, a(substring, charset));
        final String substring2 = s2.substring(offsetByCodePoints);
        return a + " " + a(s, substring2, 0, charset, a(substring2, charset));
    }
    
    private static String a(final String s, final String s2, final EncoderUtil$Usage encoderUtil$Usage, final int n, final Charset charset, final byte[] array) {
        BitSet set;
        if (encoderUtil$Usage == EncoderUtil$Usage.cDP) {
            set = EncoderUtil.cDI;
        }
        else {
            set = EncoderUtil.cDJ;
        }
        int i = 0;
        int n2 = 0;
        while (i < array.length) {
            final int n3 = 0xFF & array[i];
            if (n3 != 32 && !set.get(n3)) {
                n2 += 3;
            }
            else {
                ++n2;
            }
            ++i;
        }
        if (2 + (n2 + s.length()) <= 75 - n) {
            return s + a(array, encoderUtil$Usage) + "?=";
        }
        final int offsetByCodePoints = s2.offsetByCodePoints(s2.length() / 2, -1);
        final String substring = s2.substring(0, offsetByCodePoints);
        final String a = a(s, substring, encoderUtil$Usage, n, charset, a(substring, charset));
        final String substring2 = s2.substring(offsetByCodePoints);
        return a + " " + a(s, substring2, encoderUtil$Usage, 0, charset, a(substring2, charset));
    }
    
    public static String a(String b, final EncoderUtil$Usage encoderUtil$Usage, final int n) {
        if (s(b, n)) {
            b = b(b, encoderUtil$Usage, n);
        }
        return b;
    }
    
    private static String a(final byte[] array, final EncoderUtil$Usage encoderUtil$Usage) {
        BitSet set;
        if (encoderUtil$Usage == EncoderUtil$Usage.cDP) {
            set = EncoderUtil.cDI;
        }
        else {
            set = EncoderUtil.cDJ;
        }
        final StringBuilder sb = new StringBuilder();
        for (int length = array.length, i = 0; i < length; ++i) {
            final int n = 0xFF & array[i];
            if (n == 32) {
                sb.append('_');
            }
            else if (!set.get(n)) {
                sb.append('=');
                sb.append(fJ(n >>> 4));
                sb.append(fJ(n & 0xF));
            }
            else {
                sb.append((char)n);
            }
        }
        return sb.toString();
    }
    
    private static byte[] a(final String s, final Charset charset) {
        final ByteBuffer encode = charset.encode(s);
        final byte[] array = new byte[encode.limit()];
        encode.get(array);
        return array;
    }
    
    private static String b(final String s, final EncoderUtil$Usage encoderUtil$Usage, final int n) {
        if (s == null) {
            throw new IllegalArgumentException();
        }
        if (n < 0 || n > 50) {
            throw new IllegalArgumentException();
        }
        final Charset hs = hS(s);
        final String id = a.id(hs.name());
        if (id == null) {
            throw new IllegalArgumentException("Unsupported charset");
        }
        final byte[] a = a(s, hs);
        if (b(a, encoderUtil$Usage) == EncoderUtil$Encoding.cDM) {
            return a("=?" + id + "?B?", s, n, hs, a);
        }
        return a("=?" + id + "?Q?", s, encoderUtil$Usage, n, hs, a);
    }
    
    private static EncoderUtil$Encoding b(final byte[] array, final EncoderUtil$Usage encoderUtil$Usage) {
        int i = 0;
        if (array.length == 0) {
            return EncoderUtil$Encoding.cDN;
        }
        BitSet set;
        if (encoderUtil$Usage == EncoderUtil$Usage.cDP) {
            set = EncoderUtil.cDI;
        }
        else {
            set = EncoderUtil.cDJ;
        }
        int n = 0;
        while (i < array.length) {
            final int n2 = 0xFF & array[i];
            if (n2 != 32 && !set.get(n2)) {
                ++n;
            }
            ++i;
        }
        if (n * 100 / array.length > 30) {
            return EncoderUtil$Encoding.cDM;
        }
        return EncoderUtil$Encoding.cDN;
    }
    
    private static char fJ(final int n) {
        if (n < 10) {
            return (char)(n + 48);
        }
        return (char)(65 + (n - 10));
    }
    
    private static BitSet hQ(final String s) {
        final BitSet set = new BitSet(128);
        for (int i = 33; i < 127; i = (char)(i + 1)) {
            if (s.indexOf(i) == -1) {
                set.set(i);
            }
        }
        return set;
    }
    
    public static String hR(final String s) {
        final int length = s.length();
        int i = 0;
        boolean b = false;
        while (i < length) {
            final char char1 = s.charAt(i);
            if (EncoderUtil.cDL.get(char1)) {
                b = true;
            }
            else if (!a.isWhitespace(char1)) {
                b = false;
                break;
            }
            ++i;
        }
        if (b) {
            return s;
        }
        if (s(s, 0)) {
            return b(s, EncoderUtil$Usage.cDQ, 0);
        }
        return "\"" + s.replaceAll("[\\\\\"]", "\\\\$0") + "\"";
    }
    
    private static Charset hS(final String s) {
        boolean b = true;
        for (int length = s.length(), i = 0; i < length; ++i) {
            final char char1 = s.charAt(i);
            if (char1 > '\u00ff') {
                return a.UTF_8;
            }
            if (char1 > '\u007f') {
                b = false;
            }
        }
        if (b) {
            return a.US_ASCII;
        }
        return a.ISO_8859_1;
    }
    
    private static String q(final byte[] array) {
        final StringBuilder sb = new StringBuilder();
        int i;
        int length;
        for (i = 0, length = array.length; i < length - 2; i += 3) {
            final int n = (0xFF & array[i]) << 16 | (0xFF & array[i + 1]) << 8 | (0xFF & array[i + 2]);
            sb.append((char)EncoderUtil.cDH[0x3F & n >> 18]);
            sb.append((char)EncoderUtil.cDH[0x3F & n >> 12]);
            sb.append((char)EncoderUtil.cDH[0x3F & n >> 6]);
            sb.append((char)EncoderUtil.cDH[n & 0x3F]);
        }
        if (i == length - 2) {
            final int n2 = (0xFF & array[i]) << 16 | (0xFF & array[i + 1]) << 8;
            sb.append((char)EncoderUtil.cDH[0x3F & n2 >> 18]);
            sb.append((char)EncoderUtil.cDH[0x3F & n2 >> 12]);
            sb.append((char)EncoderUtil.cDH[0x3F & n2 >> 6]);
            sb.append('=');
        }
        else if (i == length - 1) {
            final int n3 = (0xFF & array[i]) << 16;
            sb.append((char)EncoderUtil.cDH[0x3F & n3 >> 18]);
            sb.append((char)EncoderUtil.cDH[0x3F & n3 >> 12]);
            sb.append('=');
            sb.append('=');
        }
        return sb.toString();
    }
    
    private static boolean s(final String s, int n) {
        if (s == null) {
            throw new IllegalArgumentException();
        }
        if (n < 0 || n > 50) {
            throw new IllegalArgumentException();
        }
        int n2 = 0;
        boolean b;
        while (true) {
            final int length = s.length();
            b = false;
            if (n2 >= length) {
                break;
            }
            final char char1 = s.charAt(n2);
            if (char1 == '\t' || char1 == ' ') {
                n = 0;
            }
            else {
                if (++n > 77) {
                    b = true;
                    break;
                }
                if (char1 < ' ' || char1 >= '\u007f') {
                    return true;
                }
            }
            ++n2;
        }
        return b;
    }
}
