package com.google.android.gm;

import android.content.*;
import com.android.mail.utils.*;

public class MailIntentReceiver extends BroadcastReceiver
{
    public void onReceive(final Context context, final Intent intent) {
        E.b(ay.mW, "Received intent %s", intent);
        intent.setClass(context, (Class)GmailIntentService.class);
        context.startService(intent);
    }
}
