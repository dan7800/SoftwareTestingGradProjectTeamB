package com.google.android.gsf;

import android.net.*;
import java.util.regex.*;
import android.content.*;
import android.database.*;
import android.util.*;
import java.util.*;

public class c
{
    public static final Uri CONTENT_URI;
    public static final Uri cnm;
    public static final Pattern cnn;
    public static final Pattern cno;
    private static HashMap<String, String> cnp;
    private static Object cnq;
    private static String[] cnr;
    
    static {
        CONTENT_URI = Uri.parse("content://com.google.android.gsf.gservices");
        cnm = Uri.parse("content://com.google.android.gsf.gservices/prefix");
        cnn = Pattern.compile("^(1|true|t|on|yes|y)$", 2);
        cno = Pattern.compile("^(0|false|f|off|no|n)$", 2);
        c.cnr = new String[0];
    }
    
    public static String a(final ContentResolver contentResolver, final String s, String s2) {
        final Object cnq;
        Label_0094: {
            synchronized (c.class) {
                d(contentResolver);
                cnq = c.cnq;
                if (!c.cnp.containsKey(s)) {
                    // monitorexit(c.class)
                    final String[] cnr = c.cnr;
                    for (int length = cnr.length, i = 0; i < length; ++i) {
                        if (s.startsWith(cnr[i])) {
                            return s2;
                        }
                    }
                    break Label_0094;
                }
                final String s3 = c.cnp.get(s);
                if (s3 != null) {
                    s2 = s3;
                }
                return s2;
            }
        }
        final Cursor query = contentResolver.query(c.CONTENT_URI, (String[])null, (String)null, new String[] { s }, (String)null);
        Label_0129: {
            if (query == null) {
                break Label_0129;
            }
            try {
                if (!query.moveToFirst()) {
                    c.cnp.put(s, null);
                    return s2;
                }
                final String string = query.getString(1);
                synchronized (c.class) {
                    if (cnq == c.cnq) {
                        c.cnp.put(s, string);
                    }
                    // monitorexit(c.class)
                    if (string != null) {
                        s2 = string;
                    }
                    return s2;
                }
            }
            finally {
                if (query != null) {
                    query.close();
                }
            }
        }
    }
    
    public static Map<String, String> a(final ContentResolver contentResolver, final String... array) {
        final Cursor query = contentResolver.query(c.cnm, (String[])null, (String)null, array, (String)null);
        final TreeMap<String, String> treeMap = new TreeMap<String, String>();
        if (query == null) {
            return treeMap;
        }
        try {
            while (query.moveToNext()) {
                treeMap.put(query.getString(0), query.getString(1));
            }
        }
        finally {
            query.close();
        }
        query.close();
        return treeMap;
    }
    
    public static boolean a(final ContentResolver contentResolver, final String s, final boolean b) {
        final String a = a(contentResolver, s, null);
        if (a == null || a.equals("")) {
            return b;
        }
        if (c.cnn.matcher(a).matches()) {
            return true;
        }
        if (c.cno.matcher(a).matches()) {
            return false;
        }
        Log.w("Gservices", "attempt to read gservices key " + s + " (value \"" + a + "\") as boolean");
        return b;
    }
    
    public static void b(final ContentResolver contentResolver, final String... cnr) {
        final Map<String, String> a = a(contentResolver, cnr);
        synchronized (c.class) {
            d(contentResolver);
            c.cnr = cnr;
            for (final Map.Entry<String, String> entry : a.entrySet()) {
                c.cnp.put(entry.getKey(), entry.getValue());
            }
        }
    }
    // monitorexit(c.class)
    
    private static void d(final ContentResolver contentResolver) {
        if (c.cnp == null) {
            c.cnp = new HashMap<String, String>();
            c.cnq = new Object();
            new d("Gservices", contentResolver).start();
        }
    }
    
    public static Object e(final ContentResolver contentResolver) {
        synchronized (c.class) {
            d(contentResolver);
            return c.cnq;
        }
    }
    
    public static int getInt(final ContentResolver contentResolver, final String s, int int1) {
        final String a = a(contentResolver, s, null);
        if (a == null) {
            return int1;
        }
        try {
            int1 = Integer.parseInt(a);
            return int1;
        }
        catch (NumberFormatException ex) {
            return int1;
        }
    }
    
    public static long getLong(final ContentResolver contentResolver, final String s, long long1) {
        final String a = a(contentResolver, s, null);
        if (a == null) {
            return long1;
        }
        try {
            long1 = Long.parseLong(a);
            return long1;
        }
        catch (NumberFormatException ex) {
            return long1;
        }
    }
    
    public static String getString(final ContentResolver contentResolver, final String s) {
        return a(contentResolver, s, null);
    }
}
