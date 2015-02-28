package com.android.mail.ui;

import android.os.*;
import android.net.*;
import android.content.*;
import com.android.mail.providers.*;
import android.webkit.*;
import android.database.*;

final class bc extends AsyncTask<Void, Void, Void>
{
    private final ContentResolver Hb;
    private final String aIq;
    private final Uri aIr;
    private final Context mContext;
    
    bc(final Context mContext, final String aIq, final Uri aIr) {
        this.mContext = mContext;
        this.aIq = aIq;
        this.aIr = aIr;
        this.Hb = mContext.getContentResolver();
    }
    
    private Void ko() {
        final Cursor query = this.Hb.query(this.aIr, E.aCu, (String)null, (String[])null, (String)null);
        if (query == null) {
            return null;
        }
        try {
            if (query.moveToFirst()) {
                final String string = query.getString(query.getColumnIndex("cookie"));
                if (string != null) {
                    final CookieSyncManager instance = CookieSyncManager.createInstance(this.mContext);
                    final CookieManager instance2 = CookieManager.getInstance();
                    instance2.removeAllCookie();
                    instance2.setCookie(this.aIq, string);
                    instance.sync();
                }
            }
            return null;
        }
        finally {
            query.close();
        }
    }
}
