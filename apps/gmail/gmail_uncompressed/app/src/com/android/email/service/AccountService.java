package com.android.email.service;

import android.app.*;
import com.android.emailcommon.service.*;
import android.content.*;
import android.os.*;
import java.io.*;

public class AccountService extends Service
{
    private final q TO;
    private Context mContext;
    
    public AccountService() {
        this.TO = new a(this);
    }
    
    public IBinder onBind(final Intent intent) {
        if (this.mContext == null) {
            this.mContext = (Context)this;
        }
        try {
            com.android.emailcommon.a.T((Context)this);
            return (IBinder)this.TO;
        }
        catch (IOException ex) {
            return (IBinder)this.TO;
        }
    }
}
