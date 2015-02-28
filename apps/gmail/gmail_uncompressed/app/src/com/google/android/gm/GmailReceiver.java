package com.google.android.gm;

import android.content.*;
import com.android.mail.utils.*;

public class GmailReceiver extends BroadcastReceiver
{
    public void onReceive(final Context context, final Intent intent) {
        final String action = intent.getAction();
        E.c("GmailReceiver", "RECEIVED %s", action);
        if ("com.android.mail.action.update_notification".equals(action)) {
            intent.setClass(context, (Class)GmailIntentService.class);
            context.startService(intent);
            return;
        }
        E.c("GmailReceiver", "UNHANDLED %s", action);
    }
}
