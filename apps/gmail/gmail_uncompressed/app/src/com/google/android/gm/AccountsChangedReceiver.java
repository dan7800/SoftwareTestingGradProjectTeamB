package com.google.android.gm;

import android.content.*;

public class AccountsChangedReceiver extends BroadcastReceiver
{
    public void onReceive(final Context context, final Intent intent) {
        if ("android.accounts.LOGIN_ACCOUNTS_CHANGED".equals(intent.getAction())) {
            intent.setClass(context, (Class)GmailIntentService.class);
            context.startService(intent);
        }
    }
}
