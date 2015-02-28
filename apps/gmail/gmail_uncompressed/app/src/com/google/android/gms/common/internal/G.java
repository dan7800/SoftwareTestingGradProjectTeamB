package com.google.android.gms.common.internal;

import android.app.*;
import android.util.*;
import java.util.*;
import com.google.android.gms.common.internal.f$com.google.android.gms.common.internal.*;
import android.content.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.common.*;
import android.os.*;

final class g extends Handler
{
    final /* synthetic */ f bEZ;
    
    public g(final f bez, final Looper looper) {
        this.bEZ = bez;
        super(looper);
    }
    
    public final void handleMessage(final Message message) {
        if (message.what == 1 && !this.bEZ.isConnecting()) {
            final h h = (h)message.obj;
            h.Lf();
            h.unregister();
            return;
        }
        if (message.what == 3) {
            this.bEZ.bCK.c(new a((int)message.obj, null));
            return;
        }
        if (message.what == 4) {
            this.bEZ.ey(1);
            this.bEZ.bES = null;
            this.bEZ.bCK.ez((int)message.obj);
            return;
        }
        if (message.what == 2 && !this.bEZ.isConnected()) {
            final h h2 = (h)message.obj;
            h2.Lf();
            h2.unregister();
            return;
        }
        if (message.what == 2 || message.what == 1) {
            ((h)message.obj).Lg();
            return;
        }
        Log.wtf("GmsClient", "Don't know how to handle this message.");
    }
}
