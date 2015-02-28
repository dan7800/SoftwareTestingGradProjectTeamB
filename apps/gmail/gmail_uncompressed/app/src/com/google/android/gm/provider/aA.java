package com.google.android.gm.provider;

import android.database.sqlite.*;
import android.content.*;
import com.google.common.collect.*;
import java.util.*;
import android.database.*;

public final class aa
{
    private int aaL;
    private SQLiteDatabase bcJ;
    private boolean bht;
    private List<String> bhu;
    private SQLiteQueryBuilder bhv;
    private boolean bhw;
    private String[] eN;
    
    public aa(final Context context, final SQLiteDatabase bcJ, final String[] en) {
        this.bhv = new SQLiteQueryBuilder();
        this.bcJ = bcJ;
        this.eN = en;
        this.bhv.setTables("labels");
        this.bhv.setProjectionMap((Map)MailEngine.bjk);
        this.bhu = Lists.n(bw.a(context, en, "name", new String[0]));
        this.v("( canonicalName != '' OR name != '' )");
    }
    
    private void v(final CharSequence charSequence) {
        if (this.bht) {
            this.bhv.appendWhere((CharSequence)" AND ");
        }
        else {
            this.bht = true;
        }
        this.bhv.appendWhere(charSequence);
    }
    
    public final aa F(final List<String> list) {
        if (list != null && !list.isEmpty()) {
            final StringBuilder sb = new StringBuilder();
            final Iterator<String> iterator = list.iterator();
            int n = 1;
            while (iterator.hasNext()) {
                final String s = iterator.next();
                if (n != 0) {
                    sb.append("canonicalName IN (");
                    n = 0;
                }
                else {
                    sb.append(", ");
                }
                sb.append("?");
                this.bhu.add(s);
            }
            sb.append(")");
            this.v(sb.toString());
        }
        return this;
    }
    
    public final Cursor Fl() {
        final String[] array = this.bhu.toArray(new String[this.bhu.size()]);
        final SQLiteQueryBuilder bhv = this.bhv;
        final SQLiteDatabase bcJ = this.bcJ;
        final String[] en = this.eN;
        String s;
        if (this.bhw) {
            s = "lastTouched DESC";
        }
        else {
            s = "systemLabel DESC, sortOrder ASC";
        }
        String string;
        if (this.aaL != 0) {
            string = Integer.toString(this.aaL);
        }
        else {
            string = null;
        }
        return bhv.query(bcJ, en, (String)null, array, (String)null, (String)null, s, string);
    }
    
    public final aa al(final long n) {
        if (n != 0L) {
            this.v("_id = ?");
            this.bhu.add(Long.toString(n));
        }
        return this;
    }
    
    public final aa am(final long n) {
        this.bhv.setTables("labels, conversation_labels");
        this.v("labels._id = conversation_labels.labels_id AND\n        conversation_labels.isZombie = 0 AND\n        conversation_labels.queryId = 0 AND\n        conversation_labels.conversation_id = ?");
        this.bhu.add(Long.toString(n));
        return this;
    }
    
    public final aa bU(final boolean b) {
        if (!b) {
            this.v("hidden = 0");
        }
        return this;
    }
    
    public final aa g(final long n, final int aaL) {
        if (n != 0L) {
            final StringBuilder sb = new StringBuilder("lastTouched");
            sb.append(" != 0 AND ");
            sb.append("lastTouched");
            sb.append(" < ?");
            this.bhu.add(Long.toString(n));
            this.aaL = aaL;
            this.v(sb.toString());
            this.bhw = true;
        }
        return this;
    }
}
