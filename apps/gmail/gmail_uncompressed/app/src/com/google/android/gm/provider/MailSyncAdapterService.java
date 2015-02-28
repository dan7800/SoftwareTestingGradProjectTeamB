package com.google.android.gm.provider;

import android.app.*;
import android.os.*;
import android.content.*;

public class MailSyncAdapterService extends Service
{
    private static final Object bmr;
    private static bp bms;
    
    static {
        bmr = new Object();
    }
    
    public IBinder onBind(final Intent intent) {
        synchronized (MailSyncAdapterService.bmr) {
            return MailSyncAdapterService.bms.getSyncAdapterBinder();
        }
    }
    
    public void onCreate() {
        super.onCreate();
        synchronized (MailSyncAdapterService.bmr) {
            if (MailSyncAdapterService.bms == null) {
                MailSyncAdapterService.bms = new bp((Context)this);
            }
        }
    }
}
