package org.apache.james.mime4j.a;

import org.apache.james.mime4j.*;
import java.io.*;

public class c
{
    private static f cDh;
    
    static {
        c.cDh = new f();
    }
    
    private static String aB(final String s, final String s2) {
        final StringBuffer sb = new StringBuffer();
        for (int i = 0; i < s.length(); ++i) {
            final char char1 = s.charAt(i);
            if (char1 == '_') {
                sb.append("=20");
            }
            else {
                sb.append(char1);
            }
        }
        return new String(hT(sb.toString()), s2);
    }
    
    private static byte[] hT(final String s) {
        final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            final d d = new d(new ByteArrayInputStream(s.getBytes("US-ASCII")));
            while (true) {
                final int read = d.read();
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(read);
            }
        }
        catch (IOException ex) {
            final f cDh = c.cDh;
            f.error(ex);
        }
        return byteArrayOutputStream.toByteArray();
    }
    
    private static byte[] hU(final String s) {
        final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            final a a = new a(new ByteArrayInputStream(s.getBytes("US-ASCII")));
            while (true) {
                final int read = a.read();
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(read);
            }
        }
        catch (IOException ex) {
            final f cDh = c.cDh;
            f.error(ex);
        }
        return byteArrayOutputStream.toByteArray();
    }
    
    public static String hV(final String s) {
        if (s.indexOf("=?") != -1) {
            final StringBuilder sb = new StringBuilder();
            int n = 0;
            int n2 = 0;
            while (true) {
                final int index = s.indexOf("=?", n2);
                if (index == -1) {
                    break;
                }
                final int index2 = s.indexOf(63, index + 2);
                if (index2 == -1) {
                    break;
                }
                final int index3 = s.indexOf(63, index2 + 1);
                if (index3 == -1) {
                    break;
                }
                final int index4 = s.indexOf("?=", index3 + 1);
                if (index4 == -1) {
                    break;
                }
                final int n3 = index4 + 2;
                final String substring = s.substring(n2, index);
                final String j = j(s, index, n3);
                if (j == null) {
                    sb.append(substring);
                    sb.append(s.substring(index, n3));
                }
                else {
                    if (n == 0 || !org.apache.james.mime4j.b.a.ib(substring)) {
                        sb.append(substring);
                    }
                    sb.append(j);
                }
                if (j != null) {
                    n = 1;
                }
                else {
                    n = 0;
                }
                n2 = n3;
            }
            if (n2 != 0) {
                sb.append(s.substring(n2));
                return sb.toString();
            }
        }
        return s;
    }
    
    private static String j(final String s, final int n, final int n2) {
        final int index = s.indexOf(63, n + 2);
        if (index != -1 && index != n2 - 2) {
            final int index2 = s.indexOf(63, index + 1);
            if (index2 != -1 && index2 != n2 - 2) {
                final String substring = s.substring(n + 2, index);
                final String substring2 = s.substring(index + 1, index2);
                final String substring3 = s.substring(index2 + 1, n2 - 2);
                final String ie = org.apache.james.mime4j.b.a.ie(substring);
                if (ie == null) {
                    final f cDh = c.cDh;
                    f.isWarnEnabled();
                    final f cDh2 = c.cDh;
                    f.warn("MIME charset '" + substring + "' in encoded word '" + s.substring(n, n2) + "' doesn't have a corresponding Java charset");
                    return null;
                }
                if (!org.apache.james.mime4j.b.a.ic(ie)) {
                    final f cDh3 = c.cDh;
                    f.isWarnEnabled();
                    final f cDh4 = c.cDh;
                    f.warn("Current JDK doesn't support decoding of charset '" + ie + "' (MIME charset '" + substring + "' in encoded word '" + s.substring(n, n2) + "')");
                    return null;
                }
                if (substring3.length() == 0) {
                    final f cDh5 = c.cDh;
                    f.isWarnEnabled();
                    final f cDh6 = c.cDh;
                    f.warn("Missing encoded text in encoded word: '" + s.substring(n, n2) + "'");
                    return null;
                }
                try {
                    if (substring2.equalsIgnoreCase("Q")) {
                        return aB(substring3, ie);
                    }
                    if (substring2.equalsIgnoreCase("B")) {
                        return new String(hU(substring3), ie);
                    }
                    final f cDh7 = c.cDh;
                    f.isWarnEnabled();
                    final f cDh8 = c.cDh;
                    f.warn("Warning: Unknown encoding in encoded word '" + s.substring(n, n2) + "'");
                    return null;
                }
                catch (UnsupportedEncodingException ex) {
                    final f cDh9 = c.cDh;
                    f.isWarnEnabled();
                    final f cDh10 = c.cDh;
                    f.warn("Unsupported encoding in encoded word '" + s.substring(n, n2) + "'", ex);
                    return null;
                }
                catch (RuntimeException ex2) {
                    final f cDh11 = c.cDh;
                    f.isWarnEnabled();
                    final f cDh12 = c.cDh;
                    f.warn("Could not decode encoded word '" + s.substring(n, n2) + "'", ex2);
                    return null;
                }
            }
        }
        return null;
    }
}
