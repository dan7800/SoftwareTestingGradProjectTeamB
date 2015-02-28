package com.android.email.service;

import android.app.*;
import android.os.*;
import android.content.*;

public class EasTestAuthenticatorService extends Service
{
    public IBinder onBind(final Intent intent) {
        if ("android.accounts.AccountAuthenticator".equals(intent.getAction())) {
            return new k(this, (Context)this).getIBinder();
        }
        return null;
    }
}
