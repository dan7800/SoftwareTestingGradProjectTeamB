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
import android.util.*;
import android.database.sqlite.*;
import com.android.emailcommon.provider.*;
import android.content.res.*;
import android.content.*;
import android.os.*;

final class q implements Handler$Callback
{
    final /* synthetic */ EmailProvider Tm;
    
    q(final EmailProvider tm) {
        this.Tm = tm;
    }
    
    public final boolean handleMessage(final Message message) {
        synchronized (this.Tm.Sy) {
            final v v = (v)message.obj;
            final Account a = v.Tw;
            final Bundle g = Mailbox.G(v.PJ);
            ContentResolver.requestSync(a, v.Tv, g);
            E.d(EmailProvider.TAG, "requestSync getDelayedSyncHandler %s, %s", a.toString(), g.toString());
            this.Tm.Sy.remove(v);
            return true;
        }
    }
}
