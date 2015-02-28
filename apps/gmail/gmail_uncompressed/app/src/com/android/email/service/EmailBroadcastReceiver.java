package com.android.email.service;

import android.content.*;

public class EmailBroadcastReceiver extends BroadcastReceiver
{
    public void onReceive(final Context context, final Intent intent) {
        EmailBroadcastProcessorService.b(context, intent);
    }
}
