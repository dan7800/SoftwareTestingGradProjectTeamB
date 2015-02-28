package com.google.android.gm.provider;

import android.database.sqlite.*;
import android.util.*;
import android.text.*;
import com.google.android.gm.provider.uiprovider.*;
import com.android.mail.providers.*;
import com.android.mail.utils.*;
import android.content.*;
import java.util.*;
import android.database.*;

public final class bA extends u
{
    protected bA(final SQLiteDatabase sqLiteDatabase, final ae ae) {
        super(sqLiteDatabase, ae);
    }
    
    @Override
    protected final boolean a(final long n, final MailSync$SyncRationale mailSync$SyncRationale, final String s, final Map<Long, ab> map, final long n2, final Map<Long, ab> map2, final boolean b, final v v, final TimingLogger timingLogger) {
        String string = null;
        Set<Long> set = null;
        String s2 = null;
        String s3 = null;
        int n3;
        MailSync$SyncRationale bmn = null;
        long n4 = 0L;
        Cursor rawQuery = null;
        s s4 = null;
        long ek;
        long el = 0L;
        long ei = 0L;
        long er = 0L;
        long en;
        long em;
        int n5 = 0;
        boolean b2 = false;
        String s5 = null;
        int n6 = 0;
        long n7 = 0L;
        String s6 = null;
        long long1;
        String string2;
        long long2;
        String string3;
        String[] split;
        int n8 = 0;
        int length;
        int n9 = 0;
        long longValue;
        boolean b3 = false;
        boolean b4 = false;
        int n10 = 0;
        int length2;
        int n11 = 0;
        Set<Long> set2 = null;
        boolean b5 = false;
        long longValue2 = 0L;
        int n12 = 0;
        boolean b6 = false;
        boolean b7 = false;
        boolean b8 = false;
        ab ab;
        Boolean b9;
        MailSync$SyncRationale bml;
        long max = 0L;
        MailSync$SyncRationale mailSync$SyncRationale2 = null;
        MailSync$SyncRationale bmm;
        Set<Long> set3 = null;
        String string4;
        String string5;
        ArrayList<GmailAttachment> list;
        String[] array;
        int i;
        int d;
        String partId;
        Cursor query;
        int n13;
        int max2;
        long max3;
        boolean b10;
        boolean b11;
        int n14;
        int n15;
        String string6;
        Set<Long> set4;
        int n16 = 0;
        Label_0214_Outer:Label_0286_Outer:Label_0329_Outer:
        while (true) {
            string = Long.toString(n);
            set = null;
            s2 = null;
            s3 = null;
            n3 = 0;
            bmn = MailSync$SyncRationale.bmn;
            n4 = 0L;
            rawQuery = this.bcJ.rawQuery("SELECT \n  messageId,\n  fromAddress,\n  group_concat(labels_id, ' '),\n  subject,\n  snippet,\n  personalLevel,\n  joinedAttachmentInfos,\n  dateReceivedMs,\n  error,\n  permalink\nFROM\n  messages\nLEFT OUTER JOIN message_labels   ON messageId = message_messageId\nWHERE\n  synced = 1 AND conversation = ?\nGROUP BY messageId\nORDER BY messageId", new String[] { string });
            timingLogger.addSplit("fetch messages");
            s4 = new s();
            while (true) {
            Label_1503:
                while (true) {
                Label_1469:
                    while (true) {
                        Label_1459: {
                            Label_1456: {
                                Label_1449: {
                                    while (true) {
                                        Label_1419: {
                                            Label_1412: {
                                                while (true) {
                                                    Label_1405: {
                                                        while (true) {
                                                            Label_1398: {
                                                                while (true) {
                                                                Label_1391:
                                                                    while (true) {
                                                                        try {
                                                                            ek = this.bdw.Ek();
                                                                            el = this.bdw.El();
                                                                            ei = this.bdw.Ei();
                                                                            er = this.bdw.Er();
                                                                            en = this.bdw.En();
                                                                            em = this.bdw.Em();
                                                                            n5 = 0;
                                                                            b2 = false;
                                                                            s5 = null;
                                                                            n6 = Integer.MIN_VALUE;
                                                                            n7 = Long.MIN_VALUE;
                                                                            s6 = null;
                                                                            if (!rawQuery.moveToNext()) {
                                                                                break;
                                                                            }
                                                                            long1 = rawQuery.getLong(0);
                                                                            string2 = rawQuery.getString(1);
                                                                            long2 = rawQuery.getLong(7);
                                                                            string3 = rawQuery.getString(2);
                                                                            if (string3 != null) {
                                                                                split = TextUtils.split(string3, Gmail.bdH);
                                                                            }
                                                                            else {
                                                                                split = new String[0];
                                                                            }
                                                                            n8 = 0;
                                                                            length = split.length;
                                                                            n9 = 0;
                                                                            if (n9 < length) {
                                                                                longValue = Long.valueOf(split[n9]);
                                                                                if (en != longValue && em != longValue) {
                                                                                    break Label_1449;
                                                                                }
                                                                                break Label_1456;
                                                                            }
                                                                            else {
                                                                                b3 = false;
                                                                                b4 = false;
                                                                                n10 = 0;
                                                                                length2 = split.length;
                                                                                n11 = 0;
                                                                                set2 = set;
                                                                                b5 = false;
                                                                                if (n11 < length2) {
                                                                                    longValue2 = Long.valueOf(split[n11]);
                                                                                    if (ek != longValue2) {
                                                                                        break Label_1503;
                                                                                    }
                                                                                    n12 = n10;
                                                                                    b6 = b4;
                                                                                    b7 = b3;
                                                                                    b8 = true;
                                                                                    if (!map2.containsKey(longValue2)) {
                                                                                        ab = new ab();
                                                                                        map2.put(longValue2, ab);
                                                                                    }
                                                                                    else {
                                                                                        ab = map2.get(longValue2);
                                                                                    }
                                                                                    ab.bhx = Math.max(ab.bhx, long1);
                                                                                    ab.bhy = Math.max(ab.bhy, long2);
                                                                                    if (n8 == 0) {
                                                                                        ab.bhz = false;
                                                                                    }
                                                                                    b9 = this.bdv.bhD.get(longValue2);
                                                                                    if (n8 != 0 || b9 == null || mailSync$SyncRationale == MailSync$SyncRationale.bmn) {
                                                                                        break Label_1419;
                                                                                    }
                                                                                    if (b9) {
                                                                                        bml = MailSync$SyncRationale.bml;
                                                                                        max = n4;
                                                                                        mailSync$SyncRationale2 = bml;
                                                                                    }
                                                                                    else {
                                                                                        if (bmn == MailSync$SyncRationale.bml) {
                                                                                            break Label_1419;
                                                                                        }
                                                                                        bmm = MailSync$SyncRationale.bmm;
                                                                                        max = Math.max(n4, long1);
                                                                                        mailSync$SyncRationale2 = bmm;
                                                                                    }
                                                                                    if (long1 <= n2) {
                                                                                        break Label_1412;
                                                                                    }
                                                                                    if (set2 == null) {
                                                                                        set3 = new HashSet<Long>();
                                                                                        set3.add(longValue2);
                                                                                        break Label_1469;
                                                                                    }
                                                                                    break Label_1405;
                                                                                }
                                                                                else {
                                                                                    if (s2 != null) {
                                                                                        break Label_1398;
                                                                                    }
                                                                                    string4 = rawQuery.getString(3);
                                                                                    string5 = rawQuery.getString(4);
                                                                                    if (s3 != null || (!b3 && !rawQuery.isLast())) {
                                                                                        break Label_1391;
                                                                                    }
                                                                                    list = new ArrayList<GmailAttachment>(2);
                                                                                    array = new String[list.size()];
                                                                                    i = 0;
                                                                                    d = n3;
                                                                                    while (i < array.length) {
                                                                                        partId = list.get(i).partId;
                                                                                        array[i] = partId;
                                                                                        query = this.bcJ.query("attachments", new String[] { "status", "desiredRendition" }, "messages_messageId = ? AND messages_partId = ?", new String[] { String.valueOf(long1), partId }, (String)null, (String)null, (String)null);
                                                                                        try {
                                                                                            while (query.moveToNext()) {
                                                                                                d = Attachment.d(d, i, F.cg(query.getString(1)), GmailAttachment.ea(query.getInt(0)) == 3);
                                                                                            }
                                                                                            query.close();
                                                                                            ++i;
                                                                                        }
                                                                                        finally {
                                                                                            query.close();
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                        finally {
                                                                            rawQuery.close();
                                                                        }
                                                                        n13 = d;
                                                                        s3 = string5;
                                                                        max2 = Math.max(n6, rawQuery.getInt(5));
                                                                        max3 = Math.max(n7, long1);
                                                                        if (!TextUtils.isEmpty((CharSequence)rawQuery.getString(6))) {
                                                                            b10 = true;
                                                                        }
                                                                        else {
                                                                            b10 = false;
                                                                        }
                                                                        b11 = (b2 | b10);
                                                                        if (rawQuery.getInt(8) != 0) {
                                                                            n14 = 1;
                                                                        }
                                                                        else {
                                                                            n14 = 0;
                                                                        }
                                                                        n15 = (n5 | n14);
                                                                        string6 = rawQuery.getString(9);
                                                                        s4.a(string2, b5, b3, b4, n10 != 0 && n14 == 0, n10 != 0 && n14 != 0);
                                                                        n3 = n13;
                                                                        n5 = n15;
                                                                        b2 = b11;
                                                                        s6 = string5;
                                                                        s2 = string4;
                                                                        n7 = max3;
                                                                        n6 = max2;
                                                                        set4 = set2;
                                                                        s5 = string6;
                                                                        set = set4;
                                                                        continue Label_0214_Outer;
                                                                    }
                                                                    n13 = n3;
                                                                    continue;
                                                                }
                                                            }
                                                            string4 = s2;
                                                            continue;
                                                        }
                                                    }
                                                    set3 = set2;
                                                    continue;
                                                }
                                            }
                                            set3 = set2;
                                            break Label_1469;
                                        }
                                        max = n4;
                                        mailSync$SyncRationale2 = bmn;
                                        continue;
                                    }
                                }
                                n16 = n8;
                                break Label_1459;
                            }
                            n16 = 1;
                        }
                        ++n9;
                        n8 = n16;
                        continue Label_0286_Outer;
                    }
                    ++n11;
                    n10 = n12;
                    n4 = max;
                    bmn = mailSync$SyncRationale2;
                    set2 = set3;
                    b4 = b6;
                    b3 = b7;
                    b5 = b8;
                    continue Label_0329_Outer;
                }
                if (el == longValue2) {
                    n12 = n10;
                    b6 = b4;
                    b7 = true;
                    b8 = b5;
                    continue;
                }
                if (ei == longValue2) {
                    n12 = n10;
                    b6 = true;
                    b7 = b3;
                    b8 = b5;
                    continue;
                }
                if (er == longValue2) {
                    n12 = 1;
                    b6 = b4;
                    b7 = b3;
                    b8 = b5;
                    continue;
                }
                n12 = n10;
                b6 = b4;
                b7 = b3;
                b8 = b5;
                continue;
            }
        }
        if (n4 != 0L && (mailSync$SyncRationale == MailSync$SyncRationale.bmm || mailSync$SyncRationale == MailSync$SyncRationale.bml) && mailSync$SyncRationale != bmn) {
            E.e("Gmail", "Server sent rational %s but we calculated %s with messageId %d", mailSync$SyncRationale, bmn, n4);
        }
        final int count = rawQuery.getCount();
        s4.dI(count);
        rawQuery.close();
        timingLogger.addSplit("process messages");
        this.a(n, mailSync$SyncRationale, map, map2, n7, set, v);
        timingLogger.addSplit("process labels");
        if (count == 0) {
            this.bcJ.delete("conversations", "_id = ? AND queryId = 0", new String[] { string });
            return true;
        }
        final ContentValues contentValues = new ContentValues();
        contentValues.put("_id", n);
        contentValues.put("queryId", 0);
        contentValues.put("subject", s2);
        if (s3 != null) {
            s6 = s3;
        }
        contentValues.put("snippet", s6);
        contentValues.put("personalLevel", n6);
        contentValues.put("numMessages", count);
        contentValues.put("maxMessageId", n7);
        contentValues.put("labelIds", Gmail.j(map2.keySet()));
        int n17;
        if (b2) {
            n17 = 1;
        }
        else {
            n17 = 0;
        }
        contentValues.put("hasAttachments", n17);
        int n18;
        if (n5 != 0) {
            n18 = 1;
        }
        else {
            n18 = 0;
        }
        contentValues.put("hasMessagesWithErrors", n18);
        contentValues.put("syncRationale", bmn.toString());
        contentValues.put("syncRationaleMessageId", n4);
        contentValues.put("fromCompact", s4.toByteArray());
        contentValues.put("permalink", s5);
        this.bcJ.replace("conversations", (String)null, contentValues);
        return false;
    }
}
