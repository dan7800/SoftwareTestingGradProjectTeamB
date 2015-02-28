package com.android.emailcommon.a;

import org.apache.james.mime4j.codec.*;
import java.util.*;
import android.text.*;
import com.android.emailcommon.mail.*;
import java.util.regex.*;
import org.apache.james.mime4j.a.*;
import java.io.*;
import android.util.*;

public final class i
{
    private static final Pattern Ww;
    
    static {
        Ww = Pattern.compile("\r|\n");
    }
    
    public static InputStream a(InputStream inputStream, final String s) {
        if (s != null) {
            final String r = r(s, null);
            if ("quoted-printable".equalsIgnoreCase(r)) {
                inputStream = new d(inputStream);
            }
            else if ("base64".equalsIgnoreCase(r)) {
                return (InputStream)new Base64InputStream(inputStream, 0);
            }
        }
        return inputStream;
    }
    
    public static String a(final String s, final int n) {
        return b(EncoderUtil.a(s, EncoderUtil$Usage.cDP, n), n);
    }
    
    public static void a(j j, final ArrayList<j> list, final ArrayList<j> list2) {
        int n = 1;
        while (true) {
            final String r = r(j.kP(), null);
            int n2;
            if (TextUtils.isEmpty((CharSequence)r) || "inline".equalsIgnoreCase(r)) {
                n2 = n;
            }
            else {
                n2 = 0;
            }
            final String lowerCase = j.getMimeType().toLowerCase();
            if (j.kO() instanceof h) {
                final com.android.emailcommon.a.h h = (com.android.emailcommon.a.h)j.kO();
            Label_0117:
                while (true) {
                    if (h.lg().equals("alternative")) {
                        for (int i = 0; i < h.getCount(); ++i) {
                            final boolean z = h.bg(i).Z("text/html");
                            final int k = 0;
                            if (z) {
                                break Label_0117;
                            }
                        }
                    }
                    Label_0239: {
                        break Label_0239;
                        int k = 0;
                        while (k < h.getCount()) {
                            final com.android.emailcommon.mail.d bg = h.bg(k);
                            if (n == 0 || !bg.Z("text/plain")) {
                                a(bg, list, list2);
                            }
                            ++k;
                        }
                        break;
                    }
                    int k = 0;
                    n = 0;
                    continue Label_0117;
                }
            }
            if (j.kO() instanceof Message) {
                j = (Message)j.kO();
            }
            else {
                if (n2 != 0 && (lowerCase.startsWith("text") || lowerCase.startsWith("image"))) {
                    list.add(j);
                    break;
                }
                list2.add(j);
            }
        }
    }
    
    public static String af(String s) {
        if (s == null) {
            s = null;
        }
        else {
            final Matcher matcher = i.Ww.matcher(s);
            if (matcher.find()) {
                matcher.reset();
                return matcher.replaceAll("");
            }
        }
        return s;
    }
    
    public static String ag(final String s) {
        final String af = af(s);
        if (af == null) {
            return null;
        }
        return c.hV(af);
    }
    
    public static com.android.emailcommon.mail.c b(final InputStream inputStream, final String s) {
        final InputStream a = a(inputStream, s);
        final a a2 = new a();
        final OutputStream outputStream = a2.getOutputStream();
        try {
            org.apache.a.a.a.b(a, outputStream);
            return a2;
        }
        catch (Base64DataException ex) {
            return a2;
        }
        finally {
            outputStream.close();
        }
    }
    
    public static String b(final j j) {
        if (j == null) {
            goto Label_0142;
        }
        while (true) {
            while (true) {
                String s = null;
                Label_0173: {
                    try {
                        if (j.kO() == null) {
                            goto Label_0142;
                        }
                        final InputStream inputStream = j.kO().getInputStream();
                        final String mimeType = j.getMimeType();
                        if (mimeType == null || !s(mimeType, "text/*")) {
                            goto Label_0142;
                        }
                        final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        org.apache.a.a.a.b(inputStream, byteArrayOutputStream);
                        inputStream.close();
                        s = r(j.getContentType(), "charset");
                        if (s != null) {
                            s = org.apache.james.mime4j.b.a.ie(s);
                        }
                        break Label_0173;
                        final String string = byteArrayOutputStream.toString(s);
                        byteArrayOutputStream.close();
                        return string;
                    }
                    catch (OutOfMemoryError outOfMemoryError) {
                        Log.e("Email", "Unable to getTextFromPart " + outOfMemoryError.toString());
                    }
                    catch (Exception ex) {
                        Log.e("Email", "Unable to getTextFromPart " + ex.toString());
                        goto Label_0142;
                    }
                }
                if (s == null) {
                    s = "ASCII";
                    continue;
                }
                continue;
            }
        }
    }
    
    public static String b(final String s, final int n) {
        final int length = s.length();
        if (n + length <= 76) {
            return s;
        }
        final StringBuilder sb = new StringBuilder();
        int n2 = -n;
        int c;
        for (int i = c(s, 0); i != length; i = c) {
            c = c(s, i + 1);
            if (c - n2 > 76) {
                sb.append(s.substring(Math.max(0, n2), i));
                sb.append("\r\n");
            }
            else {
                i = n2;
            }
            n2 = i;
        }
        sb.append(s.substring(Math.max(0, n2)));
        return sb.toString();
    }
    
    public static boolean b(final String s, final String[] array) {
        final int length = array.length;
        int n = 0;
        boolean b;
        while (true) {
            b = false;
            if (n >= length) {
                break;
            }
            if (s(s, array[n])) {
                b = true;
                break;
            }
            ++n;
        }
        return b;
    }
    
    private static int c(final String s, final int n) {
        final int length = s.length();
        for (int i = n; i < length; ++i) {
            final char char1 = s.charAt(i);
            if (char1 == ' ' || char1 == '\t') {
                return i;
            }
        }
        return length;
    }
    
    public static String r(final String s, final String s2) {
        int n = 0;
        String trim = null;
        if (s != null) {
            final String[] split = af(s).split(";");
            if (s2 == null) {
                return split[0].trim();
            }
            final String lowerCase = s2.toLowerCase();
            final int length = split.length;
            String s3;
            while (true) {
                trim = null;
                if (n >= length) {
                    return trim;
                }
                s3 = split[n];
                if (s3.trim().toLowerCase().startsWith(lowerCase)) {
                    break;
                }
                ++n;
            }
            final String[] split2 = s3.split("=", 2);
            final int length2 = split2.length;
            trim = null;
            if (length2 >= 2) {
                trim = split2[1].trim();
                if (trim.startsWith("\"") && trim.endsWith("\"")) {
                    return trim.substring(1, -1 + trim.length());
                }
            }
        }
        return trim;
    }
    
    public static boolean s(final String s, final String s2) {
        return Pattern.compile(s2.replaceAll("\\*", "\\.\\*"), 2).matcher(s).matches();
    }
}
