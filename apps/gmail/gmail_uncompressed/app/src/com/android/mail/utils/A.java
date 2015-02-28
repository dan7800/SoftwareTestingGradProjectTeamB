package com.android.mail.utils;

import java.util.*;
import com.android.mail.providers.*;
import android.content.*;
import android.database.*;

public final class a
{
    public static Account[] aw(final Context context) {
        final ContentResolver contentResolver = context.getContentResolver();
        final ArrayList<Account> list = new ArrayList<Account>();
        while (true) {
            try {
                final Cursor query = contentResolver.query(t.vh(), E.aCr, (String)null, (String[])null, (String)null);
                Label_0093: {
                    if (query != null) {
                        try {
                            while (query.moveToNext()) {
                                Account.ue();
                                final Account j = c.j(query);
                                if (!j.uh()) {
                                    list.add(j);
                                }
                            }
                            break Label_0093;
                        }
                        finally {}
                        if (query != null) {
                            query.close();
                        }
                        throw;
                    }
                }
                if (query != null) {
                    query.close();
                }
                return list.toArray(new Account[list.size()]);
            }
            finally {
                final Cursor query = null;
                continue;
            }
            break;
        }
    }
    
    public static Account[] ax(final Context context) {
        final ContentResolver contentResolver = context.getContentResolver();
        final ArrayList<Account> list = new ArrayList<Account>();
        while (true) {
            try {
                final Cursor query = contentResolver.query(t.vh(), E.aCr, (String)null, (String[])null, (String)null);
                Label_0081: {
                    if (query != null) {
                        try {
                            while (query.moveToNext()) {
                                Account.ue();
                                list.add(c.j(query));
                            }
                            break Label_0081;
                        }
                        finally {}
                        if (query != null) {
                            query.close();
                        }
                        throw;
                    }
                }
                if (query != null) {
                    query.close();
                }
                return list.toArray(new Account[list.size()]);
            }
            finally {
                final Cursor query = null;
                continue;
            }
            break;
        }
    }
}
