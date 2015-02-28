package com.android.email;

import android.database.*;
import java.util.*;
import android.support.v4.app.*;
import android.app.*;
import android.provider.*;
import com.android.email.provider.*;
import android.text.*;
import com.android.mail.providers.*;
import com.android.mail.i.*;
import android.net.*;
import android.content.*;
import android.os.*;
import com.android.mail.utils.*;
import com.android.mail.g.*;
import com.android.email.service.*;
import com.android.email.activity.setup.*;
import com.android.emailcommon.provider.*;

final class h extends ContentObserver
{
    private final Context mContext;
    
    public h(final Handler handler, final Context mContext) {
        super(handler);
        this.mContext = mContext;
    }
    
    public final void onChange(final boolean b) {
        final Cursor query = this.mContext.getContentResolver().query(Account.CONTENT_URI, EmailContent.XT, (String)null, (String[])null, (String)null);
        final HashSet<Long> set = new HashSet<Long>();
        final HashSet<Long> set2 = new HashSet<Long>();
        if (query == null) {
            E.g(d.mW, "#onChange(); NULL response for account id query", new Object[0]);
            return;
        }
        try {
            while (query.moveToNext()) {
                set.add(query.getLong(0));
            }
        }
        finally {
            query.close();
        }
        query.close();
        for (final long longValue : d.LE.LG.keySet()) {
            if (!set.remove(longValue)) {
                set2.add(longValue);
            }
        }
        final Iterator<Object> iterator2 = set.iterator();
        while (iterator2.hasNext()) {
            d.LE.e(iterator2.next());
        }
        final Iterator<Object> iterator3 = set2.iterator();
        while (iterator3.hasNext()) {
            d.b(d.LE, iterator3.next());
        }
        d.q(this.mContext);
    }
}
