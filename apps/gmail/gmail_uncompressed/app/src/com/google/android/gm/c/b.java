package com.google.android.gm.c;

import java.util.concurrent.*;
import android.net.*;
import com.google.common.collect.*;
import android.database.*;
import com.android.mail.providers.*;
import java.util.*;

public final class b
{
    public static String ADDRESS;
    public static String NAME;
    public static String bqO;
    public static String bqP;
    public static String bqQ;
    public static int bqR;
    public static int bqS;
    public static int bqT;
    public static ConcurrentHashMap<Uri, ArrayList<ReplyFromAccount>> bqU;
    public static ConcurrentHashMap<Uri, Boolean> bqV;
    
    static {
        b.NAME = "name";
        b.ADDRESS = "address";
        b.bqO = "reply_to";
        b.bqP = "is_default";
        b.bqQ = "bx_rf";
        b.bqR = 2;
        b.bqS = 0;
        b.bqT = 1;
        b.bqU = new ConcurrentHashMap<Uri, ArrayList<ReplyFromAccount>>();
        b.bqV = new ConcurrentHashMap<Uri, Boolean>();
    }
    
    public static List<ReplyFromAccount> H(final Uri uri) {
        if (b.bqU != null) {
            final ArrayList<ReplyFromAccount> list = b.bqU.get(uri);
            if (list != null) {
                synchronized (list) {
                    return (List<ReplyFromAccount>)ImmutableList.J((Collection<?>)list);
                }
            }
        }
        return null;
    }
    
    public static boolean I(final Uri uri) {
        return b.bqV != null && b.bqV.containsKey(uri) && b.bqV.get(uri);
    }
    
    public static void a(final Uri uri, final Cursor cursor) {
        try {
            if (cursor.moveToFirst()) {
                final ArrayList<ReplyFromAccount> list = new ArrayList<ReplyFromAccount>();
                final int columnIndexOrThrow = cursor.getColumnIndexOrThrow(b.ADDRESS);
                final int columnIndexOrThrow2 = cursor.getColumnIndexOrThrow(b.NAME);
                final int columnIndexOrThrow3 = cursor.getColumnIndexOrThrow(b.bqO);
                final int columnIndexOrThrow4 = cursor.getColumnIndexOrThrow(b.bqP);
                do {
                    list.add(new ReplyFromAccount(null, uri, cursor.getString(columnIndexOrThrow), cursor.getString(columnIndexOrThrow2), cursor.getString(columnIndexOrThrow3), Boolean.parseBoolean(cursor.getString(columnIndexOrThrow4)), true));
                } while (cursor.moveToNext());
                b.bqU.put(uri, list);
            }
        }
        finally {
            cursor.close();
        }
    }
    
    public static void b(final Uri uri, final Cursor cursor) {
        while (true) {
            while (true) {
                Label_0077: {
                    try {
                        if (cursor.moveToFirst()) {
                            final String string = cursor.getString(cursor.getColumnIndexOrThrow("value"));
                            final boolean b = true;
                            if (string.equals("true")) {
                                break Label_0077;
                            }
                            if (string.equals("1")) {
                                break Label_0077;
                            }
                            com.google.android.gm.c.b.bqV.put(uri, b);
                        }
                        return;
                    }
                    finally {
                        cursor.close();
                    }
                }
                final boolean b = false;
                continue;
            }
        }
    }
    
    public static void f(final Uri uri, final String s) {
        final ArrayList<ReplyFromAccount> list = b.bqU.get(uri);
        if (list == null) {
            return;
        }
        synchronized (list) {
            for (final ReplyFromAccount replyFromAccount : list) {
                if (replyFromAccount.address.equals(s)) {
                    list.remove(replyFromAccount);
                    break;
                }
            }
            // monitorexit(list)
            b.bqU.put(uri, list);
        }
    }
    
    public static void fr(final String s) {
        b.bqU.remove(s);
    }
}
