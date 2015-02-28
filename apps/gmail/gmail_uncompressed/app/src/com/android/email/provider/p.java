package com.android.email.provider;

import java.util.regex.*;
import com.android.emailcommon.service.*;
import android.appwidget.*;
import android.text.*;
import android.accounts.*;
import com.android.email.service.*;
import android.content.pm.*;
import com.android.emailcommon.mail.*;
import java.util.*;
import com.android.mail.utils.*;
import com.android.mail.providers.*;
import android.net.*;
import android.database.*;
import com.google.common.collect.*;
import com.android.email.activity.setup.*;
import com.android.email.*;
import com.android.emailcommon.b.*;
import java.io.*;
import com.android.emailcommon.provider.*;
import android.util.*;
import android.database.sqlite.*;
import android.content.res.*;
import android.content.*;
import android.os.*;

final class p extends AsyncTask<Void, Void, Void>
{
    final /* synthetic */ Context PG;
    final /* synthetic */ EmailProvider Tm;
    final /* synthetic */ long To;
    final /* synthetic */ long Tp;
    
    p(final EmailProvider tm, final Context pg, final long to, final long tp) {
        this.Tm = tm;
        this.PG = pg;
        this.To = to;
        this.Tp = tp;
    }
    
    private Void ko() {
        final a i = n.i(this.PG, this.To);
        Label_0111: {
            if (i == null) {
                break Label_0111;
            }
            try {
                final int a = i.a(this.To, this.Tm.Tf, this.Tp);
                final ContentValues contentValues = new ContentValues(1);
                contentValues.put("totalCount", a);
                this.Tm.update(ContentUris.withAppendedId(Mailbox.CONTENT_URI, this.Tp), contentValues, null, null);
                E.c(EmailProvider.TAG, "EmailProvider#runSearchQuery. TotalCount to UI: %d", a);
                return null;
            }
            catch (RemoteException ex) {
                E.f("searchMessages", "RemoteException", ex);
                return null;
            }
        }
    }
}
