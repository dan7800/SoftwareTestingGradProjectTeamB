package com.android.email;

import java.util.*;
import android.support.v4.app.*;
import android.app.*;
import android.provider.*;
import com.android.email.provider.*;
import android.text.*;
import com.android.mail.providers.*;
import com.android.mail.i.*;
import android.net.*;
import android.database.*;
import android.os.*;
import android.content.*;
import com.android.mail.utils.*;
import com.android.mail.g.*;
import com.android.email.service.*;
import com.android.email.activity.setup.*;
import com.android.emailcommon.provider.*;

final class f implements Handler$Callback
{
    public final boolean handleMessage(final Message message) {
        E.c(d.mW, "Delayed notification processing", new Object[0]);
        synchronized (d.LL) {
            d.LI = false;
            final Context context = (Context)message.obj;
            if (d.LJ) {
                d.LJ = false;
                o(context);
            }
            final Iterator<Long> iterator = d.LK.iterator();
            while (iterator.hasNext()) {
                a(context, iterator.next());
            }
        }
        d.LK.clear();
        // monitorexit(o)
        return true;
    }
}
