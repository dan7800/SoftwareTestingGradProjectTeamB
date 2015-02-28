package com.google.android.gm.provider;

import android.database.sqlite.*;
import com.android.mail.utils.*;
import android.util.*;
import com.google.common.collect.*;
import android.database.*;
import java.util.*;

public final class w
{
    private final SQLiteDatabase bcJ;
    private final ae bdv;
    
    protected w(final SQLiteDatabase bcJ, final ae bdv) {
        this.bcJ = bcJ;
        this.bdv = bdv;
    }
    
    final void a(final long n, final MailSync$SyncRationale mailSync$SyncRationale) {
        this.a(n, mailSync$SyncRationale, false, false);
    }
    
    final void a(final long n, final MailSync$SyncRationale mailSync$SyncRationale, final boolean b, final boolean b2) {
        if (!this.bcJ.inTransaction()) {
            throw new IllegalStateException("Must be in transaction");
        }
        E.b("Gmail", "updateConversationTables: conversationId %d", n);
        final Cursor query = this.bcJ.query("conversation_labels", new String[] { "queryId" }, "conversation_id = ?", new String[] { String.valueOf(n) }, "queryId", (String)null, (String)null);
        final HashSet<Long> set = new HashSet<Long>();
        try {
            while (query.moveToNext()) {
                set.add(query.getLong(0));
            }
        }
        finally {
            query.close();
        }
        query.close();
        if (b) {
            set.add(0L);
        }
        final v v = new v();
        final Iterator<Object> iterator = set.iterator();
        while (iterator.hasNext()) {
            while (true) {
                final long longValue = iterator.next();
                final TimingLogger timingLogger = new TimingLogger("Gmail", "onConversationChanged");
                while (true) {
                    try {
                        final String string = Long.toString(n);
                        final String string2 = Long.toString(longValue);
                        final Map<Long, ab> f = this.f(n, longValue);
                        timingLogger.addSplit("fetch old labels");
                        long long1 = 0L;
                        final Cursor rawQuery = this.bcJ.rawQuery("SELECT maxMessageId FROM conversations WHERE _id = ? AND queryId = ?", new String[] { string, string2 });
                        try {
                            if (rawQuery.moveToNext()) {
                                long1 = rawQuery.getLong(0);
                            }
                            rawQuery.close();
                            timingLogger.addSplit("read old conversation");
                            this.bcJ.delete("conversation_labels", "queryId = ? AND conversation_id = ?", new String[] { string2, string });
                            timingLogger.addSplit("delete old labels");
                            final HashMap<Long, ab> aan = Maps.aan();
                            if (longValue == 0L) {
                                final u u = new bA(this.bcJ, this.bdv);
                                u.a(n, mailSync$SyncRationale, longValue, f, long1, aan, b2, v, timingLogger);
                                break;
                            }
                        }
                        finally {
                            rawQuery.close();
                        }
                    }
                    finally {
                        E.b("Gmail", "updated tables for conversation %d", n);
                        timingLogger.addSplit("finish");
                        timingLogger.dumpToLog();
                    }
                    final u u = new ac(this.bcJ, this.bdv);
                    continue;
                }
            }
        }
    }
    
    public final Map<Long, ab> f(final long n, final long n2) {
        final HashMap<Long, ab> aan = Maps.aan();
        final Cursor query = this.bcJ.query("conversation_labels AS cl JOIN labels AS l ON cl.labels_id = l._id", new String[] { "labels_id", "isZombie", "sortMessageId", "date" }, "queryId = ? AND conversation_id = ? AND canonicalName NOT LIKE '^^unseen-%'", new String[] { Long.toString(n2), Long.toString(n) }, (String)null, (String)null, (String)null);
        while (true) {
            while (true) {
                Label_0172: {
                    try {
                        while (query.moveToNext()) {
                            final long long1 = query.getLong(0);
                            if (query.getInt(1) == 0) {
                                break Label_0172;
                            }
                            final boolean b = true;
                            aan.put(long1, new ab(query.getLong(2), query.getLong(3), b));
                        }
                        break;
                    }
                    finally {
                        query.close();
                    }
                }
                final boolean b = false;
                continue;
            }
        }
        query.close();
        return aan;
    }
}
