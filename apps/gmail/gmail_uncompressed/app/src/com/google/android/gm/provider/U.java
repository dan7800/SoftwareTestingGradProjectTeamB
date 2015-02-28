package com.google.android.gm.provider;

import android.database.sqlite.*;
import com.android.mail.utils.*;
import android.content.*;
import android.util.*;
import java.util.*;

public abstract class u
{
    static final /* synthetic */ boolean vb;
    protected final SQLiteDatabase bcJ;
    protected final ae bdv;
    protected final D bdw;
    
    static {
        vb = !u.class.desiredAssertionStatus();
    }
    
    protected u(final SQLiteDatabase bcJ, final ae bdv) {
        this.bcJ = bcJ;
        this.bdv = bdv;
        this.bdw = this.bdv.Fn();
    }
    
    private void a(final long n, final long n2, final Map<Long, ab> map, final Set<Long> set, final Set<Long> set2, final Set<Long> set3, final Set<Long> set4, final MailSync$SyncRationale mailSync$SyncRationale) {
        if (this.bdv.bhC != null) {
            for (final ah ah : this.bdv.bhC) {
                final long fm = ah.FM();
                final boolean n3 = ah.n(map.keySet());
                boolean b;
                if (mailSync$SyncRationale != MailSync$SyncRationale.bmp || ah.FN()) {
                    b = true;
                }
                else {
                    b = false;
                }
                boolean b2;
                if (n3 != map.containsKey(fm)) {
                    b2 = true;
                }
                else {
                    b2 = false;
                }
                if (n3 && b) {
                    int n4;
                    if (set != null && ah.n(set)) {
                        n4 = 1;
                    }
                    else {
                        n4 = 0;
                    }
                    if (n4 != 0) {
                        final ab ab = map.get(ah.FL());
                        if (ab != null) {
                            this.bdv.a(n2, this.bdv.as(fm), true, Operations$RecordHistory.bmN);
                            map.put(fm, ab);
                            if (b2) {
                                set2.remove(fm);
                                set3.add(fm);
                                set4.remove(fm);
                            }
                        }
                        this.bdv.bhG.a(ah);
                        E.b("Gmail", "onConversationChanged %d added tag label %d for label %d", n, fm, ah.FL());
                    }
                }
                if (!n3) {
                    this.bdv.a(n, n2, this.bdv.as(fm), false, Operations$RecordHistory.bmN);
                    map.remove(fm);
                    if (b2) {
                        set2.add(fm);
                        set3.remove(fm);
                        set4.remove(fm);
                    }
                    E.b("Gmail", "onConversationChanged %d removed tag label %d for label %d", n, fm, ah.FL());
                }
            }
        }
    }
    
    private void a(final MailSync$SyncRationale mailSync$SyncRationale, final Map<Long, ab> map, final Map<Long, ab> map2, final Set<Long> set, final Set<Long> set2, final Set<Long> set3, final v v) {
        final long el = this.bdw.El();
        if (map.containsKey(el) != map2.containsKey(el)) {
            final Iterator<Long> iterator = map.keySet().iterator();
            while (iterator.hasNext()) {
                set.add(iterator.next());
            }
            final Iterator<Long> iterator2 = map2.keySet().iterator();
            while (iterator2.hasNext()) {
                set2.add(iterator2.next());
            }
        }
        for (final long longValue : set3) {
            final boolean bhz = map.get(longValue).bhz;
            final boolean bhz2 = map2.get(longValue).bhz;
            if (!bhz && bhz2) {
                set.add(longValue);
            }
            if (bhz && !bhz2) {
                set2.add(longValue);
            }
        }
        final HashSet<Long> set4 = new HashSet<Long>();
        final boolean containsKey = map.containsKey(el);
        for (final Long n : set) {
            if (el != n && (mailSync$SyncRationale == MailSync$SyncRationale.bmp || ae.au(n)) && (!map.containsKey(n) || !map.get(n).bhz) && (v == null || v.a(true, n))) {
                if (containsKey) {
                    this.bcJ.execSQL("UPDATE labels SET\n  numConversations = max(numConversations - 1, 0),\n  numUnreadConversations =     max(numUnreadConversations - 1, 0)\nWHERE _id = ?", (Object[])new String[] { Long.toString(n) });
                    E.b("Gmail", "onConversationChanged decreased total and unread, label %d", n);
                }
                else {
                    this.bcJ.execSQL("UPDATE labels SET\n  numConversations = max(numConversations - 1, 0)\nWHERE _id = ?", (Object[])new String[] { Long.toString(n) });
                    E.b("Gmail", "onConversationChanged decreased total, label %d", n);
                }
                set4.add(n);
            }
        }
        final boolean containsKey2 = map2.containsKey(el);
        for (final Long n2 : set2) {
            if (el != n2 && (mailSync$SyncRationale == MailSync$SyncRationale.bmp || ae.au(n2)) && (!map2.containsKey(n2) || !map2.get(n2).bhz) && (v == null || v.a(false, n2))) {
                if (containsKey2) {
                    this.bcJ.execSQL("UPDATE labels SET\n  numConversations = numConversations + 1,\n  numUnreadConversations = numUnreadConversations + 1\nWHERE _id = ?", (Object[])new String[] { Long.toString(n2) });
                    E.b("Gmail", "onConversationChanged increased total and unread, label %d", n2);
                }
                else {
                    this.bcJ.execSQL("UPDATE labels SET\n  numConversations = numConversations + 1\nWHERE _id = ?", (Object[])new String[] { Long.toString(n2) });
                    E.b("Gmail", "onConversationChanged increased total, label %d", n2);
                }
                set4.add(n2);
            }
        }
        if (set4.size() > 0) {
            this.bdw.requery();
            this.bdv.bhG.m(set4);
        }
    }
    
    public final void a(final long n, final long n2, final Map<Long, ab> map) {
        final ContentValues contentValues = new ContentValues(6);
        contentValues.put("queryId", n2);
        contentValues.put("conversation_id", n);
        for (final Map.Entry<Long, ab> entry : map.entrySet()) {
            final long longValue = entry.getKey();
            final ab ab = entry.getValue();
            contentValues.put("labels_id", longValue);
            contentValues.put("isZombie", ab.bhz);
            contentValues.put("sortMessageId", ab.bhx);
            contentValues.put("date", ab.bhy);
            this.bcJ.replace("conversation_labels", (String)null, contentValues);
        }
    }
    
    final void a(final long n, final MailSync$SyncRationale mailSync$SyncRationale, final long n2, final Map<Long, ab> map, final long n3, final Map<Long, ab> map2, final boolean b, final v v, final TimingLogger timingLogger) {
        final boolean a = this.a(n, mailSync$SyncRationale, Long.toString(n2), map, n3, map2, b, v, timingLogger);
        timingLogger.addSplit("process messages");
        if (!a) {
            this.a(n, n2, map2);
            timingLogger.addSplit("write labels");
        }
    }
    
    public final void a(final long n, final MailSync$SyncRationale mailSync$SyncRationale, final Map<Long, ab> map, final Map<Long, ab> map2, final long n2, final Set<Long> set, final v v) {
        final HashSet<Object> set2 = new HashSet<Object>();
        final HashSet<Object> set3 = new HashSet<Object>();
        final HashSet<Object> set4 = new HashSet<Object>();
        final Set<Long> keySet = map.keySet();
        final Set<Long> keySet2 = map2.keySet();
        if (!u.vb && set2.size() != 0) {
            throw new AssertionError();
        }
        set2.addAll(keySet);
        set2.removeAll(keySet2);
        if (!u.vb && set3.size() != 0) {
            throw new AssertionError();
        }
        set3.addAll(keySet2);
        set3.removeAll(keySet);
        if (!u.vb && set4.size() != 0) {
            throw new AssertionError();
        }
        set4.addAll(keySet);
        set4.retainAll(keySet2);
        E.b("Gmail", "onConversationChanged %d removedLabels (%s), addedLabels (%s), keptLabels (%s)", n, set2, set3, set4);
        this.a(n, n2, map2, set, (Set<Long>)set2, (Set<Long>)set3, (Set<Long>)set4, mailSync$SyncRationale);
        E.b("Gmail", "onConversationChanged after updateLabels %d removedLabels (%s), addedLabels (%s), keptLabels (%s)", n, set2, set3, set4);
        this.a(mailSync$SyncRationale, map, map2, (Set<Long>)set2, (Set<Long>)set3, (Set<Long>)set4, v);
    }
    
    protected abstract boolean a(final long p0, final MailSync$SyncRationale p1, final String p2, final Map<Long, ab> p3, final long p4, final Map<Long, ab> p5, final boolean p6, final v p7, final TimingLogger p8);
}
