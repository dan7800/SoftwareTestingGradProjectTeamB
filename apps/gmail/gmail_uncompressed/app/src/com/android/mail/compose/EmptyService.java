package com.android.mail.compose;

import android.app.*;
import android.content.*;
import android.os.*;
import com.android.mail.utils.*;

public class EmptyService extends Service
{
    private static final String TAG;
    
    static {
        TAG = D.AU();
    }
    
    public IBinder onBind(final Intent intent) {
        E.d(EmptyService.TAG, "onBind()", new Object[0]);
        return null;
    }
    
    public void onCreate() {
        E.b(EmptyService.TAG, "onCreate()", new Object[0]);
    }
}
