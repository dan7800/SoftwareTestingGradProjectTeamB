package com.google.android.gms.auth;

import android.content.*;
import android.os.*;
import com.google.android.gms.common.*;
import android.util.*;

final class e extends Handler
{
    private final Context bxq;
    
    e(final Context bxq) {
        Looper looper;
        if (Looper.myLooper() == null) {
            looper = Looper.getMainLooper();
        }
        else {
            looper = Looper.myLooper();
        }
        super(looper);
        this.bxq = bxq;
    }
    
    public final void handleMessage(final Message message) {
        if (message.what == 1) {
            final int cf = f.cf(this.bxq);
            if (f.et(cf)) {
                f.a(cf, this.bxq);
            }
            return;
        }
        Log.wtf("GoogleAuthUtil", "Don't know how to handle this message: " + message.what);
    }
}
