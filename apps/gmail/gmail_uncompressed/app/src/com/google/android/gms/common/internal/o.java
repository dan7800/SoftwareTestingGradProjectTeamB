package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.*;
import android.os.*;
import android.util.*;
import com.google.android.gms.common.*;
import java.util.*;

final class o extends Handler
{
    final /* synthetic */ n bFl;
    
    public o(final n bFl, final Looper looper) {
        this.bFl = bFl;
        super(looper);
    }
    
    public final void handleMessage(final Message message) {
        if (message.what == 1) {
            synchronized (this.bFl.bFh) {
                if (this.bFl.bFg.KE() && this.bFl.bFg.isConnected() && this.bFl.bFh.contains(message.obj)) {
                    this.bFl.bFg;
                    ((p)message.obj).r(null);
                }
                return;
            }
        }
        Log.wtf("GmsClientEvents", "Don't know how to handle this message.");
    }
}
