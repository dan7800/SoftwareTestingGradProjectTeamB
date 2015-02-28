package com.google.android.gm.provider;

import android.text.*;
import com.android.mail.utils.*;
import android.content.*;
import com.google.android.gsf.*;
import com.google.android.gm.provider.uiprovider.*;
import android.database.*;
import android.database.sqlite.*;
import java.util.*;
import com.google.common.collect.*;

public final class Operations
{
    private static final String bmA;
    private static final String bmz;
    private final SQLiteDatabase bcJ;
    private final String[] bmy;
    private Context mContext;
    
    static {
        bmz = "'" + TextUtils.join((CharSequence)"', '", (Object[])new String[] { "messageLabelAdded", "messageLabelRemoved", "conversationLabelAdded", "conversationLabelRemoved" }) + "'";
        bmA = "'" + TextUtils.join((CharSequence)"', '", (Object[])new String[] { "messageSaved", "messageSent" }) + "'";
    }
    
    public Operations(final Context mContext, final SQLiteDatabase bcJ) {
        this.bmy = new String[] { "_id", "action", "message_messageId", "value1", "value2", "value3", "value4", "value5", "value6", "value7", "value8", "numAttempts", "nextTimeToAttempt", "delay" };
        this.bcJ = bcJ;
        this.mContext = mContext;
    }
    
    private long a(final long n, final bt bt, final aX ax) {
        final String bmI = bt.bmI;
        long n2;
        if (ax.bkF) {
            this.bcJ.execSQL("DELETE FROM operations where _id = ?", (Object[])new String[] { Long.toString(n) });
            n2 = this.a(bt);
        }
        else {
            this.bcJ.execSQL("DELETE FROM operations where _id = ?", (Object[])new String[] { Long.toString(n) });
            n2 = this.b(bt);
        }
        E.d("Gmail", "Moving delayed operation %d to end of list with newAttempts %d, delay %d, newBackOffTime %d, newOpId %d", n, bt.bmK, bt.bmL, bt.bmM, n2);
        return n2;
    }
    
    private long a(final bt bt) {
        return this.a(bt.bmI, bt.mMessageId, bt.bmJ, bt.bmB, bt.bmC, bt.bmD, bt.bmE, bt.bmF, bt.bmK, bt.bmL, bt.bmM);
    }
    
    private long a(final String s, final long n, final long n2, final long n3, final String s2, final String s3, final String s4, final String s5, final long n4, final int n5, final long n6) {
        final ContentValues contentValues = new ContentValues(11);
        contentValues.put("action", s);
        contentValues.put("message_messageId", n);
        contentValues.put("value1", n2);
        contentValues.put("value2", n3);
        contentValues.put("value3", s2);
        contentValues.put("value4", s3);
        contentValues.put("value5", s4);
        contentValues.put("value6", s5);
        if (n4 > 0L && n6 > 0L) {
            contentValues.put("numAttempts", n4);
            contentValues.put("nextTimeToAttempt", n6);
            contentValues.put("delay", n5);
        }
        return this.bcJ.insert("operations", (String)null, contentValues);
    }
    
    public static void a(final SQLiteDatabase sqLiteDatabase, final long n, final long n2) {
        sqLiteDatabase.execSQL("UPDATE operations SET value1 = ? WHERE action IN (" + Operations.bmz + ") AND value1 = ?", (Object[])new String[] { Long.toString(n2), Long.toString(n) });
    }
    
    private boolean a(final long n, final long n2, final bt bt, final aX ax, final MailEngine mailEngine) {
        if (ax.bkH) {
            return true;
        }
        E.c("Gmail", "calculateAndUpdateOpDelay: currentTime = %d, nextTimeToAttempt = %d, numAttempts = %d delay=%d %s", n, bt.bmM, bt.bmK, bt.bmL, ax);
        if (bt.bmM > n) {
            E.d("Gmail", "Not retrying backed off operation id %d as the next retry attempt is in the future. newOpId %d", n2, this.a(n2, bt, ax));
            return false;
        }
        if (!ax.bkJ && bt.bmK > 0) {
            mailEngine.bit.p("unackedSentOperations", true);
            mailEngine.bit.HA();
            E.d("Gmail", "Not retrying this operation id %d as we have not received what client operations the server has handled. newOpId %d", n2, this.a(n2, bt, ax));
            return false;
        }
        if (bt.bmK >= 3) {
            int min;
            if (bt.bmL == 0) {
                min = 30;
            }
            else {
                min = Math.min(75600, 2 * bt.bmL);
            }
            bt.bmL = min;
            bt.bmM = n + bt.bmL;
            bt.bmK = 2;
            E.d("Gmail", "Not retrying and backing off operation %d with newAttempts %d, delay %d, newBackOffTime %d, newOpId %d", n2, bt.bmK, bt.bmL, bt.bmM, this.a(n2, bt, ax));
            return false;
        }
        ++bt.bmK;
        this.bcJ.execSQL("UPDATE operations SET numAttempts = ? WHERE _id = ?", (Object[])new String[] { Integer.toString(bt.bmK), Long.toString(n2) });
        return true;
    }
    
    public final void I(final List<Long> list) {
        this.bcJ.delete("operations", "message_messageId IN (" + TextUtils.join((CharSequence)", ", (Iterable)list) + ")", (String[])null);
    }
    
    public final long a(final int n, final Advertisement advertisement, final String s) {
        final ContentValues contentValues = new ContentValues(8);
        contentValues.put("action", "adAction");
        contentValues.put("message_messageId", 0);
        contentValues.put("value1", n);
        contentValues.put("value2", advertisement.bco);
        contentValues.put("value3", advertisement.bcd);
        contentValues.put("value4", advertisement.bcq);
        contentValues.put("value5", advertisement.bcp);
        contentValues.put("value6", s);
        String bcx;
        if (advertisement.bcx != null) {
            bcx = advertisement.bcx;
        }
        else {
            bcx = "";
        }
        contentValues.put("value7", bcx);
        if (n == 4) {
            String bck;
            if (advertisement.bck != null && advertisement.bcy.bcC) {
                bck = advertisement.bck;
            }
            else {
                bck = "";
            }
            contentValues.put("value8", bck);
        }
        return this.bcJ.insert("operations", (String)null, contentValues);
    }
    
    public final long a(final long n, final long n2, final String s, final long n3) {
        return this.a(s, n2, n3, n, null, null, null, null, 0L, 0, 0L);
    }
    
    public final void a(final be be, final MailEngine mailEngine, final aX ax, final long n) {
        Cursor rawQuery = null;
        Block_0: {
            break Block_0;
            boolean b;
            int n2 = 0;
            int int1;
            long long1 = 0L;
            bm c = null;
            int n3;
            int columnIndexOrThrow;
            int columnIndexOrThrow2;
            int columnIndexOrThrow3;
            int columnIndexOrThrow4;
            int columnIndexOrThrow5;
            int columnIndexOrThrow6;
            int columnIndexOrThrow7;
            int n4 = 0;
            int n5;
            String string;
            bt bt;
            int n6;
            List<GmailAttachment> vc;
            Iterator<GmailAttachment> iterator;
            int n7;
            long long2;
            int int2;
            int n8;
            Label_0153_Outer:Label_0572_Outer:
            do {
                be.a(long1, c, ax.bkt, c.blM, false);
                b = true;
                n3 = n2;
                while (true) {
                Label_0587:
                    while (true) {
                        break Label_0153;
                        rawQuery = this.bcJ.rawQuery("SELECT \n  _id,\n  action,\n  numAttempts,\n  nextTimeToAttempt,\n  value1,\n  value2,\n  delay\nFROM\n operations\nWHERE\n  message_messageId = ? AND value2 = ?\n", new String[] { Long.toString(ax.bkt), Long.toString(ax.bku) });
                        Label_0494: {
                            Label_0395: {
                                try {
                                    columnIndexOrThrow = rawQuery.getColumnIndexOrThrow("_id");
                                    columnIndexOrThrow2 = rawQuery.getColumnIndexOrThrow("action");
                                    columnIndexOrThrow3 = rawQuery.getColumnIndexOrThrow("numAttempts");
                                    columnIndexOrThrow4 = rawQuery.getColumnIndexOrThrow("nextTimeToAttempt");
                                    columnIndexOrThrow5 = rawQuery.getColumnIndexOrThrow("delay");
                                    columnIndexOrThrow6 = rawQuery.getColumnIndexOrThrow("value1");
                                    columnIndexOrThrow7 = rawQuery.getColumnIndexOrThrow("value2");
                                    n4 = 0;
                                    int1 = com.google.android.gsf.c.getInt(this.mContext.getContentResolver(), "gmail_max_attachment_size_bytes", 20971520);
                                    b = false;
                                    n3 = 0;
                                    n5 = 0;
                                    while (rawQuery.moveToNext()) {
                                        long1 = rawQuery.getLong(columnIndexOrThrow);
                                        string = rawQuery.getString(columnIndexOrThrow2);
                                        bt = new bt(string, ax.bkt, 0L, ax.bku, null, null, null, null, null, null, rawQuery.getInt(columnIndexOrThrow3), rawQuery.getInt(columnIndexOrThrow5), rawQuery.getLong(columnIndexOrThrow4));
                                        if (("messageSent".equals(string) || "emptySpam".equals(string) || "emptyTrash".equals(string)) && this.a(n, long1, bt, ax, mailEngine)) {
                                            if (!"messageSent".equals(string)) {
                                                break Label_0494;
                                            }
                                            c = mailEngine.c(ax.bkt, true);
                                            if (c != null) {
                                                break Label_0395;
                                            }
                                            E.f("Gmail", "Cannot find message with id = %d for operations!", ax.bkt);
                                            this.bcJ.delete("operations", "_id == " + long1, (String[])null);
                                        }
                                    }
                                    break;
                                }
                                finally {
                                    rawQuery.close();
                                }
                            }
                            n6 = n3 + c.bck.length();
                            vc = c.vC();
                            if (vc != null) {
                                iterator = vc.iterator();
                                n7 = n6;
                                while (iterator.hasNext()) {
                                    n7 += iterator.next().size;
                                }
                                n2 = n7;
                                continue Label_0153_Outer;
                            }
                            n2 = n6;
                            continue Label_0153_Outer;
                        }
                        long2 = rawQuery.getLong(columnIndexOrThrow6);
                        int2 = rawQuery.getInt(columnIndexOrThrow7);
                        if ("emptySpam".equals(string)) {
                            if (n5 == 0) {
                                be.a(long1, 0, long2, int2);
                                n5 = 1;
                                continue Label_0572_Outer;
                            }
                            break Label_0587;
                        }
                        else {
                            if (n4 != 0) {
                                break Label_0587;
                            }
                            be.a(long1, 1, long2, int2);
                            n8 = 1;
                        }
                        n4 = n8;
                        continue Label_0572_Outer;
                    }
                    n8 = n4;
                    continue;
                }
            } while (!b || n2 <= int1);
        }
        rawQuery.close();
    }
    
    public final boolean aP(final long n) {
        return 0L != DatabaseUtils.longForQuery(this.bcJ, "SELECT COUNT(*) FROM operations WHERE ACTION IN (" + Operations.bmA + ") AND value2 = ?", new String[] { Long.toString(n) });
    }
    
    public final void aQ(final long n) {
        this.bcJ.delete("operations", "message_messageId = ?", new String[] { Long.toString(n) });
    }
    
    public final void aR(final long n) {
        this.bcJ.delete("operations", "action IN (" + Operations.bmz + ") AND value1 = ?", new String[] { Long.toString(n) });
    }
    
    public final long ab(final String s, final String s2) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            throw new IllegalArgumentException("Preference name is invalid");
        }
        final ContentValues contentValues = new ContentValues(5);
        contentValues.put("action", "prefChange");
        contentValues.put("message_messageId", 0);
        contentValues.put("value3", s);
        contentValues.put("value1", 0);
        contentValues.put("value4", s2);
        return this.bcJ.insert("operations", (String)null, contentValues);
    }
    
    public final long b(final long n, final long n2, final String s) {
        return this.a(s, n2, 0L, n, null, null, null, null, 0L, 0, 0L);
    }
    
    public final long b(final long n, final String s) {
        this.bcJ.delete("operations", "action = ? AND message_messageId < ? AND value3 = ?", new String[] { "resetUnseenCount", Long.toString(n), s });
        return this.a("resetUnseenCount", 0L, n, 0L, s, null, null, null, 0L, 0, 0L);
    }
    
    public final long b(final bt bt) {
        this.bcJ.beginTransactionNonExclusive();
        ArrayList<bt> list;
        Cursor query;
        try {
            list = new ArrayList<bt>();
            final SQLiteQueryBuilder sqLiteQueryBuilder = new SQLiteQueryBuilder();
            sqLiteQueryBuilder.setTables("operations");
            query = sqLiteQueryBuilder.query(this.bcJ, this.bmy, (String)null, (String[])null, (String)null, (String)null, "_id");
            final int columnIndexOrThrow = query.getColumnIndexOrThrow("action");
            final int columnIndexOrThrow2 = query.getColumnIndexOrThrow("message_messageId");
            final int columnIndexOrThrow3 = query.getColumnIndexOrThrow("value1");
            final int columnIndexOrThrow4 = query.getColumnIndexOrThrow("value2");
            final int columnIndexOrThrow5 = query.getColumnIndexOrThrow("value3");
            final int columnIndexOrThrow6 = query.getColumnIndexOrThrow("value4");
            final int columnIndexOrThrow7 = query.getColumnIndexOrThrow("value5");
            final int columnIndexOrThrow8 = query.getColumnIndexOrThrow("value6");
            final int columnIndexOrThrow9 = query.getColumnIndexOrThrow("value7");
            final int columnIndexOrThrow10 = query.getColumnIndexOrThrow("value8");
            final int columnIndexOrThrow11 = query.getColumnIndexOrThrow("numAttempts");
            final int columnIndexOrThrow12 = query.getColumnIndexOrThrow("nextTimeToAttempt");
            final int columnIndexOrThrow13 = query.getColumnIndexOrThrow("delay");
            while (query.moveToNext()) {
                list.add(new bt(query.getString(columnIndexOrThrow), query.getLong(columnIndexOrThrow2), query.getLong(columnIndexOrThrow3), query.getLong(columnIndexOrThrow4), query.getString(columnIndexOrThrow5), query.getString(columnIndexOrThrow6), query.getString(columnIndexOrThrow7), query.getString(columnIndexOrThrow8), query.getString(columnIndexOrThrow9), query.getString(columnIndexOrThrow10), query.getInt(columnIndexOrThrow11), query.getInt(columnIndexOrThrow13), query.getLong(columnIndexOrThrow12)));
            }
        }
        finally {
            this.bcJ.endTransaction();
        }
        query.close();
        this.bcJ.execSQL("DELETE FROM operations");
        final long a = this.a(bt);
        final Iterator<bt> iterator = list.iterator();
        while (iterator.hasNext()) {
            this.a(iterator.next());
        }
        this.bcJ.setTransactionSuccessful();
        this.bcJ.endTransaction();
        return a;
    }
    
    public final long b(final Set<Integer> set, final boolean b) {
        final String join = TextUtils.join((CharSequence)",", (Iterable)set);
        boolean b2;
        if (b) {
            b2 = true;
        }
        else {
            b2 = false;
        }
        return this.a("configureSectionedInbox", 0L, b2 ? 1 : 0, 0L, join, null, null, null, 0L, 0, 0L);
    }
    
    public final void b(final be be, final MailEngine mailEngine, final aX ax, final long n) {
        final SQLiteQueryBuilder sqLiteQueryBuilder = new SQLiteQueryBuilder();
        sqLiteQueryBuilder.setTables("operations");
        final Cursor query = sqLiteQueryBuilder.query(this.bcJ, this.bmy, (String)null, (String[])null, (String)null, (String)null, "_id", "50");
        final int columnIndexOrThrow = query.getColumnIndexOrThrow("_id");
        final int columnIndexOrThrow2 = query.getColumnIndexOrThrow("action");
        final int columnIndexOrThrow3 = query.getColumnIndexOrThrow("message_messageId");
        final int columnIndexOrThrow4 = query.getColumnIndexOrThrow("value1");
        final int columnIndexOrThrow5 = query.getColumnIndexOrThrow("value2");
        final int columnIndexOrThrow6 = query.getColumnIndexOrThrow("value3");
        final int columnIndexOrThrow7 = query.getColumnIndexOrThrow("value4");
        final int columnIndexOrThrow8 = query.getColumnIndexOrThrow("value5");
        final int columnIndexOrThrow9 = query.getColumnIndexOrThrow("value6");
        final int columnIndexOrThrow10 = query.getColumnIndexOrThrow("value7");
        final int columnIndexOrThrow11 = query.getColumnIndexOrThrow("value8");
        final int columnIndexOrThrow12 = query.getColumnIndexOrThrow("numAttempts");
        final int columnIndexOrThrow13 = query.getColumnIndexOrThrow("nextTimeToAttempt");
        final int columnIndexOrThrow14 = query.getColumnIndexOrThrow("delay");
        final int int1 = c.getInt(this.mContext.getContentResolver(), "gmail_max_attachment_size_bytes", 20971520);
        int n2 = 0;
        int n3 = 0;
        int n4 = 0;
        int n5 = 0;
        while (query.moveToNext()) {
            final long long1 = query.getLong(columnIndexOrThrow);
            final String string = query.getString(columnIndexOrThrow2);
            final long long2 = query.getLong(columnIndexOrThrow3);
            final int int2 = query.getInt(columnIndexOrThrow12);
            final long long3 = query.getLong(columnIndexOrThrow13);
            final int int3 = query.getInt(columnIndexOrThrow14);
            final long long4 = query.getLong(columnIndexOrThrow4);
            final long long5 = query.getLong(columnIndexOrThrow5);
            final String string2 = query.getString(columnIndexOrThrow6);
            final String string3 = query.getString(columnIndexOrThrow7);
            final String string4 = query.getString(columnIndexOrThrow8);
            final String string5 = query.getString(columnIndexOrThrow9);
            final String string6 = query.getString(columnIndexOrThrow10);
            final String string7 = query.getString(columnIndexOrThrow11);
            if (this.a(n, long1, new bt(string, long2, long4, long5, string2, string3, string4, string5, string6, string7, int2, int3, long3), ax, mailEngine)) {
                if ("messageLabelAdded".equals(string)) {
                    be.d(long1, long2, long4);
                }
                else if ("messageLabelRemoved".equals(string)) {
                    be.e(long1, long2, long4);
                }
                else if ("conversationLabelAdded".equals(string)) {
                    be.a(long1, long2, long4, true);
                }
                else if ("conversationLabelRemoved".equals(string)) {
                    be.a(long1, long2, long4, false);
                }
                else if ("messageSaved".equals(string) || "messageSent".equals(string)) {
                    final bm c = mailEngine.c(long2, true);
                    if (c == null) {
                        E.f("Gmail", "Cannot find message with id = %d for operations!", long2);
                        this.bcJ.delete("operations", "_id == " + long1, (String[])null);
                    }
                    else {
                        final int n6 = n3 + c.bck.length();
                        final List<GmailAttachment> vc = c.vC();
                        int n7;
                        if (vc != null) {
                            final Iterator<GmailAttachment> iterator = vc.iterator();
                            n7 = n6;
                            while (iterator.hasNext()) {
                                n7 += iterator.next().size;
                            }
                        }
                        else {
                            n7 = n6;
                        }
                        if (n2 != 0 && n7 > int1) {
                            break;
                        }
                        be.a(long1, c, long2, c.blM, "messageSaved".equals(string));
                        n2 = 1;
                        n3 = n7;
                    }
                }
                else if ("messageExpunged".equals(string)) {
                    be.k(long1, long2);
                }
                else if ("emptySpam".equals(string)) {
                    if (n5 != 0) {
                        continue;
                    }
                    be.a(long1, 0, long4, (int)long5);
                    n5 = 1;
                }
                else if ("emptyTrash".equals(string)) {
                    if (n4 != 0) {
                        continue;
                    }
                    be.a(long1, 1, long4, (int)long5);
                    n4 = 1;
                }
                else if ("resetUnseenCount".equals(string)) {
                    be.a(long1, long4, string2);
                }
                else if ("configureSectionedInbox".equals(string)) {
                    final String[] split = string2.split(",");
                    final z<Integer> zx = ImmutableSet.Zx();
                    for (int length = split.length, i = 0; i < length; ++i) {
                        zx.aH(Integer.parseInt(split[i]));
                    }
                    be.a(long1, zx.Zy(), long4 == 1L);
                }
                else if ("adAction".equals(string)) {
                    be.a(long1, (int)long4, string2, string3, string4, string5, long5 == 2L, string6, string7);
                }
                else {
                    if (!"prefChange".equals(string)) {
                        throw new RuntimeException("Unknown action: " + string);
                    }
                    be.a(long1, string2, string3, long4 != 0L);
                }
            }
        }
        query.close();
    }
    
    public final long c(final long n, final String s) {
        return this.a(s, 0L, n, 0L, null, null, null, null, 0L, 0, 0L);
    }
    
    public final void e(final long n, final long n2) {
        final ContentValues contentValues = new ContentValues();
        contentValues.put("message_messageId", n2);
        this.bcJ.update("operations", contentValues, "message_messageId = " + n, (String[])null);
    }
}
