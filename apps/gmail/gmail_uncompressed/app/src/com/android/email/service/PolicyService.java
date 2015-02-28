package com.android.email.service;

import android.app.*;
import com.android.emailcommon.service.*;
import com.android.email.*;
import com.android.mail.utils.*;
import android.content.*;
import android.os.*;

public class PolicyService extends Service
{
    private static final String mW;
    private final y VA;
    private SecurityPolicy Vz;
    private Context mContext;
    
    static {
        mW = D.AU();
    }
    
    public PolicyService() {
        this.VA = new z(this);
    }
    
    public IBinder onBind(final Intent intent) {
        this.mContext = (Context)this;
        this.Vz = SecurityPolicy.w((Context)this);
        return (IBinder)this.VA;
    }
}
