package com.google.android.gm;

import android.app.*;
import com.google.android.gm.provider.*;
import android.database.*;
import android.content.*;
import android.os.*;

public class ao extends Service
{
    private U aYR;
    private String mAccount;
    private DataSetObserver yF;
    
    public ao() {
        this.yF = null;
    }
    
    public IBinder onBind(final Intent intent) {
        return null;
    }
    
    public int onStartCommand(final Intent intent, final int n, final int n2) {
        super.onStartCommand(intent, n, n2);
        this.mAccount = intent.getStringExtra("account-name");
        if (this.mAccount == null) {
            return 2;
        }
        if (ay.bi((Context)this)) {
            this.stopSelf();
            return 2;
        }
        new ap(this).executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, (Object[])new Void[0]);
        return 2;
    }
}
