package com.google.android.gm.provider;

import com.google.android.gm.a.*;
import com.android.mail.utils.*;
import android.text.*;
import com.google.common.collect.*;
import android.net.*;
import android.content.*;
import java.util.*;
import android.database.*;

public class PublicContentProvider extends ContentProvider
{
    private static final UriMatcher ajR;
    private static final Set<String> bmQ;
    private ContentResolver mContentResolver;
    
    static {
        (ajR = new UriMatcher(-1)).addURI("com.google.android.gm", "*/labels", 1);
        PublicContentProvider.ajR.addURI("com.google.android.gm", "*/label/#", 2);
        PublicContentProvider.ajR.addURI("com.google.android.gm", "*/label/*", 3);
        bmQ = ImmutableSet.j(a.bai);
    }
    
    private static Cursor a(final String s, String[] bai, final Cursor cursor) {
        Object o;
        if (cursor == null) {
            E.c("GmailCP", "null private cursor", new Object[0]);
            o = null;
        }
        else {
            if (bai != null) {
                for (int length = bai.length, i = 0; i < length; ++i) {
                    if (!PublicContentProvider.bmQ.contains(bai[i])) {
                        throw new IllegalArgumentException("Invalid projection");
                    }
                }
            }
            if (bai == null) {
                bai = a.bai;
            }
            o = new G(bai, cursor.getCount());
            if (cursor.moveToFirst()) {
                final int columnIndex = cursor.getColumnIndex("_id");
                final int columnIndex2 = cursor.getColumnIndex("canonicalName");
                final int columnIndex3 = cursor.getColumnIndex("name");
                final int columnIndex4 = cursor.getColumnIndex("numConversations");
                final int columnIndex5 = cursor.getColumnIndex("numUnreadConversations");
                final int columnIndex6 = cursor.getColumnIndex("color");
                do {
                    final MatrixCursor$RowBuilder row = ((MatrixCursor)o).newRow();
                    final int int1 = cursor.getInt(columnIndex);
                    final String string = cursor.getString(columnIndex6);
                    final String string2 = cursor.getString(columnIndex2);
                    for (final String s2 : bai) {
                        if (TextUtils.equals((CharSequence)s2, (CharSequence)"_id")) {
                            row.add((Object)int1);
                        }
                        else if (TextUtils.equals((CharSequence)s2, (CharSequence)"canonicalName")) {
                            row.add((Object)string2);
                        }
                        else if (TextUtils.equals((CharSequence)s2, (CharSequence)"name")) {
                            row.add((Object)cursor.getString(columnIndex3));
                        }
                        else if (TextUtils.equals((CharSequence)s2, (CharSequence)"numConversations")) {
                            row.add((Object)cursor.getInt(columnIndex4));
                        }
                        else if (TextUtils.equals((CharSequence)s2, (CharSequence)"numUnreadConversations")) {
                            row.add((Object)cursor.getInt(columnIndex5));
                        }
                        else if (TextUtils.equals((CharSequence)s2, (CharSequence)"labelUri")) {
                            row.add((Object)a.f(s, int1).toString());
                        }
                        else if (TextUtils.equals((CharSequence)s2, (CharSequence)"background_color")) {
                            row.add((Object)T.e(s, string2, string));
                        }
                        else if (TextUtils.equals((CharSequence)s2, (CharSequence)"text_color")) {
                            row.add((Object)T.f(s, string2, string));
                        }
                    }
                } while (cursor.moveToNext());
                return (Cursor)o;
            }
        }
        return (Cursor)o;
    }
    
    private static Cursor a(final String[] array, final MailEngine mailEngine, final String s) {
        Cursor fl = null;
        if (s != null) {
            fl = mailEngine.B(array).F(ImmutableList.aE(s)).bU(false).Fl();
        }
        return fl;
    }
    
    static void b(final Context context, final String s, final Set<Long> set) {
        final ContentResolver contentResolver = context.getContentResolver();
        for (final Long n : set) {
            if (n != null) {
                contentResolver.notifyChange(a.f(s, n), (ContentObserver)null, false);
            }
        }
        contentResolver.notifyChange(Uri.parse("content://com.google.android.gm/" + s + "/labels"), (ContentObserver)null, false);
    }
    
    public int delete(final Uri uri, final String s, final String[] array) {
        return 0;
    }
    
    public String getType(final Uri uri) {
        switch (PublicContentProvider.ajR.match(uri)) {
            default: {
                return null;
            }
            case 1: {
                return "vnd.android.cursor.dir/vnd.com.google.android.gm.label";
            }
            case 2:
            case 3: {
                return "vnd.android.cursor.item/vnd.com.google.android.gm.label";
            }
        }
    }
    
    public Uri insert(final Uri uri, final ContentValues contentValues) {
        return uri;
    }
    
    public boolean onCreate() {
        this.mContentResolver = this.getContext().getContentResolver();
        return true;
    }
    
    public Cursor query(final Uri uri, final String[] array, final String s, final String[] array2, final String s2) {
        if (E.isLoggable("GmailCP", 3)) {
            E.c("GmailCP", "PublicContentProvider.query: %s(%s, %s)", E.A(uri), s, Arrays.toString(array2));
        }
        if (!TextUtils.isEmpty((CharSequence)s2)) {
            throw new IllegalArgumentException("sortOrder must be empty");
        }
        final int match = PublicContentProvider.ajR.match(uri);
        final String s3 = uri.getPathSegments().get(0);
        if (TextUtils.isEmpty((CharSequence)s3)) {
            throw new IllegalArgumentException("account is empty");
        }
        final MailEngine v = MailEngine.V(this.getContext(), s3);
        MailIndexerService.eY(s3);
        int n = 0;
        Cursor a = null;
        switch (match) {
            default: {
                if (E.isLoggable("GmailCP", 3)) {
                    E.c("GmailCP", "Unsupported query uri: %s", E.A(uri));
                }
                n = 1;
                a = null;
                break;
            }
            case 1: {
                E.c("GmailCP", "Query for list of labels", new Object[0]);
                final Cursor fl = v.B(Gmail.bai).bU(false).Fl();
                Cursor a2;
                try {
                    a2 = a(s3, array, fl);
                    if (fl != null) {
                        fl.close();
                        a = a2;
                        n = 1;
                        break;
                    }
                }
                finally {
                    if (fl != null) {
                        fl.close();
                    }
                }
                a = a2;
                n = 1;
                break;
            }
            case 2: {
                final Cursor a3 = a(Gmail.bai, v, v.Fn().af(Long.parseLong(uri.getPathSegments().get(2))));
                Cursor a4;
                try {
                    a4 = a(s3, array, a3);
                    if (a3 != null) {
                        a3.close();
                        a = a4;
                        n = 1;
                        break;
                    }
                }
                finally {
                    if (a3 != null) {
                        a3.close();
                    }
                }
                a = a4;
                n = 1;
                break;
            }
            case 3: {
                final Cursor a5 = a(Gmail.bai, v, uri.getPathSegments().get(2));
                try {
                    a = a(s3, array, a5);
                    Long value = null;
                    if (a5 != null) {
                        final int count = a5.getCount();
                        value = null;
                        if (count > 0) {
                            final boolean moveToFirst = a5.moveToFirst();
                            value = null;
                            if (moveToFirst) {
                                value = a5.getLong(a5.getColumnIndex("_id"));
                            }
                        }
                    }
                    if (a5 != null) {
                        a5.close();
                    }
                    if (a != null && value != null) {
                        a.setNotificationUri(this.mContentResolver, com.google.android.gm.a.a.f(s3, value));
                        n = 0;
                        break;
                    }
                }
                finally {
                    if (a5 != null) {
                        a5.close();
                    }
                }
                n = 1;
                break;
            }
        }
        if (a != null && n != 0) {
            a.setNotificationUri(this.mContentResolver, uri);
        }
        return a;
    }
    
    public int update(final Uri uri, final ContentValues contentValues, final String s, final String[] array) {
        return 0;
    }
}
