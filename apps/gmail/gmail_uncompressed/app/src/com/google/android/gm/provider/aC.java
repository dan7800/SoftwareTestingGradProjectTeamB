package com.google.android.gm.provider;

import android.database.sqlite.*;
import android.database.*;
import android.util.*;
import android.text.*;
import java.util.*;

public final class ac extends u
{
    protected ac(final SQLiteDatabase sqLiteDatabase, final ae ae) {
        super(sqLiteDatabase, ae);
    }
    
    private List<bs> T(final String s, final String s2) {
        final ArrayList<bs> list = new ArrayList<bs>();
        final Cursor rawQuery = this.bcJ.rawQuery("SELECT   labelIds, \n  maxMessageId FROM   conversations WHERE   _id = ? AND queryId = ?", new String[] { s2, s });
        try {
            if (rawQuery.moveToNext()) {
                list.add(new bs(rawQuery.getString(0), rawQuery.getLong(1)));
            }
            return list;
        }
        finally {
            rawQuery.close();
        }
    }
    
    private List<bs> eC(final String s) {
        final Cursor rawQuery = this.bcJ.rawQuery("SELECT \n  messageId,\n  group_concat(labels_id, ','),\n  dateReceivedMs \nFROM\n  messages LEFT OUTER JOIN   message_labels ON messageId = message_messageId\nWHERE\n  synced = 0 AND conversation = ?\nGROUP BY messageId\nORDER BY messageId", new String[] { s });
        ArrayList<bs> list;
        try {
            if (rawQuery.getCount() == 0) {
                return null;
            }
            list = new ArrayList<bs>();
            while (rawQuery.moveToNext()) {
                list.add(new bs(rawQuery.getString(1), rawQuery.getLong(0), rawQuery.getLong(2)));
            }
        }
        finally {
            rawQuery.close();
        }
        rawQuery.close();
        return list;
    }
    
    @Override
    protected final boolean a(final long n, final MailSync$SyncRationale mailSync$SyncRationale, final String s, final Map<Long, ab> map, final long n2, final Map<Long, ab> map2, final boolean b, final v v, final TimingLogger timingLogger) {
        final String string = Long.toString(n);
        final Iterator<ab> iterator = map.values().iterator();
        long max = Long.MIN_VALUE;
        while (iterator.hasNext()) {
            max = Math.max(max, iterator.next().bhy);
        }
        List<bs> list = null;
        if (b) {
            list = this.eC(string);
        }
        if (list == null) {
            list = this.T(s, string);
        }
        final long en = this.bdw.En();
        final long em = this.bdw.Em();
        long sm = Long.MIN_VALUE;
        for (final bs bs : list) {
            sm = bs.sM();
            final String[] hh = bs.HH();
            final ArrayList<Long> list2 = new ArrayList<Long>();
            int n3 = 0;
            int n4 = 0;
            final int length = hh.length;
            int i = 0;
        Label_0240_Outer:
            while (i < length) {
                final String s2 = hh[i];
                while (true) {
                    Label_0512: {
                        if (TextUtils.isEmpty((CharSequence)s2)) {
                            break Label_0512;
                        }
                        final long longValue = Long.valueOf(s2);
                        list2.add(longValue);
                        int n5;
                        int n6;
                        if (en == longValue) {
                            n5 = 1;
                            n6 = n3;
                        }
                        else {
                            if (em != longValue) {
                                break Label_0512;
                            }
                            n6 = 1;
                            n5 = n4;
                        }
                        ++i;
                        n3 = n6;
                        n4 = n5;
                        continue Label_0240_Outer;
                    }
                    int n5 = n4;
                    int n6 = n3;
                    continue;
                }
            }
            for (final Long n7 : list2) {
                ab ab2;
                if (!map2.containsKey(n7)) {
                    final ab ab = new ab();
                    map2.put(n7, ab);
                    ab2 = ab;
                }
                else {
                    ab2 = map2.get(n7);
                }
                ab2.bhx = Math.max(ab2.bhx, sm);
                final ab ab3 = map.get(n7);
                if (ab3 != null) {
                    ab2.bhx = Math.max(ab2.bhx, ab3.bhx);
                }
                final Long hi = bs.HI();
                long longValue2;
                if (hi != null) {
                    longValue2 = hi;
                }
                else {
                    longValue2 = max;
                }
                ab2.bhy = longValue2;
                if ((n4 == 0 && n3 == 0) || (n7 == en && n3 == 0) || n7 == em) {
                    ab2.bhz = false;
                }
            }
        }
        this.a(n, mailSync$SyncRationale, map, map2, sm, null, v);
        timingLogger.addSplit("process labels");
        return false;
    }
}
