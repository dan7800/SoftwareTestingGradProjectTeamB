package com.android.email.activity;

import android.app.*;
import android.os.*;
import com.android.emailcommon.provider.*;
import com.android.emailcommon.mail.*;
import android.provider.*;
import android.content.*;
import com.android.emailcommon.b.*;
import android.net.*;
import java.text.*;
import android.database.*;

public class EventViewer extends Activity
{
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        final g t = g.t((Context)this, Long.parseLong(this.getIntent().getData().getLastPathSegment()));
        if (t == null) {
            this.finish();
            return;
        }
        final i i = new i(t.YY);
        final String value = i.get("UID");
        while (true) {
            Label_0265: {
                if (value == null) {
                    break Label_0265;
                }
                final Cursor query = this.getContentResolver().query(CalendarContract$Events.CONTENT_URI, new String[] { "_id" }, "sync_data2=?", new String[] { value }, (String)null);
                if (query == null) {
                    break Label_0265;
                }
                while (true) {
                    while (true) {
                        Label_0257: {
                            while (true) {
                                Intent intent;
                                try {
                                    if (query.getCount() != 1) {
                                        break Label_0257;
                                    }
                                    query.moveToFirst();
                                    final long long1 = query.getLong(0);
                                    query.close();
                                    intent = new Intent("android.intent.action.VIEW");
                                    if (long1 != -1L) {
                                        final Uri data = ContentUris.withAppendedId(CalendarContract$Events.CONTENT_URI, long1);
                                        intent.setData(data);
                                        intent.setFlags(524288);
                                        this.startActivity(intent);
                                        this.finish();
                                        return;
                                    }
                                }
                                finally {
                                    query.close();
                                }
                                try {
                                    final Uri data = Uri.parse("content://com.android.calendar/time/" + s.aF(i.get("DTSTART")));
                                    intent.putExtra("VIEW", "DAY");
                                    continue;
                                }
                                catch (ParseException ex) {
                                    this.finish();
                                    return;
                                }
                                break;
                            }
                        }
                        final long long1 = -1L;
                        continue;
                    }
                }
            }
            final long long1 = -1L;
            continue;
        }
    }
}
