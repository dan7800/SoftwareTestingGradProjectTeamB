package com.android.email.service;

import android.content.*;

public class EmailUpgradeBroadcastReceiver extends BroadcastReceiver
{
    public void onReceive(final Context context, final Intent intent) {
        EmailBroadcastProcessorService.M(context);
    }
}
