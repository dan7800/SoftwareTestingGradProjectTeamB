package com.android.email.provider;

import java.util.regex.*;
import android.appwidget.*;
import android.text.*;
import android.accounts.*;
import com.android.email.service.*;
import android.content.pm.*;
import com.android.emailcommon.service.*;
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

final class o implements F
{
    final /* synthetic */ EmailProvider Tm;
    final /* synthetic */ Mailbox Tn;
    
    o(final EmailProvider tm, final Mailbox tn) {
        this.Tm = tm;
        this.Tn = tn;
    }
    
    @Override
    public final void c(final long n, final int n2) {
        final int p2 = E.P(1, n2);
        final ContentValues contentValues = new ContentValues();
        contentValues.put("uiSyncStatus", 0);
        contentValues.put("uiLastSyncResult", p2);
        this.Tm.Sv.update("Mailbox", contentValues, "_id=?", new String[] { String.valueOf(n) });
        this.Tm.b(this.Tn.Ln, this.Tn.Lq);
    }
}
