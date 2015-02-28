package com.google.android.gm.c;

import java.util.concurrent.*;
import android.graphics.*;
import com.google.android.gm.provider.*;
import android.database.*;

public final class f
{
    public static String bqY;
    public static String bqZ;
    public static String bra;
    public static int brb;
    public static ConcurrentHashMap<String, ConcurrentHashMap<String, String[]>> brc;
    private static final String[] brd;
    private static final String[][] bre;
    private static final int[] brf;
    private static final int brg;
    
    static {
        f.bqY = "background_color";
        f.bqZ = "color_index";
        f.bra = "text_color";
        f.brb = -1;
        f.brc = new ConcurrentHashMap<String, ConcurrentHashMap<String, String[]>>();
        brd = new String[] { "#dddddd", "#777777" };
        bre = new String[][] { f.brd, { "#dee5f2", "#5a6986" }, { "#e0ecff", "#206cff" }, { "#dfe2ff", "#0000cc" }, { "#e0d5f9", "#5229a3" }, { "#fde9f4", "#854f61" }, { "#ffe3e3", "#cc0000" }, { "#fff0e1", "#ec7000" }, { "#fadcb3", "#b36d00" }, { "#f3e7b3", "#ab8b00" }, { "#ffffd4", "#636330" }, { "#f9ffef", "#64992c" }, { "#f1f5ec", "#006633" }, { "#5a6986", "#dee5f2" }, { "#206cff", "#e0ecff" }, { "#0000cc", "#dfe2ff" }, { "#5229a3", "#e0d5f9" }, { "#854f61", "#fde9f4" }, { "#cc0000", "#ffe3e3" }, { "#ec7000", "#fff0e1" }, { "#b36d00", "#fadcb3" }, { "#ab8b00", "#f3e7b3" }, { "#636330", "#ffffd4" }, { "#64992c", "#f9ffef" }, { "#006633", "#f1f5ec" } };
        brf = new int[] { -2236963, -8947849 };
        brg = f.bre.length;
    }
    
    public static int[] IB() {
        return f.brf;
    }
    
    public static int IC() {
        return Color.parseColor(f.bre[0][0]);
    }
    
    public static void a(final String s, final String s2, final bc bc) {
        ConcurrentHashMap<String, String[]> concurrentHashMap = f.brc.get(s);
        if (concurrentHashMap == null) {
            concurrentHashMap = new ConcurrentHashMap<String, String[]>();
            f.brc.put(s, concurrentHashMap);
        }
        concurrentHashMap.put(s2, new String[] { bc.ble, bc.bld });
    }
    
    public static int[] af(final String s, final String s2) {
        try {
            final int int1 = Integer.parseInt(s);
            final int[] array = new int[2];
            String[] array2;
            if (int1 == f.brb) {
                array2 = f.brd;
            }
            else if (int1 < 0) {
                final ConcurrentHashMap<String, String[]> concurrentHashMap = f.brc.get(s2);
                if (concurrentHashMap != null) {
                    array2 = (String[])concurrentHashMap.get(String.valueOf(int1));
                }
                else {
                    array2 = f.brd;
                }
                if (array2 == null) {
                    array2 = f.brd;
                }
            }
            else if (int1 >= f.brg) {
                array2 = f.brd;
            }
            else {
                array2 = f.bre[int1];
            }
            array[0] = Color.parseColor(array2[0]);
            array[1] = Color.parseColor(array2[1]);
            return array;
        }
        catch (NumberFormatException ex) {
            return null;
        }
    }
    
    public static void b(final String s, final Cursor cursor) {
        if (cursor.moveToFirst()) {
            final ConcurrentHashMap<String, String[]> concurrentHashMap = new ConcurrentHashMap<String, String[]>();
            final int columnIndexOrThrow = cursor.getColumnIndexOrThrow(f.bqZ);
            final int columnIndexOrThrow2 = cursor.getColumnIndexOrThrow(f.bqY);
            final int columnIndexOrThrow3 = cursor.getColumnIndexOrThrow(f.bra);
            do {
                concurrentHashMap.put(cursor.getString(columnIndexOrThrow), new String[] { cursor.getString(columnIndexOrThrow2), cursor.getString(columnIndexOrThrow3) });
            } while (cursor.moveToNext());
            f.brc.put(s, concurrentHashMap);
        }
        cursor.close();
    }
}
