package com.google.android.gm.c;

import java.util.concurrent.*;
import android.database.*;

public final class g
{
    private static String brh;
    public static ConcurrentHashMap<String, String[]> bri;
    
    static {
        g.brh = "value";
        g.bri = new ConcurrentHashMap<String, String[]>();
    }
    
    public static void ag(final String s, final String s2) {
        final String[] fv = fv(s);
        fv[0] = s2;
        g.bri.put(s, fv);
    }
    
    public static void ah(final String s, final String s2) {
        final String[] fv = fv(s);
        fv[1] = s2;
        g.bri.put(s, fv);
    }
    
    public static void c(final String s, final Cursor cursor) {
        final String[] array = new String[2];
        try {
            if (cursor.moveToFirst()) {
                final int columnIndexOrThrow = cursor.getColumnIndexOrThrow(g.brh);
                final int columnIndexOrThrow2 = cursor.getColumnIndexOrThrow("name");
                do {
                    final String string = cursor.getString(columnIndexOrThrow2);
                    int n = -1;
                    if (string.equals("sx_rt")) {
                        n = 0;
                    }
                    else if (string.equals("sx_dn")) {
                        n = 1;
                    }
                    if (n >= 0) {
                        array[n] = cursor.getString(columnIndexOrThrow);
                    }
                } while (cursor.moveToNext());
                g.bri.put(s, array);
            }
        }
        finally {
            cursor.close();
        }
    }
    
    private static String[] fv(final String s) {
        String[] array;
        if (g.bri == null) {
            array = null;
        }
        else {
            array = g.bri.get(s);
        }
        if (array == null) {
            array = new String[2];
        }
        return array;
    }
}
