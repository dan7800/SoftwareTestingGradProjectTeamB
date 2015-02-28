package com.google.analytics.tracking.android;

import android.text.*;
import java.util.*;
import java.net.*;
import java.io.*;

final class ak
{
    private static final char[] aVG;
    
    static {
        aVG = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' };
    }
    
    static String b(final Locale locale) {
        if (locale != null && !TextUtils.isEmpty((CharSequence)locale.getLanguage())) {
            final StringBuilder sb = new StringBuilder();
            sb.append(locale.getLanguage().toLowerCase());
            if (!TextUtils.isEmpty((CharSequence)locale.getCountry())) {
                sb.append("-").append(locale.getCountry().toLowerCase());
            }
            return sb.toString();
        }
        return null;
    }
    
    public static Map<String, String> dh(final String s) {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        final String[] split = s.split("&");
        for (int length = split.length, i = 0; i < length; ++i) {
            final String[] split2 = split[i].split("=");
            if (split2.length > 1) {
                hashMap.put(split2[0], split2[1]);
            }
            else if (split2.length == 1 && split2[0].length() != 0) {
                hashMap.put(split2[0], null);
            }
        }
        return hashMap;
    }
    
    public static double di(final String s) {
        if (s == null) {
            return 0.0;
        }
        try {
            return Double.parseDouble(s);
        }
        catch (NumberFormatException ex) {
            return 0.0;
        }
    }
    
    public static boolean dj(final String s) {
        return Boolean.parseBoolean(s);
    }
    
    public static String dk(String decode) {
        if (TextUtils.isEmpty((CharSequence)decode)) {
            return null;
        }
        if (decode.contains("?")) {
            decode = decode.split("[\\?]")[1];
        }
        while (true) {
            Label_0197: {
                if (!decode.contains("%3D")) {
                    break Label_0197;
                }
                try {
                    decode = URLDecoder.decode(decode, "UTF-8");
                    final Map<String, String> dh = dh(decode);
                    final String[] array = { "dclid", "utm_source", "gclid", "utm_campaign", "utm_medium", "utm_term", "utm_content", "utm_id", "gmob_t" };
                    final StringBuilder sb = new StringBuilder();
                    for (int i = 0; i < array.length; ++i) {
                        if (!TextUtils.isEmpty((CharSequence)dh.get(array[i]))) {
                            if (sb.length() > 0) {
                                sb.append("&");
                            }
                            sb.append(array[i]).append("=").append(dh.get(array[i]));
                        }
                    }
                    return sb.toString();
                }
                catch (UnsupportedEncodingException ex) {
                    return null;
                }
            }
            if (!decode.contains("=")) {
                return null;
            }
            continue;
        }
    }
    
    static byte[] dl(final String s) {
        final byte[] array = new byte[s.length() / 2];
        for (int i = 0; i < array.length; ++i) {
            array[i] = (byte)(f(s.charAt(i * 2)) << 4 | f(s.charAt(1 + i * 2)));
        }
        return array;
    }
    
    private static int f(final char c) {
        int n = c - '0';
        if (n > 9) {
            n -= 7;
        }
        return n;
    }
    
    static String f(final String s, final int n) {
        return s + "*" + n;
    }
}
