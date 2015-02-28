package org.owasp.html;

import java.io.*;

final class u
{
    private static final char[] cIb;
    static final String[] cIc;
    private static boolean[] cId;
    
    static {
        cIb = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };
        cIc = new String[97];
        for (int i = 0; i < 32; ++i) {
            if (i != 9 && i != 10 && i != 13) {
                u.cIc[i] = "";
            }
        }
        u.cIc[34] = "&#34;";
        u.cIc[38] = "&amp;";
        u.cIc[39] = "&#39;";
        u.cIc[43] = "&#43;";
        u.cIc[60] = "&lt;";
        u.cIc[61] = "&#61;";
        u.cIc[62] = "&gt;";
        u.cIc[64] = "&#64;";
        u.cIc[96] = "&#96;";
        u.cId = new boolean[32];
        for (int j = 0; j < u.cId.length; ++j) {
            u.cId[j] = (j != 9 && j != 10 && j != 13);
        }
    }
    
    private static void a(final int n, final Appendable appendable) {
        if (n < 100) {
            appendable.append("&#");
            if (n < 10) {
                appendable.append((char)(n + 48));
            }
            else {
                appendable.append((char)(48 + n / 10));
                appendable.append((char)(48 + n % 10));
            }
            appendable.append(";");
            return;
        }
        int n2;
        if (n < 4096) {
            if (n < 256) {
                n2 = 2;
            }
            else {
                n2 = 3;
            }
        }
        else if (n < 65536) {
            n2 = 4;
        }
        else if (n < 1048576) {
            n2 = 5;
        }
        else {
            n2 = 6;
        }
        appendable.append("&#x");
        while (--n2 >= 0) {
            appendable.append(u.cIb[0xF & n >>> (n2 << 2)]);
        }
        appendable.append(";");
    }
    
    static void a(final String s, final Appendable appendable) {
        int i = 0;
        final int length = s.length();
        int n = 0;
        while (i < length) {
            final char char1 = s.charAt(i);
            int n3 = 0;
            int n4 = 0;
            Label_0078: {
                if (char1 < u.cIc.length) {
                    final String s2 = u.cIc[char1];
                    if (s2 != null) {
                        appendable.append(s, n, i).append(s2);
                        n = i + 1;
                    }
                    final int n2 = i;
                    n3 = n;
                    n4 = n2;
                }
                else {
                    if ('\ud800' <= char1) {
                        if (char1 <= '\udfff') {
                            if (i + 1 < length) {
                                final char char2 = s.charAt(i + 1);
                                if (Character.isSurrogatePair(char1, char2)) {
                                    final int codePoint = Character.toCodePoint(char1, char2);
                                    appendable.append(s, n, i);
                                    a(codePoint, appendable);
                                    n4 = i + 1;
                                    n3 = n4 + 1;
                                    break Label_0078;
                                }
                            }
                            appendable.append(s, n, i);
                            final int n5 = i + 1;
                            final int n6 = i;
                            n3 = n5;
                            n4 = n6;
                            break Label_0078;
                        }
                        if ('\uff00' <= char1) {
                            appendable.append(s, n, i);
                            n = i + 1;
                            if ((char1 & '\ufffe') != '\ufffe') {
                                a(char1, appendable);
                            }
                        }
                    }
                    final int n7 = i;
                    n3 = n;
                    n4 = n7;
                }
            }
            final int n8 = n4 + 1;
            n = n3;
            i = n8;
        }
        appendable.append(s, n, length);
    }
    
    private static void b(final StringBuilder sb, final int n) {
        final int length = sb.length();
        int i = n;
        int length2 = n;
    Label_0038_Outer:
        while (i < length) {
            final char char1 = sb.charAt(i);
            while (true) {
                Label_0128: {
                    if (char1 < ' ') {
                        if (!u.cId[char1]) {
                            break Label_0128;
                        }
                    }
                    else {
                        if ('\ud800' > char1) {
                            break Label_0128;
                        }
                        if (char1 <= '\udfff') {
                            if (i + 1 < length) {
                                final char char2 = sb.charAt(i + 1);
                                if (Character.isSurrogatePair(char1, char2)) {
                                    final int n2 = length2 + 1;
                                    sb.setCharAt(length2, char1);
                                    length2 = n2 + 1;
                                    sb.setCharAt(n2, char2);
                                    ++i;
                                }
                            }
                        }
                        else if ((char1 & '\ufffe') != '\ufffe') {
                            break Label_0128;
                        }
                    }
                    ++i;
                    continue Label_0038_Outer;
                }
                final int n3 = length2 + 1;
                sb.setCharAt(length2, char1);
                length2 = n3;
                continue;
            }
        }
        sb.setLength(length2);
    }
    
    static void e(final StringBuilder sb) {
        b(sb, 0);
    }
    
    static String iq(final String s) {
        final int index = s.indexOf(38);
        int n = is(s);
        if ((index & n) < 0) {
            return s;
        }
        final int length = s.length();
        final StringBuilder sb = new StringBuilder(length);
        int n2 = 0;
        int n3;
        for (int i = index; i >= 0; i = s.indexOf(38, n3), n2 = n3) {
            final long k = D.k(s, i, length);
            n3 = (int)(k >>> 32);
            sb.append(s, n2, i).appendCodePoint((int)k);
        }
        sb.append(s, n2, length);
        if (index >= 0) {
            if (n < 0) {
                n = index;
            }
            else {
                n = Math.min(index, n);
            }
        }
        b(sb, n);
        return sb.toString();
    }
    
    static String ir(final String s) {
        final int is = is(s);
        if (is < 0) {
            return s;
        }
        final StringBuilder sb = new StringBuilder(s);
        b(sb, is);
        return sb.toString();
    }
    
    private static int is(final String s) {
        for (int length = s.length(), i = 0; i < length; ++i) {
            final char char1 = s.charAt(i);
            if (char1 < ' ') {
                if (u.cId[char1]) {
                    return i;
                }
            }
            else if ('\ud800' <= char1) {
                if (char1 <= '\udfff') {
                    if (i + 1 >= length || !Character.isSurrogatePair(char1, s.charAt(i + 1))) {
                        return i;
                    }
                    ++i;
                }
                else if ((char1 & '\ufffe') == '\ufffe') {
                    return i;
                }
            }
        }
        return -1;
    }
}
